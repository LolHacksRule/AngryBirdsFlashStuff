package §-D§
{
   import §!!V§.§&I§;
   import §"4§.§<h§;
   import §&!5§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#!W§;
   import starling.events.§;n§;
   import starling.events.TouchEvent;
   
   public class §4N§ extends EventDispatcher implements §[h§
   {
       
      
      protected var §%v§:§&I§;
      
      private var §9V§:Boolean = false;
      
      public function §4N§(param1:§&I§)
      {
         super();
         this.§%v§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§%v§.update(param1,true);
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
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.stage.addEventListener(TouchEvent.§0![§,this.§!!"§);
         }
         this.§%v§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.stage.removeEventListener(TouchEvent.§0![§,this.§!!"§);
         }
         this.§%v§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §!!"§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§#!W§> = null;
         var _loc4_:§#!W§ = null;
         var _loc5_:§#!W§ = null;
         if(!this.§9V§ || !this.§%v§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§7K§(_loc2_,§;n§.§&S§);
            _loc3_ = _loc3_.concat(param1.§7K§(_loc2_,§;n§.§,!;§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ %§(_loc2_,§;n§.§9!,§)) && _loc4_.§9!O§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ %§(_loc2_,§;n§.§ ! §)) && _loc5_.§9!O§ > 0)
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
      
      public function §[!?§() : Number
      {
         return this.§%v§.camera.§[!?§();
      }
      
      public function § !L§(param1:Number) : void
      {
         this.§%v§.camera.§ !L§(param1);
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
      
      public function §0k§(param1:Boolean) : void
      {
         this.§9V§ = param1;
      }
      
      public function §<O§() : Boolean
      {
         return this.§9V§;
      }
   }
}
