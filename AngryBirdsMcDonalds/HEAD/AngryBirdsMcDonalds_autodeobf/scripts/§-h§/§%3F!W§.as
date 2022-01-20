package §-h§
{
   import § !J§.§%M§;
   import §%%§.§3P§;
   import §`!n§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!4§;
   import starling.events.§=b§;
   import starling.events.TouchEvent;
   
   public class §?!W§ extends EventDispatcher implements §4!H§
   {
       
      
      protected var mLevelMain:§%M§;
      
      private var §6W§:Boolean = false;
      
      public function §?!W§(param1:§%M§)
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
         if(§3P§.§6_§)
         {
            §3P§.§6_§.stage.addEventListener(TouchEvent.§,!E§,this.§6!L§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§3P§.§6_§)
         {
            §3P§.§6_§.stage.removeEventListener(TouchEvent.§,!E§,this.§6!L§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §6!L§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§!4§> = null;
         var _loc4_:§!4§ = null;
         var _loc5_:§!4§ = null;
         if(!this.§6W§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[L§(_loc2_,§=b§.§`U§);
            _loc3_ = _loc3_.concat(param1.§[L§(_loc2_,§=b§.§0k§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`e§(_loc2_,§=b§.§'q§)) && _loc4_.§#!l§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`e§(_loc2_,§=b§.§;i§)) && _loc5_.§#!l§ > 0)
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
      
      public function § else§() : Number
      {
         return this.mLevelMain.camera.§ else§();
      }
      
      public function §&j§(param1:Number) : void
      {
         this.mLevelMain.camera.§&j§(param1);
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
      
      public function §6v§(param1:Boolean) : void
      {
         this.§6W§ = param1;
      }
      
      public function §>g§() : Boolean
      {
         return this.§6W§;
      }
   }
}
