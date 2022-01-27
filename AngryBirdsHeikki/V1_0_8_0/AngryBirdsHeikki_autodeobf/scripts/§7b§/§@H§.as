package §7b§
{
   import §!v§.§7[§;
   import §2z§.§2!U§;
   import §=!E§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§?!$§;
   import starling.events.TouchEvent;
   import starling.events.§]I§;
   
   public class §@H§ extends EventDispatcher implements §8!]§
   {
       
      
      protected var §7o§:§2!U§;
      
      private var §?J§:Boolean = false;
      
      public function §@H§(param1:§2!U§)
      {
         super();
         this.§7o§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§7o§.update(param1,true);
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
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.stage.addEventListener(TouchEvent.§4§,this.§8!5§);
         }
         this.§7o§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.stage.removeEventListener(TouchEvent.§4§,this.§8!5§);
         }
         this.§7o§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §8!5§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?!$§> = null;
         var _loc4_:§?!$§ = null;
         var _loc5_:§?!$§ = null;
         if(!this.§?J§ || !this.§7o§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§4,§(_loc2_,§]I§.§ J§);
            _loc3_ = _loc3_.concat(param1.§4,§(_loc2_,§]I§.§`O§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§1k§(_loc2_,§]I§.§`7§)) && _loc4_.§9y§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§1k§(_loc2_,§]I§.§?u§)) && _loc5_.§9y§ > 0)
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
      
      public function §<!F§() : Number
      {
         return this.§7o§.camera.§<!F§();
      }
      
      public function § A§(param1:Number) : void
      {
         this.§7o§.camera.§ A§(param1);
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
      
      public function §+!W§(param1:Boolean) : void
      {
         this.§?J§ = param1;
      }
      
      public function §#!4§() : Boolean
      {
         return this.§?J§;
      }
   }
}
