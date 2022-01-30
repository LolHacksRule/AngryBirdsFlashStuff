package §9!o§
{
   import §'<§.§=!o§;
   import §-!f§.DisplayObject;
   import §0I§.§!!p§;
   import §6!4§.§<!D§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§-!C§;
   import starling.events.TouchEvent;
   import starling.events.§`!=§;
   
   public class §=!>§ extends EventDispatcher implements §<"§
   {
       
      
      protected var §-!r§:§!!p§;
      
      protected var §+o§:§=!o§;
      
      private var §;`§:Boolean = false;
      
      public function §=!>§(param1:§!!p§, param2:§=!o§)
      {
         super();
         this.§-!r§ = param1;
         this.§+o§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§-!r§.update(param1,true);
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
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.stage.addEventListener(TouchEvent.§3!d§,this.§;!"§);
         }
         this.§-!r§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.stage.removeEventListener(TouchEvent.§3!d§,this.§;!"§);
         }
         this.§-!r§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §;!"§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§`!=§> = null;
         var _loc4_:§`!=§ = null;
         var _loc5_:§`!=§ = null;
         if(!this.§;`§ || !this.§-!r§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[>§(_loc2_,§-!C§.§#!l§);
            _loc3_ = _loc3_.concat(param1.§[>§(_loc2_,§-!C§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§-w§(_loc2_,§-!C§.§&""§)) && _loc4_.§,!U§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§-w§(_loc2_,§-!C§.§#Y§)) && _loc5_.§,!U§ > 0)
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
      
      public function §5!^§() : Number
      {
         return this.§-!r§.camera.§5!^§();
      }
      
      public function §7!f§(param1:Number) : void
      {
         this.§-!r§.camera.§7!f§(param1);
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
      
      public function §;n§(param1:Boolean) : void
      {
         this.§;`§ = param1;
      }
      
      public function §^A§() : Boolean
      {
         return this.§;`§;
      }
   }
}
