package §91§
{
   import §#!,§.DisplayObject;
   import §7!>§.Starling;
   import §]!@§.LevelMain;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§?'§;
   import starling.events.TouchEvent;
   import starling.events.§]!B§;
   
   public class BasicController extends EventDispatcher implements §else§
   {
       
      
      protected var §`s§:LevelMain;
      
      private var §-!&§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         super();
         this.§`s§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§`s§.update(param1,true);
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
         if(Starling.§7!+§)
         {
            Starling.§7!+§.stage.addEventListener(TouchEvent.§1!P§,this.§2c§);
         }
         this.§`s§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§7!+§)
         {
            Starling.§7!+§.stage.removeEventListener(TouchEvent.§1!P§,this.§2c§);
         }
         this.§`s§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §2c§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§]!B§> = null;
         var _loc4_:§]!B§ = null;
         var _loc5_:§]!B§ = null;
         if(!this.§-!&§ || !this.§`s§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§8b§(_loc2_,§?'§.§2r§);
            _loc3_ = _loc3_.concat(param1.§8b§(_loc2_,§?'§.§[!_§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            _loc4_ = param1.§%!C§(_loc2_,§?'§.§&>§);
            if(_loc4_ && _loc4_.§8!C§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            _loc5_ = param1.§%!C§(_loc2_,§?'§.§%!7§);
            if(_loc5_ && _loc5_.§8!C§ > 0)
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
      
      public function §#W§() : Number
      {
         return this.§`s§.camera.§#W§();
      }
      
      public function § <§(param1:Number) : void
      {
         this.§`s§.camera.§ <§(param1);
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
      
      public function §@!?§(param1:Boolean) : void
      {
         this.§-!&§ = param1;
      }
      
      public function §=S§() : Boolean
      {
         return this.§-!&§;
      }
   }
}
