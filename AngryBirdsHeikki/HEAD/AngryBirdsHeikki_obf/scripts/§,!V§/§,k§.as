package §,!V§
{
   import §&L§.§?]§;
   import §6!;§.DisplayObject;
   import §9!'§.§0!%§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;!#§;
   import starling.events.§;!c§;
   import starling.events.TouchEvent;
   
   public class §,k§ extends EventDispatcher implements §`H§
   {
       
      
      protected var §]B§:§0!%§;
      
      private var §3!=§:Boolean = false;
      
      public function §,k§(param1:§0!%§)
      {
         super();
         this.§]B§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]B§.update(param1,true);
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
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.stage.addEventListener(TouchEvent.§9q§,this.§[!Y§);
         }
         this.§]B§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.stage.removeEventListener(TouchEvent.§9q§,this.§[!Y§);
         }
         this.§]B§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §[!Y§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§;!c§> = null;
         var _loc4_:§;!c§ = null;
         var _loc5_:§;!c§ = null;
         if(!this.§3!=§ || !this.§]B§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§`g§(_loc2_,§;!#§.§^?§);
            _loc3_ = _loc3_.concat(param1.§`g§(_loc2_,§;!#§.§5Y§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#!H§(_loc2_,§;!#§.§2c§)) && _loc4_.§9P§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#!H§(_loc2_,§;!#§.§[Q§)) && _loc5_.§9P§ > 0)
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
      
      public function §@!8§() : Number
      {
         return this.§]B§.camera.§@!8§();
      }
      
      public function § !b§(param1:Number) : void
      {
         this.§]B§.camera.§ !b§(param1);
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
      
      public function §3"§(param1:Boolean) : void
      {
         this.§3!=§ = param1;
      }
      
      public function §<!<§() : Boolean
      {
         return this.§3!=§;
      }
   }
}
