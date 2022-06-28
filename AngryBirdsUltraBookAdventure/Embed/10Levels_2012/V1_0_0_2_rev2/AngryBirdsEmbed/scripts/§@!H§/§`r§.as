package §@!H§
{
   import §#!;§.§;T§;
   import §9W§.DisplayObject;
   import §?b§.§7!,§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§<e§;
   import starling.events.TouchEvent;
   import starling.events.§^!@§;
   
   public class §`r§ extends EventDispatcher implements §!!1§
   {
       
      
      protected var §4!%§:§7!,§;
      
      private var §0! §:Boolean = false;
      
      public function §`r§(param1:§7!,§)
      {
         super();
         this.§4!%§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§4!%§.update(param1,true);
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
         if(§;T§.§,H§)
         {
            §;T§.§,H§.stage.addEventListener(TouchEvent.§?6§,this.§1H§);
         }
         this.§4!%§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§;T§.§,H§)
         {
            §;T§.§,H§.stage.removeEventListener(TouchEvent.§?6§,this.§1H§);
         }
         this.§4!%§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §1H§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§^!@§> = null;
         var _loc4_:§^!@§ = null;
         var _loc5_:§^!@§ = null;
         if(!this.§0! § || !this.§4!%§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§@5§(_loc2_,§<e§.§!C§);
            _loc3_ = _loc3_.concat(param1.§@5§(_loc2_,§<e§.§8;§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§';§(_loc2_,§<e§.§4[§)) && _loc4_.§+T§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§';§(_loc2_,§<e§.§"=§)) && _loc5_.§+T§ > 0)
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
      
      public function § &§() : Number
      {
         return this.§4!%§.camera.§ &§();
      }
      
      public function §"O§(param1:Number) : void
      {
         this.§4!%§.camera.§"O§(param1);
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
      
      public function § Z§(param1:Boolean) : void
      {
         this.§0! § = param1;
      }
      
      public function §2g§() : Boolean
      {
         return this.§0! §;
      }
   }
}
