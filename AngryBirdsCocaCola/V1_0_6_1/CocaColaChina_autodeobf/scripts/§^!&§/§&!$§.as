package §^!&§
{
   import §2!G§.§2!V§;
   import §9]§.§9J§;
   import §<!$§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§&!L§;
   import starling.events.§?r§;
   import starling.events.TouchEvent;
   
   public class §&!$§ extends EventDispatcher implements §,!S§
   {
       
      
      protected var mLevelMain:§2!V§;
      
      private var §]<§:Boolean = false;
      
      public function §&!$§(param1:§2!V§)
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
         if(§9J§.§?X§)
         {
            §9J§.§?X§.stage.addEventListener(TouchEvent.§[R§,this.§1!Q§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§9J§.§?X§)
         {
            §9J§.§?X§.stage.removeEventListener(TouchEvent.§[R§,this.§1!Q§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §1!Q§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?r§> = null;
         var _loc4_:§?r§ = null;
         var _loc5_:§?r§ = null;
         if(!this.§]<§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§&W§(_loc2_,§&!L§.§2S§);
            _loc3_ = _loc3_.concat(param1.§&W§(_loc2_,§&!L§.§;!@§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`o§(_loc2_,§&!L§.§"Z§)) && _loc4_.§2d§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`o§(_loc2_,§&!L§.§";§)) && _loc5_.§2d§ > 0)
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
      
      public function §3!,§() : Number
      {
         return this.mLevelMain.camera.§3!,§();
      }
      
      public function §+l§(param1:Number) : void
      {
         this.mLevelMain.camera.§+l§(param1);
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
      
      public function §1!!§(param1:Boolean) : void
      {
         this.§]<§ = param1;
      }
      
      public function §!s§() : Boolean
      {
         return this.§]<§;
      }
   }
}
