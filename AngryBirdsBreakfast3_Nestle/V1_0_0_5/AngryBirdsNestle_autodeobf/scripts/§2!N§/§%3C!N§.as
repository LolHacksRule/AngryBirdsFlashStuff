package §2!N§
{
   import § !T§.§ q§;
   import §,!q§.DisplayObject;
   import §-!Y§.§%!%§;
   import §]k§.§<S§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!v§;
   import starling.events.§&0§;
   import starling.events.TouchEvent;
   
   public class §<!N§ extends EventDispatcher implements §8!7§
   {
       
      
      protected var §#g§:§<S§;
      
      protected var §="4§:§ q§;
      
      private var §;g§:Boolean = false;
      
      public function §<!N§(param1:§<S§, param2:§ q§)
      {
         super();
         this.§#g§ = param1;
         this.§="4§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§#g§.update(param1,true);
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
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.stage.addEventListener(TouchEvent.§%!k§,this.§'"+§);
         }
         this.§#g§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.stage.removeEventListener(TouchEvent.§%!k§,this.§'"+§);
         }
         this.§#g§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §'"+§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§!v§> = null;
         var _loc4_:§!v§ = null;
         var _loc5_:§!v§ = null;
         if(!this.§;g§ || !this.§#g§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§6K§(_loc2_,§&0§.§%d§);
            _loc3_ = _loc3_.concat(param1.§6K§(_loc2_,§&0§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>"2§(_loc2_,§&0§.§5!C§)) && _loc4_.§ !7§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>"2§(_loc2_,§&0§.§8!u§)) && _loc5_.§ !7§ > 0)
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
      
      public function §@!M§() : Number
      {
         return this.§#g§.camera.§@!M§();
      }
      
      public function §[`§(param1:Number) : void
      {
         this.§#g§.camera.§[`§(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §9!>§(param1:Boolean) : void
      {
         this.§;g§ = param1;
      }
      
      public function §0"-§() : Boolean
      {
         return this.§;g§;
      }
   }
}
