package §]§
{
   import §%!0§.§,4§;
   import §%!j§.§%K§;
   import §+!-§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§-!#§;
   import starling.events.§;g§;
   import starling.events.TouchEvent;
   
   public class §`!7§ extends EventDispatcher implements §7!K§
   {
       
      
      protected var §`!G§:§,4§;
      
      private var §=n§:Boolean = false;
      
      public function §`!7§(param1:§,4§)
      {
         super();
         this.§`!G§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§`!G§.update(param1,true);
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
         if(§%K§.§`9§)
         {
            §%K§.§`9§.stage.addEventListener(TouchEvent.§5!z§,this.§1!f§);
         }
         this.§`!G§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§%K§.§`9§)
         {
            §%K§.§`9§.stage.removeEventListener(TouchEvent.§5!z§,this.§1!f§);
         }
         this.§`!G§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §1!f§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§;g§> = null;
         var _loc4_:§;g§ = null;
         var _loc5_:§;g§ = null;
         if(!this.§=n§ || !this.§`!G§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§8[§(_loc2_,§-!#§.§8!U§);
            _loc3_ = _loc3_.concat(param1.§8[§(_loc2_,§-!#§.§#-§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§!m§(_loc2_,§-!#§.§&i§)) && _loc4_.§=w§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§!m§(_loc2_,§-!#§.§-""§)) && _loc5_.§=w§ > 0)
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
         return this.§`!G§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§`!G§.camera.setZoomRatio(param1);
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
      
      public function §;!;§(param1:Boolean) : void
      {
         this.§=n§ = param1;
      }
      
      public function §8!g§() : Boolean
      {
         return this.§=n§;
      }
   }
}
