package §3!b§
{
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §2Y§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9i§;
   import starling.events.§?X§;
   import starling.events.TouchEvent;
   
   public class §^!N§ extends EventDispatcher implements §;!7§
   {
       
      
      protected var §=!V§:§^!2§;
      
      private var §8!S§:Boolean = false;
      
      public function §^!N§(param1:§^!2§)
      {
         super();
         this.§=!V§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§=!V§.update(param1,true);
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
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.stage.addEventListener(TouchEvent.§]!-§,this.§%!+§);
         }
         this.§=!V§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.stage.removeEventListener(TouchEvent.§]!-§,this.§%!+§);
         }
         this.§=!V§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%!+§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?X§> = null;
         var _loc4_:§?X§ = null;
         var _loc5_:§?X§ = null;
         if(!this.§8!S§ || !this.§=!V§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§?0§(_loc2_,§9i§.§]W§);
            _loc3_ = _loc3_.concat(param1.§?0§(_loc2_,§9i§.§'+§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>!P§(_loc2_,§9i§.§9a§)) && _loc4_.§#X§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>!P§(_loc2_,§9i§.§%J§)) && _loc5_.§#X§ > 0)
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
      
      public function §[5§() : Number
      {
         return this.§=!V§.camera.§[5§();
      }
      
      public function §&2§(param1:Number) : void
      {
         this.§=!V§.camera.§&2§(param1);
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
      
      public function §&&§(param1:Boolean) : void
      {
         this.§8!S§ = param1;
      }
      
      public function §!0§() : Boolean
      {
         return this.§8!S§;
      }
   }
}
