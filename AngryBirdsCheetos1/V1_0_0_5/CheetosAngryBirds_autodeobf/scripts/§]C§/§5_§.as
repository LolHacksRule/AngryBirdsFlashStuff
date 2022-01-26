package §]C§
{
   import §!!R§.DisplayObject;
   import §7W§.§ !+§;
   import §?'§.§9N§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+G§;
   import starling.events.§4F§;
   import starling.events.TouchEvent;
   
   public class §5_§ extends EventDispatcher implements §9!S§
   {
       
      
      protected var §;c§:§9N§;
      
      private var §!V§:Boolean = false;
      
      public function §5_§(param1:§9N§)
      {
         super();
         this.§;c§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§;c§.update(param1,true);
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
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.stage.addEventListener(TouchEvent.§[m§,this.§7z§);
         }
         this.§;c§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.stage.removeEventListener(TouchEvent.§[m§,this.§7z§);
         }
         this.§;c§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §7z§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4F§> = null;
         var _loc4_:§4F§ = null;
         var _loc5_:§4F§ = null;
         if(!this.§!V§ || !this.§;c§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§'X§(_loc2_,§+G§.§4c§);
            _loc3_ = _loc3_.concat(param1.§'X§(_loc2_,§+G§.§!q§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§<q§(_loc2_,§+G§.§<N§)) && _loc4_.§6!Q§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§<q§(_loc2_,§+G§.§ !G§)) && _loc5_.§6!Q§ > 0)
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
      
      public function §3!J§() : Number
      {
         return this.§;c§.camera.§3!J§();
      }
      
      public function §#!3§(param1:Number) : void
      {
         this.§;c§.camera.§#!3§(param1);
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
      
      public function §2!O§(param1:Boolean) : void
      {
         this.§!V§ = param1;
      }
      
      public function §71§() : Boolean
      {
         return this.§!V§;
      }
   }
}
