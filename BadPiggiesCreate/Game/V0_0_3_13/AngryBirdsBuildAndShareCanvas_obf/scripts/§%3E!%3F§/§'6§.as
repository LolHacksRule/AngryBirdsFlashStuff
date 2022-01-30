package §>!?§
{
   import §-!+§.§6"6§;
   import §8!E§.§?!X§;
   import §`L§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;[§;
   import starling.events.§<!,§;
   import starling.events.TouchEvent;
   
   public class §'6§ extends EventDispatcher implements §&!i§
   {
       
      
      protected var §7!;§:§?!X§;
      
      private var §`m§:Boolean = false;
      
      public function §'6§(param1:§?!X§)
      {
         super();
         this.§7!;§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§7!;§.update(param1,true);
      }
      
      public function init() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function addEventListeners() : void
      {
         this.removeEventListeners();
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.stage.addEventListener(TouchEvent.§1"+§,this.§["§);
         }
         this.§7!;§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.stage.removeEventListener(TouchEvent.§1"+§,this.§["§);
         }
         this.§7!;§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §["§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§<!,§> = null;
         var _loc4_:§<!,§ = null;
         var _loc5_:§<!,§ = null;
         if(!this.§`m§ || !this.§7!;§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§#!S§(_loc2_,§;[§.§!y§);
            _loc3_ = _loc3_.concat(param1.§#!S§(_loc2_,§;[§.§?K§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§,!p§(_loc2_,§;[§.§7f§)) && _loc4_.§;!w§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§,!p§(_loc2_,§;[§.§!!q§)) && _loc5_.§;!w§ > 0)
            {
               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
            }
         }
      }
      
      protected function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function getZoomRatio() : Number
      {
         return this.§7!;§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§7!;§.camera.setZoomRatio(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §=o§(param1:Boolean) : void
      {
         this.§`m§ = param1;
      }
      
      public function §!!a§() : Boolean
      {
         return this.§`m§;
      }
   }
}
