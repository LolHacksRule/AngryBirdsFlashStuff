package §;f§
{
   import §0!Y§.DisplayObject;
   import §5!W§.§>P§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§2d§;
   import starling.events.§<P§;
   import starling.events.TouchEvent;
   
   public class §8"5§ extends EventDispatcher implements §&r§
   {
       
      
      protected var §`W§:§"h§;
      
      protected var §^!§:§5l§;
      
      private var §2H§:Boolean = false;
      
      public function §8"5§(param1:§"h§, param2:§5l§)
      {
         super();
         this.§`W§ = param1;
         this.§^!§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§`W§.update(param1,true);
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
         if(§>P§.§;_§)
         {
            §>P§.§;_§.stage.addEventListener(TouchEvent.§88§,this.§ "§);
         }
         this.§`W§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§>P§.§;_§)
         {
            §>P§.§;_§.stage.removeEventListener(TouchEvent.§88§,this.§ "§);
         }
         this.§`W§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function § "§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§<P§> = null;
         var _loc4_:§<P§ = null;
         var _loc5_:§<P§ = null;
         if(!this.§2H§ || !this.§`W§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§0!e§(_loc2_,§2d§.§+!!§);
            _loc3_ = _loc3_.concat(param1.§0!e§(_loc2_,§2d§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§2W§(_loc2_,§2d§.§&W§)) && _loc4_.§`V§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§2W§(_loc2_,§2d§.§ M§)) && _loc5_.§`V§ > 0)
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
      
      public function §!r§() : Number
      {
         return this.§`W§.camera.§!r§();
      }
      
      public function §<!l§(param1:Number) : void
      {
         this.§`W§.camera.§<!l§(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §?H§(param1:Boolean) : void
      {
         this.§2H§ = param1;
      }
      
      public function §<!-§() : Boolean
      {
         return this.§2H§;
      }
   }
}
