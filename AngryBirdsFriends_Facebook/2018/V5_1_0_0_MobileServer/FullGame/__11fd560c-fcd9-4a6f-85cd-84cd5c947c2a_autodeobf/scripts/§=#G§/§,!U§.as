package §=#G§
{
   import §5#m§.§,o§;
   import §5#m§.§6a§;
   import §5#m§.TouchEvent;
   import §;$3§.§8=§;
   import §?"e§.Starling;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §,!U§ extends EventDispatcher implements §;3§
   {
       
      
      protected var §=#N§:§%!q§;
      
      protected var mLevelManager:§8=§;
      
      private var §?"7§:Boolean = false;
      
      public function §,!U§(param1:§%!q§, param2:§8=§)
      {
         super();
         this.§=#N§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§=#N§.update(param1,true);
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
         if(Starling.§@#K§)
         {
            Starling.§@#K§.stage.addEventListener(TouchEvent.§2"H§,this.§>"W§);
         }
         this.§=#N§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§@#K§)
         {
            Starling.§@#K§.stage.removeEventListener(TouchEvent.§2"H§,this.§>"W§);
         }
         this.§=#N§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §>"W§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§,o§> = null;
         var _loc4_:§,o§ = null;
         var _loc5_:§,o§ = null;
         if(!this.§?"7§ || !this.§=#N§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§%x§(_loc2_,§6a§.§7#k§);
            _loc3_ = _loc3_.concat(param1.§%x§(_loc2_,§6a§.§-#B§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§=$A§(_loc2_,§6a§.§5#L§)) && _loc4_.§&!;§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§=$A§(_loc2_,§6a§.§+#Q§)) && _loc5_.§&!;§ > 0)
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
      
      public function §1#=§() : Number
      {
         return this.§=#N§.camera.§1#=§();
      }
      
      public function §7#D§(param1:Number) : void
      {
         this.§=#N§.camera.§7#D§(param1);
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
      
      public function §6%§(param1:Boolean) : void
      {
         this.§?"7§ = param1;
      }
      
      public function §#"!§() : Boolean
      {
         return this.§?"7§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
