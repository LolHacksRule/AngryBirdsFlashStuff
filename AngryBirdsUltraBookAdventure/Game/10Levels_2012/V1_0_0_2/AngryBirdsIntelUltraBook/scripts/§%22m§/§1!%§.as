package §"m§
{
   import §'!9§.DisplayObject;
   import §,!5§.§^g§;
   import §<&§.§^b§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;@§;
   import starling.events.TouchEvent;
   import starling.events.§`i§;
   
   public class §1!%§ extends EventDispatcher implements §3!`§
   {
       
      
      protected var §?l§:§^g§;
      
      private var §#o§:Boolean = false;
      
      public function §1!%§(param1:§^g§)
      {
         super();
         this.§?l§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§?l§.update(param1,true);
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
         if(§^b§.§9E§)
         {
            §^b§.§9E§.stage.addEventListener(TouchEvent.§2!6§,this.§0,§);
         }
         this.§?l§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§^b§.§9E§)
         {
            §^b§.§9E§.stage.removeEventListener(TouchEvent.§2!6§,this.§0,§);
         }
         this.§?l§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §0,§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§`i§> = null;
         var _loc4_:§`i§ = null;
         var _loc5_:§`i§ = null;
         if(!this.§#o§ || !this.§?l§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§=!R§(_loc2_,§;@§.§ 8§);
            _loc3_ = _loc3_.concat(param1.§=!R§(_loc2_,§;@§.§ ]§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§8!p§(_loc2_,§;@§.§>!q§)) && _loc4_.§>+§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§8!p§(_loc2_,§;@§.§`O§)) && _loc5_.§>+§ > 0)
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
      
      public function §,!c§() : Number
      {
         return this.§?l§.camera.§,!c§();
      }
      
      public function §#!Q§(param1:Number) : void
      {
         this.§?l§.camera.§#!Q§(param1);
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
      
      public function §#!X§(param1:Boolean) : void
      {
         this.§#o§ = param1;
      }
      
      public function §!h§() : Boolean
      {
         return this.§#o§;
      }
   }
}
