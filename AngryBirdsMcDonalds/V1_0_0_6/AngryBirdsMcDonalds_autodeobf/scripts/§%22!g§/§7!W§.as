package §"!g§
{
   import §2![§.DisplayObject;
   import §<L§.§!!G§;
   import §=!K§.§do§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ !=§;
   import starling.events.§"G§;
   import starling.events.TouchEvent;
   
   public class §7!W§ extends EventDispatcher implements §2Z§
   {
       
      
      protected var mLevelMain:§!!G§;
      
      private var §4!N§:Boolean = false;
      
      public function §7!W§(param1:§!!G§)
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
         if(§do§.§4!G§)
         {
            §do§.§4!G§.stage.addEventListener(TouchEvent.§#+§,this.§7a§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§do§.§4!G§)
         {
            §do§.§4!G§.stage.removeEventListener(TouchEvent.§#+§,this.§7a§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §7a§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§"G§> = null;
         var _loc4_:§"G§ = null;
         var _loc5_:§"G§ = null;
         if(!this.§4!N§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§@0§(_loc2_,§ !=§.§!!§);
            _loc3_ = _loc3_.concat(param1.§@0§(_loc2_,§ !=§.§;;§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§8!H§(_loc2_,§ !=§.§`!T§)) && _loc4_.§;f§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§8!H§(_loc2_,§ !=§.§`U§)) && _loc5_.§;f§ > 0)
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
      
      public function §!q§() : Number
      {
         return this.mLevelMain.camera.§!q§();
      }
      
      public function §"x§(param1:Number) : void
      {
         this.mLevelMain.camera.§"x§(param1);
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
      
      public function §68§(param1:Boolean) : void
      {
         this.§4!N§ = param1;
      }
      
      public function §"!D§() : Boolean
      {
         return this.§4!N§;
      }
   }
}
