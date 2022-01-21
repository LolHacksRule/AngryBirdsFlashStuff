package §?;§
{
   import §"v§.§5!T§;
   import §2!g§.DisplayObject;
   import §@!b§.§@!k§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§&!'§;
   import starling.events.§'t§;
   import starling.events.TouchEvent;
   
   public class §8!"§ extends EventDispatcher implements §?!]§
   {
       
      
      protected var mLevelMain:§@!k§;
      
      private var §`J§:Boolean = false;
      
      public function §8!"§(param1:§@!k§)
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
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.stage.addEventListener(TouchEvent.§7`§,this.§&!,§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.stage.removeEventListener(TouchEvent.§7`§,this.§&!,§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §&!,§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§'t§> = null;
         var _loc4_:§'t§ = null;
         var _loc5_:§'t§ = null;
         if(!this.§`J§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§&L§(_loc2_,§&!'§.§@!H§);
            _loc3_ = _loc3_.concat(param1.§&L§(_loc2_,§&!'§.§%! §));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>!Y§(_loc2_,§&!'§.§-u§)) && _loc4_.§8@§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>!Y§(_loc2_,§&!'§.§6m§)) && _loc5_.§8@§ > 0)
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
      
      public function §`!,§() : Number
      {
         return this.mLevelMain.camera.§`!,§();
      }
      
      public function §0!N§(param1:Number) : void
      {
         this.mLevelMain.camera.§0!N§(param1);
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
      
      public function §'K§(param1:Boolean) : void
      {
         this.§`J§ = param1;
      }
      
      public function §-!i§() : Boolean
      {
         return this.§`J§;
      }
   }
}
