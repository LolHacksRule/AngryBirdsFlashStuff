package § g§
{
   import §,§.§ p§;
   import §6;§.§%[§;
   import §^a§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#v§;
   import starling.events.§?!E§;
   import starling.events.TouchEvent;
   
   public class §"!X§ extends EventDispatcher implements §;!N§
   {
       
      
      protected var §^!I§:§ p§;
      
      private var §0!d§:Boolean = false;
      
      public function §"!X§(param1:§ p§)
      {
         super();
         this.§^!I§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§^!I§.update(param1,true);
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
         if(§%[§.§`1§)
         {
            §%[§.§`1§.stage.addEventListener(TouchEvent.§5a§,this.§#!f§);
         }
         this.§^!I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§%[§.§`1§)
         {
            §%[§.§`1§.stage.removeEventListener(TouchEvent.§5a§,this.§#!f§);
         }
         this.§^!I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §#!f§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§#v§> = null;
         var _loc4_:§#v§ = null;
         var _loc5_:§#v§ = null;
         if(!this.§0!d§ || !this.§^!I§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§=P§(_loc2_,§?!E§.§-!"§);
            _loc3_ = _loc3_.concat(param1.§=P§(_loc2_,§?!E§.§4R§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`C§(_loc2_,§?!E§.§'s§)) && _loc4_.§=!i§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`C§(_loc2_,§?!E§.§^2§)) && _loc5_.§=!i§ > 0)
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
      
      public function §]%§() : Number
      {
         return this.§^!I§.camera.§]%§();
      }
      
      public function §,!H§(param1:Number) : void
      {
         this.§^!I§.camera.§,!H§(param1);
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
      
      public function §+F§(param1:Boolean) : void
      {
         this.§0!d§ = param1;
      }
      
      public function §@z§() : Boolean
      {
         return this.§0!d§;
      }
   }
}
