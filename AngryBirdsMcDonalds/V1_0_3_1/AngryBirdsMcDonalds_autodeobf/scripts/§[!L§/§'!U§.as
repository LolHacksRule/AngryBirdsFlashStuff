package §[!L§
{
   import § %§.§`M§;
   import §&c§.DisplayObject;
   import §3!@§.§ s§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§7!6§;
   import starling.events.§@!B§;
   import starling.events.TouchEvent;
   
   public class §'!U§ extends EventDispatcher implements §^j§
   {
       
      
      protected var mLevelMain:§ s§;
      
      private var §3!h§:Boolean = false;
      
      public function §'!U§(param1:§ s§)
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
         if(§`M§.§93§)
         {
            §`M§.§93§.stage.addEventListener(TouchEvent.§6A§,this.§!C§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§`M§.§93§)
         {
            §`M§.§93§.stage.removeEventListener(TouchEvent.§6A§,this.§!C§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §!C§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§@!B§> = null;
         var _loc4_:§@!B§ = null;
         var _loc5_:§@!B§ = null;
         if(!this.§3!h§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§5!h§(_loc2_,§7!6§.§+9§);
            _loc3_ = _loc3_.concat(param1.§5!h§(_loc2_,§7!6§.§`P§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>K§(_loc2_,§7!6§.§!-§)) && _loc4_.§6!3§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>K§(_loc2_,§7!6§.§>! §)) && _loc5_.§6!3§ > 0)
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
      
      public function §?Z§() : Number
      {
         return this.mLevelMain.camera.§?Z§();
      }
      
      public function §5G§(param1:Number) : void
      {
         this.mLevelMain.camera.§5G§(param1);
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
      
      public function § f§(param1:Boolean) : void
      {
         this.§3!h§ = param1;
      }
      
      public function §^o§() : Boolean
      {
         return this.§3!h§;
      }
   }
}
