package §?!D§
{
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §?^§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,R§;
   import starling.events.§?l§;
   import starling.events.TouchEvent;
   
   public class §]x§ extends EventDispatcher implements §@!$§
   {
       
      
      protected var §7C§:§#;§;
      
      private var §;N§:Boolean = false;
      
      public function §]x§(param1:§#;§)
      {
         super();
         this.§7C§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§7C§.update(param1,true);
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
         if(§'_§.§17§)
         {
            §'_§.§17§.stage.addEventListener(TouchEvent.§!r§,this.§'k§);
         }
         this.§7C§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§'_§.§17§)
         {
            §'_§.§17§.stage.removeEventListener(TouchEvent.§!r§,this.§'k§);
         }
         this.§7C§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?l§> = null;
         var _loc4_:§?l§ = null;
         var _loc5_:§?l§ = null;
         if(!this.§;N§ || !this.§7C§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§#8§(_loc2_,§,R§.§&5§);
            _loc3_ = _loc3_.concat(param1.§#8§(_loc2_,§,R§.§+!8§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§5Y§(_loc2_,§,R§.§?!>§)) && _loc4_.§5!G§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§5Y§(_loc2_,§,R§.§99§)) && _loc5_.§5!G§ > 0)
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
      
      public function §8!0§() : Number
      {
         return this.§7C§.camera.§8!0§();
      }
      
      public function §1!&§(param1:Number) : void
      {
         this.§7C§.camera.§1!&§(param1);
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
      
      public function §;!!§(param1:Boolean) : void
      {
         this.§;N§ = param1;
      }
      
      public function §'!7§() : Boolean
      {
         return this.§;N§;
      }
   }
}
