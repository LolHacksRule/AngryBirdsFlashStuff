package §8S§
{
   import §+R§.§0O§;
   import §5!?§.§>"§;
   import §;t§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§3B§;
   import starling.events.§><§;
   import starling.events.TouchEvent;
   
   public class §#!,§ extends EventDispatcher implements §7,§
   {
       
      
      protected var mLevelMain:§>"§;
      
      private var §@2§:Boolean = false;
      
      public function §#!,§(param1:§>"§)
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
         if(§0O§.§=&§)
         {
            §0O§.§=&§.stage.addEventListener(TouchEvent.§'! §,this.§#s§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§0O§.§=&§)
         {
            §0O§.§=&§.stage.removeEventListener(TouchEvent.§'! §,this.§#s§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §#s§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§3B§> = null;
         var _loc4_:§3B§ = null;
         var _loc5_:§3B§ = null;
         if(!this.§@2§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§'l§(_loc2_,§><§.§3!H§);
            _loc3_ = _loc3_.concat(param1.§'l§(_loc2_,§><§.§#z§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§,2§(_loc2_,§><§.§1e§)) && _loc4_.§+! § > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§,2§(_loc2_,§><§.§"z§)) && _loc5_.§+! § > 0)
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
      
      public function §&K§() : Number
      {
         return this.mLevelMain.camera.§&K§();
      }
      
      public function §8!X§(param1:Number) : void
      {
         this.mLevelMain.camera.§8!X§(param1);
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
      
      public function §]C§(param1:Boolean) : void
      {
         this.§@2§ = param1;
      }
      
      public function §,!4§() : Boolean
      {
         return this.§@2§;
      }
   }
}
