package §3?§
{
   import §4!-§.§%o§;
   import §86§.DisplayObject;
   import §@g§.§4!@§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9^§;
   import starling.events.§?!?§;
   import starling.events.TouchEvent;
   
   public class §,f§ extends EventDispatcher implements §+!9§
   {
       
      
      protected var §'!8§:§%o§;
      
      private var §2a§:Boolean = false;
      
      public function §,f§(param1:§%o§)
      {
         super();
         this.§'!8§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§'!8§.update(param1,true);
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
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.stage.addEventListener(TouchEvent.§+l§,this.§="§);
         }
         this.§'!8§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.stage.removeEventListener(TouchEvent.§+l§,this.§="§);
         }
         this.§'!8§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §="§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?!?§> = null;
         var _loc4_:§?!?§ = null;
         var _loc5_:§?!?§ = null;
         if(!this.§2a§ || !this.§'!8§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[!3§(_loc2_,§9^§.§ v§);
            _loc3_ = _loc3_.concat(param1.§[!3§(_loc2_,§9^§.§]!#§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§],§(_loc2_,§9^§.§'R§)) && _loc4_.§6o§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§],§(_loc2_,§9^§.§83§)) && _loc5_.§6o§ > 0)
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
      
      public function §!l§() : Number
      {
         return this.§'!8§.camera.§!l§();
      }
      
      public function §%D§(param1:Number) : void
      {
         this.§'!8§.camera.§%D§(param1);
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
      
      public function §`!1§(param1:Boolean) : void
      {
         this.§2a§ = param1;
      }
      
      public function §^!+§() : Boolean
      {
         return this.§2a§;
      }
   }
}
