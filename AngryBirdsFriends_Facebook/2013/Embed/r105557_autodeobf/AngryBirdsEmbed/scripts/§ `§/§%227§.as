package § `§
{
   import §;'§.§?!D§;
   import §;^§.DisplayObject;
   import §??§.§5!@§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"!3§;
   import starling.events.§-B§;
   import starling.events.TouchEvent;
   
   public class §"7§ extends EventDispatcher implements §,!G§
   {
       
      
      protected var §2I§:§?!D§;
      
      private var §"§:Boolean = false;
      
      public function §"7§(param1:§?!D§)
      {
         super();
         this.§2I§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§2I§.update(param1,true);
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
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.stage.addEventListener(TouchEvent.§0!K§,this.§`!1§);
         }
         this.§2I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.stage.removeEventListener(TouchEvent.§0!K§,this.§`!1§);
         }
         this.§2I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §`!1§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§-B§> = null;
         var _loc4_:§-B§ = null;
         var _loc5_:§-B§ = null;
         if(!this.§"§ || !this.§2I§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[5§(_loc2_,§"!3§.§,O§);
            _loc3_ = _loc3_.concat(param1.§[5§(_loc2_,§"!3§.§9,§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§'n§(_loc2_,§"!3§.§&!L§)) && _loc4_.§<u§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§'n§(_loc2_,§"!3§.§"f§)) && _loc5_.§<u§ > 0)
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
      
      public function §;!+§() : Number
      {
         return this.§2I§.camera.§;!+§();
      }
      
      public function §`4§(param1:Number) : void
      {
         this.§2I§.camera.§`4§(param1);
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
      
      public function §3X§(param1:Boolean) : void
      {
         this.§"§ = param1;
      }
      
      public function §^!5§() : Boolean
      {
         return this.§"§;
      }
   }
}
