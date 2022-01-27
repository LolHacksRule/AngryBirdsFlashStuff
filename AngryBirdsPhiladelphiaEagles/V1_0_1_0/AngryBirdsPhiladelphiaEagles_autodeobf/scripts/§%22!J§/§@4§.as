package §"!J§
{
   import §3H§.DisplayObject;
   import §5J§.§>$§;
   import §>2§.§4h§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§&3§;
   import starling.events.§>w§;
   import starling.events.TouchEvent;
   
   public class §@4§ extends EventDispatcher implements §]!E§
   {
       
      
      protected var §@k§:§4h§;
      
      private var §;5§:Boolean = false;
      
      public function §@4§(param1:§4h§)
      {
         super();
         this.§@k§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§@k§.update(param1,true);
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
         if(§>$§.§-U§)
         {
            §>$§.§-U§.stage.addEventListener(TouchEvent.§%!'§,this.§8H§);
         }
         this.§@k§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§>$§.§-U§)
         {
            §>$§.§-U§.stage.removeEventListener(TouchEvent.§%!'§,this.§8H§);
         }
         this.§@k§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §8H§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§>w§> = null;
         var _loc4_:§>w§ = null;
         var _loc5_:§>w§ = null;
         if(!this.§;5§ || !this.§@k§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§4l§(_loc2_,§&3§.§3!J§);
            _loc3_ = _loc3_.concat(param1.§4l§(_loc2_,§&3§.§0r§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§,W§(_loc2_,§&3§.§9!>§)) && _loc4_.§?e§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§,W§(_loc2_,§&3§.§'i§)) && _loc5_.§?e§ > 0)
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
      
      public function §-M§() : Number
      {
         return this.§@k§.camera.§-M§();
      }
      
      public function §7U§(param1:Number) : void
      {
         this.§@k§.camera.§7U§(param1);
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
      
      public function §+a§(param1:Boolean) : void
      {
         this.§;5§ = param1;
      }
      
      public function §6b§() : Boolean
      {
         return this.§;5§;
      }
   }
}
