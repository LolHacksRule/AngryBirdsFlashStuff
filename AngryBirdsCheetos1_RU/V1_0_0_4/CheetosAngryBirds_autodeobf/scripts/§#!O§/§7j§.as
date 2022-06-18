package §#!O§
{
   import §1!A§.DisplayObject;
   import §7z§.§]!-§;
   import §`M§.§'C§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0+§;
   import starling.events.§;'§;
   import starling.events.TouchEvent;
   
   public class §7j§ extends EventDispatcher implements §0P§
   {
       
      
      protected var §^'§:§]!-§;
      
      private var §5u§:Boolean = false;
      
      public function §7j§(param1:§]!-§)
      {
         super();
         this.§^'§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§^'§.update(param1,true);
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
         if(§'C§.§3b§)
         {
            §'C§.§3b§.stage.addEventListener(TouchEvent.§<!4§,this.§0Z§);
         }
         this.§^'§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§'C§.§3b§)
         {
            §'C§.§3b§.stage.removeEventListener(TouchEvent.§<!4§,this.§0Z§);
         }
         this.§^'§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §0Z§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§0+§> = null;
         var _loc4_:§0+§ = null;
         var _loc5_:§0+§ = null;
         if(!this.§5u§ || !this.§^'§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§4!$§(_loc2_,§;'§.§;l§);
            _loc3_ = _loc3_.concat(param1.§4!$§(_loc2_,§;'§.§ y§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#?§(_loc2_,§;'§.§[U§)) && _loc4_.§ !<§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#?§(_loc2_,§;'§.§"!I§)) && _loc5_.§ !<§ > 0)
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
      
      public function §4g§() : Number
      {
         return this.§^'§.camera.§4g§();
      }
      
      public function §4!!§(param1:Number) : void
      {
         this.§^'§.camera.§4!!§(param1);
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
      
      public function §5T§(param1:Boolean) : void
      {
         this.§5u§ = param1;
      }
      
      public function §6!H§() : Boolean
      {
         return this.§5u§;
      }
   }
}
