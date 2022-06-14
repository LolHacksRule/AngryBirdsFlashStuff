package §3![§
{
   import §'6§.§"]§;
   import §1!$§.DisplayObject;
   import §9"!§.§9"3§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"U§;
   import starling.events.§6!V§;
   import starling.events.TouchEvent;
   
   public class §#y§ extends EventDispatcher implements §5!@§
   {
       
      
      protected var §@O§:§9"3§;
      
      private var §<!O§:Boolean = false;
      
      public function §#y§(param1:§9"3§)
      {
         super();
         this.§@O§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§@O§.update(param1,true);
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
         if(§"]§.§!X§)
         {
            §"]§.§!X§.stage.addEventListener(TouchEvent.§2t§,this.§]!p§);
         }
         this.§@O§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§"]§.§!X§)
         {
            §"]§.§!X§.stage.removeEventListener(TouchEvent.§2t§,this.§]!p§);
         }
         this.§@O§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §]!p§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§6!V§> = null;
         var _loc4_:§6!V§ = null;
         var _loc5_:§6!V§ = null;
         if(!this.§<!O§ || !this.§@O§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§4_§(_loc2_,§"U§.§#1§);
            _loc3_ = _loc3_.concat(param1.§4_§(_loc2_,§"U§.§<$§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§&f§(_loc2_,§"U§.§&!I§)) && _loc4_.§!P§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§&f§(_loc2_,§"U§.§&a§)) && _loc5_.§!P§ > 0)
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
      
      public function §"!o§() : Number
      {
         return this.§@O§.camera.§"!o§();
      }
      
      public function §03§(param1:Number) : void
      {
         this.§@O§.camera.§03§(param1);
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
      
      public function §#!F§(param1:Boolean) : void
      {
         this.§<!O§ = param1;
      }
      
      public function §2"@§() : Boolean
      {
         return this.§<!O§;
      }
   }
}
