package §-I§
{
   import §+"6§.§5!H§;
   import §3,§.§[!;§;
   import §]&§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§1!Q§;
   import starling.events.§5#§;
   import starling.events.TouchEvent;
   
   public class §5!%§ extends EventDispatcher implements §-%§
   {
       
      
      protected var §0!J§:§[!;§;
      
      private var §,Q§:Boolean = false;
      
      public function §5!%§(param1:§[!;§)
      {
         super();
         this.§0!J§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§0!J§.update(param1,true);
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
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.stage.addEventListener(TouchEvent.§2"'§,this.§,_§);
         }
         this.§0!J§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.stage.removeEventListener(TouchEvent.§2"'§,this.§,_§);
         }
         this.§0!J§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §,_§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§5#§> = null;
         var _loc4_:§5#§ = null;
         var _loc5_:§5#§ = null;
         if(!this.§,Q§ || !this.§0!J§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§"!e§(_loc2_,§1!Q§.§'y§);
            _loc3_ = _loc3_.concat(param1.§"!e§(_loc2_,§1!Q§.§>!2§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#r§(_loc2_,§1!Q§.§^5§)) && _loc4_.§%O§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#r§(_loc2_,§1!Q§.§5J§)) && _loc5_.§%O§ > 0)
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
      
      public function §8H§() : Number
      {
         return this.§0!J§.camera.§8H§();
      }
      
      public function §=!y§(param1:Number) : void
      {
         this.§0!J§.camera.§=!y§(param1);
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
      
      public function §6"!§(param1:Boolean) : void
      {
         this.§,Q§ = param1;
      }
      
      public function §2"+§() : Boolean
      {
         return this.§,Q§;
      }
   }
}
