package §4t§
{
   import §<!-§.DisplayObject;
   import §?!5§.§2d§;
   import §^!7§.§^A§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9!;§;
   import starling.events.TouchEvent;
   import starling.events.set;
   
   public class §;h§ extends EventDispatcher implements §^!@§
   {
       
      
      protected var §<&§:§^A§;
      
      private var §,!T§:Boolean = false;
      
      public function §;h§(param1:§^A§)
      {
         super();
         this.§<&§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§<&§.update(param1,true);
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
         if(§2d§.§0A§)
         {
            §2d§.§0A§.stage.addEventListener(TouchEvent.§^! §,this.§4!8§);
         }
         this.§<&§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§2d§.§0A§)
         {
            §2d§.§0A§.stage.removeEventListener(TouchEvent.§^! §,this.§4!8§);
         }
         this.§<&§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4!8§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§9!;§> = null;
         var _loc4_:§9!;§ = null;
         var _loc5_:§9!;§ = null;
         if(!this.§,!T§ || !this.§<&§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§^I§(_loc2_,set.§#!2§);
            _loc3_ = _loc3_.concat(param1.§^I§(_loc2_,set.§2!A§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ R§(_loc2_,set.§!!]§)) && _loc4_.§=!J§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ R§(_loc2_,set.§!n§)) && _loc5_.§=!J§ > 0)
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
      
      public function §`f§() : Number
      {
         return this.§<&§.camera.§`f§();
      }
      
      public function §+u§(param1:Number) : void
      {
         this.§<&§.camera.§+u§(param1);
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
      
      public function §4i§(param1:Boolean) : void
      {
         this.§,!T§ = param1;
      }
      
      public function §?m§() : Boolean
      {
         return this.§,!T§;
      }
   }
}
