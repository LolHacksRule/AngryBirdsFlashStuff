package §]C§
{
   import § !+§.§0Z§;
   import §9N§.§9!%§;
   import §`a§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!q§;
   import starling.events.§"!D§;
   import starling.events.TouchEvent;
   
   public class §5_§ extends EventDispatcher implements §9!S§
   {
       
      
      protected var §8@§:§9!%§;
      
      private var §!V§:Boolean = false;
      
      public function §5_§(param1:§9!%§)
      {
         super();
         this.§8@§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§8@§.update(param1,true);
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
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.stage.addEventListener(TouchEvent.§4F§,this.§66§);
         }
         this.§8@§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.stage.removeEventListener(TouchEvent.§4F§,this.§66§);
         }
         this.§8@§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §66§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§"!D§> = null;
         var _loc4_:§"!D§ = null;
         var _loc5_:§"!D§ = null;
         if(!this.§!V§ || !this.§8@§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§<q§(_loc2_,§!q§.§%X§);
            _loc3_ = _loc3_.concat(param1.§<q§(_loc2_,§!q§.§ !G§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>6§(_loc2_,§!q§.§#Z§)) && _loc4_.§+!%§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>6§(_loc2_,§!q§.§4c§)) && _loc5_.§+!%§ > 0)
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
      
      public function §#!3§() : Number
      {
         return this.§8@§.camera.§#!3§();
      }
      
      public function §;1§(param1:Number) : void
      {
         this.§8@§.camera.§;1§(param1);
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
      
      public function §4!Q§(param1:Boolean) : void
      {
         this.§!V§ = param1;
      }
      
      public function §71§() : Boolean
      {
         return this.§!V§;
      }
   }
}
