package §1Q§
{
   import §-![§.DisplayObject;
   import §8!e§.§3"&§;
   import §9G§.§2F§;
   import §=!6§.§+8§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§'!+§;
   import starling.events.§;C§;
   import starling.events.TouchEvent;
   
   public class §]_§ extends EventDispatcher implements §?!Y§
   {
       
      
      protected var §5M§:§2F§;
      
      protected var §!3§:§3"&§;
      
      private var §["1§:Boolean = false;
      
      public function §]_§(param1:§2F§, param2:§3"&§)
      {
         super();
         this.§5M§ = param1;
         this.§!3§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§5M§.update(param1,true);
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
         if(§+8§.§0j§)
         {
            §+8§.§0j§.stage.addEventListener(TouchEvent.§!",§,this.§!!-§);
         }
         this.§5M§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§+8§.§0j§)
         {
            §+8§.§0j§.stage.removeEventListener(TouchEvent.§!",§,this.§!!-§);
         }
         this.§5M§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §!!-§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§;C§> = null;
         var _loc4_:§;C§ = null;
         var _loc5_:§;C§ = null;
         if(!this.§["1§ || !this.§5M§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§3%§(_loc2_,§'!+§.§'p§);
            _loc3_ = _loc3_.concat(param1.§3%§(_loc2_,§'!+§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§;!@§(_loc2_,§'!+§.§^N§)) && _loc4_.§`!h§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§;!@§(_loc2_,§'!+§.§-@§)) && _loc5_.§`!h§ > 0)
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
      
      public function §4!6§() : Number
      {
         return this.§5M§.camera.§4!6§();
      }
      
      public function §,v§(param1:Number) : void
      {
         this.§5M§.camera.§,v§(param1);
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
      
      public function §'@§(param1:Boolean) : void
      {
         this.§["1§ = param1;
      }
      
      public function §5e§() : Boolean
      {
         return this.§["1§;
      }
   }
}
