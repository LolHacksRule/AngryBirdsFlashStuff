package §<"9§
{
   import §'!&§.DisplayObject;
   import §3!4§.§ ![§;
   import §;!0§.;
   import §?!<§.§'!1§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0!i§;
   import starling.events.TouchEvent;
   import starling.events.§^!w§;
   
   public class §2!O§ extends EventDispatcher implements §0";§
   {
       
      
      protected var §1!3§:§'!1§;
      
      protected var §,W§:§#2§;
      
      private var §["+§:Boolean = false;
      
      public function §2!O§(param1:§'!1§, param2:§#2§)
      {
         super();
         this.§1!3§ = param1;
         this.§,W§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§1!3§.update(param1,true);
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
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.stage.addEventListener(TouchEvent.§;;§,this.§'!9§);
         }
         this.§1!3§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.stage.removeEventListener(TouchEvent.§;;§,this.§'!9§);
         }
         this.§1!3§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §'!9§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§^!w§> = null;
         var _loc4_:§^!w§ = null;
         var _loc5_:§^!w§ = null;
         if(!this.§["+§ || !this.§1!3§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§%!N§(_loc2_,§0!i§.§3!r§);
            _loc3_ = _loc3_.concat(param1.§%!N§(_loc2_,§0!i§.§"!j§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§1!<§(_loc2_,§0!i§.§?!-§)) && _loc4_.§6!>§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§1!<§(_loc2_,§0!i§.§>! §)) && _loc5_.§6!>§ > 0)
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
      
      public function §!$§() : Number
      {
         return this.§1!3§.camera.§!$§();
      }
      
      public function §6W§(param1:Number) : void
      {
         this.§1!3§.camera.§6W§(param1);
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
      
      public function §>!?§(param1:Boolean) : void
      {
         this.§["+§ = param1;
      }
      
      public function §'!+§() : Boolean
      {
         return this.§["+§;
      }
   }
}
