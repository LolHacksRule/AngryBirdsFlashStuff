package §,y§
{
   import §4!s§.§%I§;
   import §5!5§.§^e§;
   import §^I§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§-!y§;
   import starling.events.§-B§;
   import starling.events.TouchEvent;
   
   public class §]s§ extends EventDispatcher implements §>v§
   {
       
      
      protected var §,!T§:§%I§;
      
      private var §;!g§:Boolean = false;
      
      public function §]s§(param1:§%I§)
      {
         super();
         this.§,!T§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§,!T§.update(param1,true);
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
         if(§^e§.§-_§)
         {
            §^e§.§-_§.stage.addEventListener(TouchEvent.§%!r§,this.§%S§);
         }
         this.§,!T§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§^e§.§-_§)
         {
            §^e§.§-_§.stage.removeEventListener(TouchEvent.§%!r§,this.§%S§);
         }
         this.§,!T§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%S§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§-!y§> = null;
         var _loc4_:§-!y§ = null;
         var _loc5_:§-!y§ = null;
         if(!this.§;!g§ || !this.§,!T§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§>!D§(_loc2_,§-B§.§@Z§);
            _loc3_ = _loc3_.concat(param1.§>!D§(_loc2_,§-B§.§3!R§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§5!J§(_loc2_,§-B§.§>!A§)) && _loc4_.§>L§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§5!J§(_loc2_,§-B§.§#!T§)) && _loc5_.§>L§ > 0)
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
         return this.§,!T§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§,!T§.camera.setZoomRatio(param1);
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
      
      public function §5!n§(param1:Boolean) : void
      {
         this.§;!g§ = param1;
      }
      
      public function §<!6§() : Boolean
      {
         return this.§;!g§;
      }
   }
}
