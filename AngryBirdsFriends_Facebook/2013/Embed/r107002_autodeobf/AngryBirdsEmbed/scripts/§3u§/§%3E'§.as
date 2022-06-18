package §3u§
{
   import §#!@§.DisplayObject;
   import §7!§.§,L§;
   import §9s§.§^9§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§4F§;
   import starling.events.§;!8§;
   import starling.events.TouchEvent;
   
   public class §>'§ extends EventDispatcher implements §<r§
   {
       
      
      protected var §4!I§:§^9§;
      
      private var §'p§:Boolean = false;
      
      public function §>'§(param1:§^9§)
      {
         super();
         this.§4!I§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§4!I§.update(param1,true);
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
         if(§,L§.§3v§)
         {
            §,L§.§3v§.stage.addEventListener(TouchEvent.§`!!§,this.§+N§);
         }
         this.§4!I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§,L§.§3v§)
         {
            §,L§.§3v§.stage.removeEventListener(TouchEvent.§`!!§,this.§+N§);
         }
         this.§4!I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §+N§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4F§> = null;
         var _loc4_:§4F§ = null;
         var _loc5_:§4F§ = null;
         if(!this.§'p§ || !this.§4!I§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§!B§(_loc2_,§;!8§.§@[§);
            _loc3_ = _loc3_.concat(param1.§!B§(_loc2_,§;!8§.§'!7§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ !N§(_loc2_,§;!8§.§^!1§)) && _loc4_.§8! § > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ !N§(_loc2_,§;!8§.§]-§)) && _loc5_.§8! § > 0)
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
      
      public function §"h§() : Number
      {
         return this.§4!I§.camera.§"h§();
      }
      
      public function §;!#§(param1:Number) : void
      {
         this.§4!I§.camera.§;!#§(param1);
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
      
      public function §1q§(param1:Boolean) : void
      {
         this.§'p§ = param1;
      }
      
      public function §>[§() : Boolean
      {
         return this.§'p§;
      }
   }
}
