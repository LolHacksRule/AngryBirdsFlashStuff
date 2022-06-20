package §["-§
{
   import §&!v§.DisplayObject;
   import §+!C§.§!!S§;
   import §1P§.§&#V§;
   import §1P§.§-§;
   import §1P§.TouchEvent;
   import §9+§.Starling;
   import §@#§.§^#Q§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §3!t§ extends EventDispatcher implements §#R§
   {
       
      
      protected var §`=§:§!!S§;
      
      protected var mLevelManager:§^#Q§;
      
      private var §]$-§:Boolean = false;
      
      public function §3!t§(param1:§!!S§, param2:§^#Q§)
      {
         super();
         this.§`=§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§`=§.update(param1,true);
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
         if(Starling.§?$#§)
         {
            Starling.§?$#§.stage.addEventListener(TouchEvent.§6f§,this.§3!Z§);
         }
         this.§`=§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§?$#§)
         {
            Starling.§?$#§.stage.removeEventListener(TouchEvent.§6f§,this.§3!Z§);
         }
         this.§`=§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3!Z§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§&#V§> = null;
         var _loc4_:§&#V§ = null;
         var _loc5_:§&#V§ = null;
         if(!this.§]$-§ || !this.§`=§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[!Q§(_loc2_,§-§.§9$!§);
            _loc3_ = _loc3_.concat(param1.§[!Q§(_loc2_,§-§.§""R§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§+#B§(_loc2_,§-§.§&#d§)) && _loc4_.§@"j§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§+#B§(_loc2_,§-§.§?#S§)) && _loc5_.§@"j§ > 0)
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
      
      public function §&#&§() : Number
      {
         return this.§`=§.camera.§&#&§();
      }
      
      public function §6!2§(param1:Number) : void
      {
         this.§`=§.camera.§6!2§(param1);
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
      
      public function §'a§(param1:Boolean) : void
      {
         this.§]$-§ = param1;
      }
      
      public function §4!R§() : Boolean
      {
         return this.§]$-§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
