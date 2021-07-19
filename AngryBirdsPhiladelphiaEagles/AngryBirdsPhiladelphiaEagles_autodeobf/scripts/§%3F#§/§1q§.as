package §?#§
{
   import § N§.DisplayObject;
   import §5Z§.§[Z§;
   import §9T§.§1r§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!g§;
   import starling.events.TouchEvent;
   import starling.events.§else§;
   
   public class §1q§ extends EventDispatcher implements §,H§
   {
       
      
      protected var §;§:§1r§;
      
      private var §'!M§:Boolean = false;
      
      public function §1q§(param1:§1r§)
      {
         super();
         this.§;§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§;§.update(param1,true);
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
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.stage.addEventListener(TouchEvent.§=!?§,this.§;!1§);
         }
         this.§;§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.stage.removeEventListener(TouchEvent.§=!?§,this.§;!1§);
         }
         this.§;§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §;!1§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§!g§> = null;
         var _loc4_:§!g§ = null;
         var _loc5_:§!g§ = null;
         if(!this.§'!M§ || !this.§;§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§-!3§(_loc2_,§else§.§&i§);
            _loc3_ = _loc3_.concat(param1.§-!3§(_loc2_,§else§.§+N§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§,f§(_loc2_,§else§.§1!9§)) && _loc4_.§4e§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§,f§(_loc2_,§else§.§ R§)) && _loc5_.§4e§ > 0)
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
      
      public function §4_§() : Number
      {
         return this.§;§.camera.§4_§();
      }
      
      public function §-+§(param1:Number) : void
      {
         this.§;§.camera.§-+§(param1);
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
      
      public function §?!!§(param1:Boolean) : void
      {
         this.§'!M§ = param1;
      }
      
      public function §"y§() : Boolean
      {
         return this.§'!M§;
      }
   }
}
