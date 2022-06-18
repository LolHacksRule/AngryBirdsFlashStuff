package §6!P§
{
   import §,H§.DisplayObject;
   import §-A§.§%9§;
   import §2!P§.§6=§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0!?§;
   import starling.events.§4]§;
   import starling.events.TouchEvent;
   
   public class §>A§ extends EventDispatcher implements §`!;§
   {
       
      
      protected var §return§:§%9§;
      
      private var §^!M§:Boolean = false;
      
      public function §>A§(param1:§%9§)
      {
         super();
         this.§return§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§return§.update(param1,true);
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
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.stage.addEventListener(TouchEvent.§7X§,this.§8=§);
         }
         this.§return§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.stage.removeEventListener(TouchEvent.§7X§,this.§8=§);
         }
         this.§return§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §8=§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4]§> = null;
         var _loc4_:§4]§ = null;
         var _loc5_:§4]§ = null;
         if(!this.§^!M§ || !this.§return§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§#!S§(_loc2_,§0!?§.§-!K§);
            _loc3_ = _loc3_.concat(param1.§#!S§(_loc2_,§0!?§.§5!_§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§6D§(_loc2_,§0!?§.§1!Y§)) && _loc4_.§%d§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§6D§(_loc2_,§0!?§.§?Y§)) && _loc5_.§%d§ > 0)
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
      
      public function §8l§() : Number
      {
         return this.§return§.camera.§8l§();
      }
      
      public function § #§(param1:Number) : void
      {
         this.§return§.camera.§ #§(param1);
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
      
      public function §1q§(param1:Boolean) : void
      {
         this.§^!M§ = param1;
      }
      
      public function §0!<§() : Boolean
      {
         return this.§^!M§;
      }
   }
}
