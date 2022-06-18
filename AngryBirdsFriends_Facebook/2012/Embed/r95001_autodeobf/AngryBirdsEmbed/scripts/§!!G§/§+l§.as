package §!!G§
{
   import §9!2§.§7N§;
   import §9!?§.§^]§;
   import §<k§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§84§;
   import starling.events.§8P§;
   import starling.events.TouchEvent;
   
   public class §+l§ extends EventDispatcher implements §8!G§
   {
       
      
      protected var §]!9§:§^]§;
      
      private var §5A§:Boolean = false;
      
      public function §+l§(param1:§^]§)
      {
         super();
         this.§]!9§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]!9§.update(param1,true);
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
         if(§7N§.§17§)
         {
            §7N§.§17§.stage.addEventListener(TouchEvent.§"+§,this.§%r§);
         }
         this.§]!9§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§7N§.§17§)
         {
            §7N§.§17§.stage.removeEventListener(TouchEvent.§"+§,this.§%r§);
         }
         this.§]!9§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%r§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§84§> = null;
         var _loc4_:§84§ = null;
         var _loc5_:§84§ = null;
         if(!this.§5A§ || !this.§]!9§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§^Z§(_loc2_,§8P§.§5x§);
            _loc3_ = _loc3_.concat(param1.§^Z§(_loc2_,§8P§.§5!"§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§0!>§(_loc2_,§8P§.§ G§)) && _loc4_.§0a§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§0!>§(_loc2_,§8P§.§>[§)) && _loc5_.§0a§ > 0)
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
      
      public function §9F§() : Number
      {
         return this.§]!9§.camera.§9F§();
      }
      
      public function §00§(param1:Number) : void
      {
         this.§]!9§.camera.§00§(param1);
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
      
      public function §@K§(param1:Boolean) : void
      {
         this.§5A§ = param1;
      }
      
      public function §&I§() : Boolean
      {
         return this.§5A§;
      }
   }
}
