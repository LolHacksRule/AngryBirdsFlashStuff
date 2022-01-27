package §+=§
{
   import §,!F§.§#§;
   import §4G§.DisplayObject;
   import §>w§.;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ else§;
   import starling.events.§%!M§;
   import starling.events.TouchEvent;
   
   public class §!!N§ extends EventDispatcher implements §3!,§
   {
       
      
      protected var §&§:§#§;
      
      private var §[o§:Boolean = false;
      
      public function §!!N§(param1:§#§)
      {
         super();
         this.§&§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§&§.update(param1,true);
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
         if(§#0§.§#4§)
         {
            §#0§.§#4§.stage.addEventListener(TouchEvent.§;o§,this.§class§);
         }
         this.§&§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§#0§.§#4§)
         {
            §#0§.§#4§.stage.removeEventListener(TouchEvent.§;o§,this.§class§);
         }
         this.§&§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §class§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§%!M§> = null;
         var _loc4_:§%!M§ = null;
         var _loc5_:§%!M§ = null;
         if(!this.§[o§ || !this.§&§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§-d§(_loc2_,§ else§.§'!0§);
            _loc3_ = _loc3_.concat(param1.§-d§(_loc2_,§ else§.§<!;§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§1>§(_loc2_,§ else§.§&!2§)) && _loc4_.§^!J§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§1>§(_loc2_,§ else§.§#!&§)) && _loc5_.§^!J§ > 0)
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
      
      public function §!Y§() : Number
      {
         return this.§&§.camera.§!Y§();
      }
      
      public function §^!-§(param1:Number) : void
      {
         this.§&§.camera.§^!-§(param1);
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
      
      public function §-!1§(param1:Boolean) : void
      {
         this.§[o§ = param1;
      }
      
      public function §1m§() : Boolean
      {
         return this.§[o§;
      }
   }
}
