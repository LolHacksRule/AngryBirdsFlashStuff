package §-p§
{
   import §"a§.§!"J§;
   import §'!6§.DisplayObject;
   import §4!<§.§'!S§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§'! §;
   import starling.events.§;!G§;
   import starling.events.TouchEvent;
   
   public class §+"N§ extends EventDispatcher implements §7"4§
   {
       
      
      protected var mLevelMain:§'!S§;
      
      private var §3!&§:Boolean = false;
      
      public function §+"N§(param1:§'!S§)
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
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.stage.addEventListener(TouchEvent.§<!M§,this.§4@§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.stage.removeEventListener(TouchEvent.§<!M§,this.§4@§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4@§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§;!G§> = null;
         var _loc4_:§;!G§ = null;
         var _loc5_:§;!G§ = null;
         if(!this.§3!&§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§&F§(_loc2_,§'! §.§8!Y§);
            _loc3_ = _loc3_.concat(param1.§&F§(_loc2_,§'! §.§5"G§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§=+§(_loc2_,§'! §.§2!3§)) && _loc4_.§]!<§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§=+§(_loc2_,§'! §.§?""§)) && _loc5_.§]!<§ > 0)
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
      
      public function §>!U§() : Number
      {
         return this.mLevelMain.camera.§>!U§();
      }
      
      public function §?"P§(param1:Number) : void
      {
         this.mLevelMain.camera.§?"P§(param1);
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
      
      public function §>!C§(param1:Boolean) : void
      {
         this.§3!&§ = param1;
      }
      
      public function §9U§() : Boolean
      {
         return this.§3!&§;
      }
   }
}
