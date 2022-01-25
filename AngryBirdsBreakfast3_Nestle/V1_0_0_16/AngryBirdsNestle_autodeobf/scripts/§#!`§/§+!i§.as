package §#!`§
{
   import §!!!§.§6!l§;
   import §%!B§.§0![§;
   import §3!J§.DisplayObject;
   import §@V§.§#=§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,g§;
   import starling.events.§4&§;
   import starling.events.TouchEvent;
   
   public class §+!i§ extends EventDispatcher implements §1V§
   {
       
      
      protected var §!`§:§#=§;
      
      protected var §4a§:§0![§;
      
      private var §2!G§:Boolean = false;
      
      public function §+!i§(param1:§#=§, param2:§0![§)
      {
         super();
         this.§!`§ = param1;
         this.§4a§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§!`§.update(param1,true);
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
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.stage.addEventListener(TouchEvent.§>P§,this.§]!'§);
         }
         this.§!`§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.stage.removeEventListener(TouchEvent.§>P§,this.§]!'§);
         }
         this.§!`§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §]!'§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4&§> = null;
         var _loc4_:§4&§ = null;
         var _loc5_:§4&§ = null;
         if(!this.§2!G§ || !this.§!`§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§!q§(_loc2_,§,g§.§"=§);
            _loc3_ = _loc3_.concat(param1.§!q§(_loc2_,§,g§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§,!7§(_loc2_,§,g§.§&!]§)) && _loc4_.§ >§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§,!7§(_loc2_,§,g§.§,!4§)) && _loc5_.§ >§ > 0)
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
      
      public function §8>§() : Number
      {
         return this.§!`§.camera.§8>§();
      }
      
      public function §[!f§(param1:Number) : void
      {
         this.§!`§.camera.§[!f§(param1);
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
      
      public function §,P§(param1:Boolean) : void
      {
         this.§2!G§ = param1;
      }
      
      public function §<3§() : Boolean
      {
         return this.§2!G§;
      }
   }
}
