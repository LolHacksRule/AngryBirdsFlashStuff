package §=!1§
{
   import §'!3§.§&!H§;
   import §,T§.§[-§;
   import §-!'§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+l§;
   import starling.events.§9V§;
   import starling.events.TouchEvent;
   
   public class §#!J§ extends EventDispatcher implements §[!<§
   {
       
      
      protected var §34§:§[-§;
      
      private var §7!1§:Boolean = false;
      
      public function §#!J§(param1:§[-§)
      {
         super();
         this.§34§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§34§.update(param1,true);
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
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.stage.addEventListener(TouchEvent.§=w§,this.§6<§);
         }
         this.§34§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.stage.removeEventListener(TouchEvent.§=w§,this.§6<§);
         }
         this.§34§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §6<§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§+l§> = null;
         var _loc4_:§+l§ = null;
         var _loc5_:§+l§ = null;
         if(!this.§7!1§ || !this.§34§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§];§(_loc2_,§9V§.§]`§);
            _loc3_ = _loc3_.concat(param1.§];§(_loc2_,§9V§.§<V§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§';§(_loc2_,§9V§.§^^§)) && _loc4_.§[N§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§';§(_loc2_,§9V§.§ for§)) && _loc5_.§[N§ > 0)
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
      
      public function §!H§() : Number
      {
         return this.§34§.camera.§!H§();
      }
      
      public function §?!?§(param1:Number) : void
      {
         this.§34§.camera.§?!?§(param1);
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
      
      public function §]d§(param1:Boolean) : void
      {
         this.§7!1§ = param1;
      }
      
      public function §=F§() : Boolean
      {
         return this.§7!1§;
      }
   }
}
