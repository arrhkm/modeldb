<?php

/* @var $this UserController */
/* @var $model User */
/* @var $form CActiveForm */

?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'date1'); ?>
		<?php //echo $form->textField($model,'date1',array('size'=>10,'maxlength'=>10)); ?>
		<?php 
			$this->widget('zii.widgets.jui.CJuiDatePicker', array(
				'name'=>'date1',
				'model'=>$model,
				'attribute'=>'date1', 
				'value'=> date('Y-m-d'), 
				//'htmlOptions'=>array('style'=>'height:20px;', 'syle'=>'width:5px;'),
				'options'=>array('dateFormat'=>'yy-mm-dd', 'showButtonPanel'=>true, 'showAnim' =>'slide'),
			));

		?>
		<?php echo $form->error($model,'date1'); ?>
	</div>

	<div class="row">
	 <?php echo $form->labelEx($model,'date2'); ?>
	 <?php //echo $form->passwordField($model,'date2',array('size'=>10,'maxlength'=>10)); ?>
	 <?php 
			$this->widget('zii.widgets.jui.CJuiDatePicker', array(
				'name'=>'date2',
				'model'=>$model,'attribute'=>'date2', 'value'=> date('Y-m-d'), 
				//'htmlOptions'=>array('style'=>'height:20px;', 'syle'=>'width:5px;'),
				'options'=>array('dateFormat'=>'yy-mm-dd', 'showButtonPanel'=>true, 'showAnim' =>'slide'),
			));

	   ?>
	 <?php echo $form->error($model,'date2'); ?>
	 </div>
	
	<div class="row buttons">
		<?php echo CHtml::submitButton('Show'); ?>
	</div>

<?php 
echo "date : ".$model->date1;
$sql= "
				SELECT a.emp_id, a.date_job, a.dt_in, a.dt_out, time_to_sec(time(a.dt_in)) as jam, time_to_sec('08:05') as batas, 
				if (time_to_sec(time(a.dt_in)) > time_to_sec('08:05'),  sec_to_time(time_to_sec(time(a.dt_in)) - time_to_sec(time('08:05'))) , false) as v_telat,
				if (time_to_sec(time(a.dt_in)) > time_to_sec('08:05'), true, false) as telat,
				if (a.dt_in ='0000-00-00', true, false) as absen
				,b.name 
				FROM hr_staff.attendance as a 
				JOIN emp as b 
				ON (b.id= a.emp_id)
				WHERE a.date_job  BETWEEN '$model->date1' AND '$model->date2'				
				ORDER BY a.emp_id, a.date_job;
			";
			$sql_count="
			SELECT  COUNT(*)
			FROM hr_staff.attendance as a 
			JOIN emp as b 
			ON (b.id= a.emp_id)
			WHERE a.date_job BETWEEN '$model->date1' AND '$model->date2'
			";
			$count= yii::app()->db->createCommand($sql_count)->queryScalar();			
			
			$dataProvider=new CSqlDataProvider($sql, array(
			    'totalItemCount'=>$count,
			    'sort'=>array(
			        'attributes'=>array(
			             'date_job', 'emp_id', 'name', 'dt_in',
			             'dt_out',
			             'v_telat', 'telat', 'absen'
			        ),
			    ),
			    'pagination'=>array(
			        'pageSize'=>10,
			    ),
			    
			));

$this->widget('zii.widgets.grid.CGridView', array(
	//'itemsCssClass'=>'table table-hover table-striped table-bordered table-condensed',
	'id'=>'detil-grid',
	'dataProvider'=>$dataProvider,
	'summaryText'=>'',	
	
	'columns'=>array(
		/*array(
			'header'=>'No.', // row is zero based
			'value'=>'$this->grid->dataProvider->pagination->currentPage*$this->grid->dataProvider->pagination->pageSize + $row+1',
			'htmlOptions'=>array('width'=>'3%'),
		),*/
		'date_job',
		'emp_id',
		'name',
		'dt_in',
		'dt_out',
		'v_telat', 
		'absen',		
		/*array(
			'class'=>'CButtonColumn',
			'buttons'=>array(
	           
	            'update' => array(
	                'label'=>'Update',
	                'url'=>'Yii::app()->createUrl("/dailyreport/updatedetil", array("id"=>$data[id], "dailyreport_id"=>$data[dailyreport_id], "update"=>1))',
                    //'imageUrl'=>Yii::app()->request->baseUrl.'/images/icons/password.png',
	            ),
	            'delete' => array(
	            	'label'=>'Delete',
	            	'url'=>'Yii::app()->createUrl("/dailyreport/deletedetil", array("id"=>$data[id], "detil_id"=>$data[dailyreport_id]))', 
	            )
            ),
            'template'=>'{update}{delete}'
		),*/
	),
)); 	


?>

<?php $this->endWidget(); ?>

</div><!-- form -->

