package §=E§
{
   import §,_§.DisplayObject;
   import §3G§.§!E§;
   import §catch§.§4@§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+!§;
   import starling.events.§9j§;
   import starling.events.TouchEvent;
   
   public class §0?§ extends EventDispatcher implements §"!5§
   {
       
      
      protected var §33§:§!E§;
      
      private var §+J§:Boolean = false;
      
      public function §0?§(param1:§!E§)
      {
         super();
         this.§33§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§33§.update(param1,true);
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
         if(§4@§.§0W§)
         {
            §4@§.§0W§.stage.addEventListener(TouchEvent.§8m§,this.§3R§);
         }
         this.§33§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§4@§.§0W§)
         {
            §4@§.§0W§.stage.removeEventListener(TouchEvent.§8m§,this.§3R§);
         }
         this.§33§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3R§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§+!§> = null;
         var _loc4_:§+!§ = null;
         var _loc5_:§+!§ = null;
         if(!this.§+J§ || !this.§33§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§1!'§(_loc2_,§9j§.§#U§);
            _loc3_ = _loc3_.concat(param1.§1!'§(_loc2_,§9j§.§"s§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§5x§(_loc2_,§9j§.§@q§)) && _loc4_.§1!B§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§5x§(_loc2_,§9j§.§3L§)) && _loc5_.§1!B§ > 0)
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
      
      public function §1r§() : Number
      {
         return this.§33§.camera.§1r§();
      }
      
      public function §>2§(param1:Number) : void
      {
         this.§33§.camera.§>2§(param1);
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
      
      public function §7#§(param1:Boolean) : void
      {
         this.§+J§ = param1;
      }
      
      public function §2z§() : Boolean
      {
         return this.§+J§;
      }
   }
}
