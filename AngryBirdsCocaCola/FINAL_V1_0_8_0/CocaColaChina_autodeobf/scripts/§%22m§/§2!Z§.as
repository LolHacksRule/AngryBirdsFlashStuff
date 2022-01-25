package §"m§
{
   import §&!9§.DisplayObject;
   import §&F§.§>!2§;
   import §+&§.§?y§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§5o§;
   import starling.events.TouchEvent;
   import starling.events.§]!+§;
   
   public class §2!Z§ extends EventDispatcher implements §^B§
   {
       
      
      protected var mLevelMain:§>!2§;
      
      private var §5z§:Boolean = false;
      
      public function §2!Z§(param1:§>!2§)
      {
         super();
         this.mLevelMain = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.mLevelMain.update(param1,true);
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
         if(§?y§.§,u§)
         {
            §?y§.§,u§.stage.addEventListener(TouchEvent.§,!"§,this.§<!V§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§?y§.§,u§)
         {
            §?y§.§,u§.stage.removeEventListener(TouchEvent.§,!"§,this.§<!V§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §<!V§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§]!+§> = null;
         var _loc4_:§]!+§ = null;
         var _loc5_:§]!+§ = null;
         if(!this.§5z§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§9!Y§(_loc2_,§5o§.§!P§);
            _loc3_ = _loc3_.concat(param1.§9!Y§(_loc2_,§5o§.§>p§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§!!%§(_loc2_,§5o§.§0!+§)) && _loc4_.§-i§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§!!%§(_loc2_,§5o§.§"[§)) && _loc5_.§-i§ > 0)
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
      
      public function §,!7§() : Number
      {
         return this.mLevelMain.camera.§,!7§();
      }
      
      public function §8!;§(param1:Number) : void
      {
         this.mLevelMain.camera.§8!;§(param1);
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
      
      public function §43§(param1:Boolean) : void
      {
         this.§5z§ = param1;
      }
      
      public function §`R§() : Boolean
      {
         return this.§5z§;
      }
   }
}
