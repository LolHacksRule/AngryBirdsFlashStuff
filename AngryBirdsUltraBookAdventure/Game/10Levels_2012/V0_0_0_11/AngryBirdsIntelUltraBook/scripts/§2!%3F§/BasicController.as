package §2!?§
{
   import §0P§.Starling;
   import §2!H§.LevelMain;
   import §6!7§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!!j§;
   import starling.events.TouchEvent;
   import starling.events.§]!i§;
   
   public class BasicController extends EventDispatcher implements §7!W§
   {
       
      
      protected var §"!>§:LevelMain;
      
      private var §!^§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         super();
         this.§"!>§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§"!>§.update(param1,true);
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
         if(Starling.§!!F§)
         {
            Starling.§!!F§.stage.addEventListener(TouchEvent.§7!;§,this.§%&§);
         }
         this.§"!>§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§!!F§)
         {
            Starling.§!!F§.stage.removeEventListener(TouchEvent.§7!;§,this.§%&§);
         }
         this.§"!>§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§]!i§> = null;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         if(!this.§!^§ || !this.§"!>§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§2!f§(_loc2_,§!!j§.§4!^§);
            _loc3_ = _loc3_.concat(param1.§2!f§(_loc2_,§!!j§.§^!R§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            _loc4_ = param1.§6!6§(_loc2_,§!!j§.§?c§);
            if(_loc4_ && _loc4_.§else § > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            _loc5_ = param1.§6!6§(_loc2_,§!!j§.§ 0§);
            if(_loc5_ && _loc5_.§else § > 0)
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
      
      public function §-n§() : Number
      {
         return this.§"!>§.camera.§-n§();
      }
      
      public function §implements§(param1:Number) : void
      {
         this.§"!>§.camera.§implements§(param1);
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
      
      public function §0!H§(param1:Boolean) : void
      {
         this.§!^§ = param1;
      }
      
      public function §9!G§() : Boolean
      {
         return this.§!^§;
      }
   }
}
