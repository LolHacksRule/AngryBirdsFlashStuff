package §48§
{
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §`g§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§;K§;
   import starling.events.§<A§;
   import starling.events.TouchEvent;
   
   public class §?x§ extends EventDispatcher implements §5Y§
   {
       
      
      protected var §#!U§:§5G§;
      
      private var §6o§:Boolean = false;
      
      public function §?x§(param1:§5G§)
      {
         super();
         this.§#!U§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§#!U§.update(param1,true);
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
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.stage.addEventListener(TouchEvent.§7!L§,this.§3!6§);
         }
         this.§#!U§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.stage.removeEventListener(TouchEvent.§7!L§,this.§3!6§);
         }
         this.§#!U§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3!6§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§;K§> = null;
         var _loc4_:§;K§ = null;
         var _loc5_:§;K§ = null;
         if(!this.§6o§ || !this.§#!U§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§@!s§(_loc2_,§<A§.§0!;§);
            _loc3_ = _loc3_.concat(param1.§@!s§(_loc2_,§<A§.§0!U§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§9=§(_loc2_,§<A§.§2!R§)) && _loc4_.§9!7§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§9=§(_loc2_,§<A§.§"![§)) && _loc5_.§9!7§ > 0)
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
      
      public function §;!n§() : Number
      {
         return this.§#!U§.camera.§;!n§();
      }
      
      public function §2!P§(param1:Number) : void
      {
         this.§#!U§.camera.§2!P§(param1);
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
      
      public function § !J§(param1:Boolean) : void
      {
         this.§6o§ = param1;
      }
      
      public function §]P§() : Boolean
      {
         return this.§6o§;
      }
   }
}
