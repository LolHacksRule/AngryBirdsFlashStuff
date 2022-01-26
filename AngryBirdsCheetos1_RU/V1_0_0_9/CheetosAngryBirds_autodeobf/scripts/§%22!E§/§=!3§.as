package §"!E§
{
   import §'!S§.§,!%§;
   import §3E§.§6w§;
   import §7u§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§2!P§;
   import starling.events.§6x§;
   import starling.events.TouchEvent;
   
   public class §=!3§ extends EventDispatcher implements §]p§
   {
       
      
      protected var §]v§:§6w§;
      
      private var §1I§:Boolean = false;
      
      public function §=!3§(param1:§6w§)
      {
         super();
         this.§]v§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]v§.update(param1,true);
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
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.stage.addEventListener(TouchEvent.§>W§,this.§9q§);
         }
         this.§]v§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.stage.removeEventListener(TouchEvent.§>W§,this.§9q§);
         }
         this.§]v§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §9q§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§2!P§> = null;
         var _loc4_:§2!P§ = null;
         var _loc5_:§2!P§ = null;
         if(!this.§1I§ || !this.§]v§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§&8§(_loc2_,§6x§.§6!N§);
            _loc3_ = _loc3_.concat(param1.§&8§(_loc2_,§6x§.§%V§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§1!M§(_loc2_,§6x§.§9%§)) && _loc4_.§4w§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§1!M§(_loc2_,§6x§.§;!Y§)) && _loc5_.§4w§ > 0)
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
      
      public function §7!9§() : Number
      {
         return this.§]v§.camera.§7!9§();
      }
      
      public function §!j§(param1:Number) : void
      {
         this.§]v§.camera.§!j§(param1);
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
      
      public function §<w§(param1:Boolean) : void
      {
         this.§1I§ = param1;
      }
      
      public function §=T§() : Boolean
      {
         return this.§1I§;
      }
   }
}
