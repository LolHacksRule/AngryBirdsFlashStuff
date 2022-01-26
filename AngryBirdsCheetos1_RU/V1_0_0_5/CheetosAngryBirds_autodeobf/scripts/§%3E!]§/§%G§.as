package §>!]§
{
   import §%b§.§0!Z§;
   import §]_§.§!F§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §null §.DisplayObject;
   import starling.events.§0!^§;
   import starling.events.§<n§;
   import starling.events.TouchEvent;
   
   public class §%G§ extends EventDispatcher implements §3Y§
   {
       
      
      protected var §]!8§:§0!Z§;
      
      private var §&!I§:Boolean = false;
      
      public function §%G§(param1:§0!Z§)
      {
         super();
         this.§]!8§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]!8§.update(param1,true);
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
         if(§!F§.§[M§)
         {
            §!F§.§[M§.stage.addEventListener(TouchEvent.§%w§,this.§ !V§);
         }
         this.§]!8§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§!F§.§[M§)
         {
            §!F§.§[M§.stage.removeEventListener(TouchEvent.§%w§,this.§ !V§);
         }
         this.§]!8§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function § !V§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§0!^§> = null;
         var _loc4_:§0!^§ = null;
         var _loc5_:§0!^§ = null;
         if(!this.§&!I§ || !this.§]!8§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§9[§(_loc2_,§<n§.§#c§);
            _loc3_ = _loc3_.concat(param1.§9[§(_loc2_,§<n§.§ N§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§[$§(_loc2_,§<n§.§"Z§)) && _loc4_.§6%§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§[$§(_loc2_,§<n§.§2![§)) && _loc5_.§6%§ > 0)
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
      
      public function §8#§() : Number
      {
         return this.§]!8§.camera.§8#§();
      }
      
      public function §<!9§(param1:Number) : void
      {
         this.§]!8§.camera.§<!9§(param1);
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
      
      public function §=[§(param1:Boolean) : void
      {
         this.§&!I§ = param1;
      }
      
      public function §!e§() : Boolean
      {
         return this.§&!I§;
      }
   }
}
