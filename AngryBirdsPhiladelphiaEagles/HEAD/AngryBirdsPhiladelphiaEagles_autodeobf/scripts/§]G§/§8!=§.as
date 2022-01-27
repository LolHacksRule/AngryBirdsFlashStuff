package §]G§
{
   import §%"§.§ do§;
   import §<!N§.DisplayObject;
   import §^h§.§2l§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§5r§;
   import starling.events.§<p§;
   import starling.events.TouchEvent;
   
   public class §8!=§ extends EventDispatcher implements §%@§
   {
       
      
      protected var §-H§:§ do§;
      
      private var §1!0§:Boolean = false;
      
      public function §8!=§(param1:§ do§)
      {
         super();
         this.§-H§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§-H§.update(param1,true);
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
         if(§2l§.§7K§)
         {
            §2l§.§7K§.stage.addEventListener(TouchEvent.§+2§,this.§#!'§);
         }
         this.§-H§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§2l§.§7K§)
         {
            §2l§.§7K§.stage.removeEventListener(TouchEvent.§+2§,this.§#!'§);
         }
         this.§-H§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §#!'§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§<p§> = null;
         var _loc4_:§<p§ = null;
         var _loc5_:§<p§ = null;
         if(!this.§1!0§ || !this.§-H§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§<!?§(_loc2_,§5r§.§;5§);
            _loc3_ = _loc3_.concat(param1.§<!?§(_loc2_,§5r§.§return§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§=!§(_loc2_,§5r§.§@!?§)) && _loc4_.§]!@§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§=!§(_loc2_,§5r§.§0!O§)) && _loc5_.§]!@§ > 0)
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
      
      public function §+v§() : Number
      {
         return this.§-H§.camera.§+v§();
      }
      
      public function §<!>§(param1:Number) : void
      {
         this.§-H§.camera.§<!>§(param1);
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
      
      public function §#S§(param1:Boolean) : void
      {
         this.§1!0§ = param1;
      }
      
      public function §3[§() : Boolean
      {
         return this.§1!0§;
      }
   }
}
