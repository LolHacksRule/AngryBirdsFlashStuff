package §[#§
{
   import §'a§.§0!f§;
   import §4!$§.§<!2§;
   import §5x§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§?I§;
   import starling.events.TouchEvent;
   import starling.events.§implements§;
   
   public class §?!P§ extends EventDispatcher implements §[!A§
   {
       
      
      protected var mLevelMain:§0!f§;
      
      private var §=p§:Boolean = false;
      
      public function §?!P§(param1:§0!f§)
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
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.stage.addEventListener(TouchEvent.§8i§,this.§4=§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.stage.removeEventListener(TouchEvent.§8i§,this.§4=§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4=§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§implements§> = null;
         var _loc4_:§implements§ = null;
         var _loc5_:§implements§ = null;
         if(!this.§=p§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§@!W§(_loc2_,§?I§.§'i§);
            _loc3_ = _loc3_.concat(param1.§@!W§(_loc2_,§?I§.§#!N§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§;2§(_loc2_,§?I§.§%!G§)) && _loc4_.§"@§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§;2§(_loc2_,§?I§.§1!^§)) && _loc5_.§"@§ > 0)
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
      
      public function §!!6§() : Number
      {
         return this.mLevelMain.camera.§!!6§();
      }
      
      public function §@!§(param1:Number) : void
      {
         this.mLevelMain.camera.§@!§(param1);
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
      
      public function §?h§(param1:Boolean) : void
      {
         this.§=p§ = param1;
      }
      
      public function §+!V§() : Boolean
      {
         return this.§=p§;
      }
   }
}
