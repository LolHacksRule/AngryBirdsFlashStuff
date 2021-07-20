package §@P§
{
   import §%-§.DisplayObject;
   import §%x§.§#;§;
   import §&p§.§'_§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0K§;
   import starling.events.§9`§;
   import starling.events.TouchEvent;
   
   public class §@!$§ extends EventDispatcher implements §?!D§
   {
       
      
      protected var §7C§:§#;§;
      
      private var §]x§:Boolean = false;
      
      public function §@!$§(param1:§#;§)
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
            §'_§.§17§.stage.addEventListener(TouchEvent.§+l§,this.§'k§);
         }
         this.§7C§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§'_§.§17§)
         {
            §'_§.§17§.stage.removeEventListener(TouchEvent.§+l§,this.§'k§);
         }
         this.§7C§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§0K§> = null;
         var _loc4_:§0K§ = null;
         var _loc5_:§0K§ = null;
         if(!this.§]x§ || !this.§7C§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§`!§(_loc2_,§9`§.§99§);
            _loc3_ = _loc3_.concat(param1.§`!§(_loc2_,§9`§.§,R§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#8§(_loc2_,§9`§.§"!@§)) && _loc4_.§2$§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#8§(_loc2_,§9`§.§+!8§)) && _loc5_.§2$§ > 0)
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
      
      public function §#!,§() : Number
      {
         return this.§7C§.camera.§#!,§();
      }
      
      public function §8!0§(param1:Number) : void
      {
         this.§7C§.camera.§8!0§(param1);
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
      
      public function §-A§(param1:Boolean) : void
      {
         this.§]x§ = param1;
      }
      
      public function §;N§() : Boolean
      {
         return this.§]x§;
      }
   }
}
