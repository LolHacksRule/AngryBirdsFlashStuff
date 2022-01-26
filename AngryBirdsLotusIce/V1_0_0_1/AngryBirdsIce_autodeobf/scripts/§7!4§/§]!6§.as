package §7!4§
{
   import §"o§.§ M§;
   import §@!%§.§+8§;
   import §@!=§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"c§;
   import starling.events.§>w§;
   import starling.events.TouchEvent;
   
   public class §]!6§ extends EventDispatcher implements §-!$§
   {
       
      
      protected var § 6§:§ M§;
      
      private var §2!?§:Boolean = false;
      
      public function §]!6§(param1:§ M§)
      {
         super();
         this.§ 6§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§ 6§.update(param1,true);
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
         if(§+8§.§-2§)
         {
            §+8§.§-2§.stage.addEventListener(TouchEvent.§!&§,this.§`O§);
         }
         this.§ 6§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§+8§.§-2§)
         {
            §+8§.§-2§.stage.removeEventListener(TouchEvent.§!&§,this.§`O§);
         }
         this.§ 6§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §`O§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§"c§> = null;
         var _loc4_:§"c§ = null;
         var _loc5_:§"c§ = null;
         if(!this.§2!?§ || !this.§ 6§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§'!%§(_loc2_,§>w§.§`'§);
            _loc3_ = _loc3_.concat(param1.§'!%§(_loc2_,§>w§.§#j§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§2E§(_loc2_,§>w§.§[s§)) && _loc4_.§[n§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§2E§(_loc2_,§>w§.§9a§)) && _loc5_.§[n§ > 0)
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
      
      public function §^j§() : Number
      {
         return this.§ 6§.camera.§^j§();
      }
      
      public function §4y§(param1:Number) : void
      {
         this.§ 6§.camera.§4y§(param1);
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
      
      public function §=X§(param1:Boolean) : void
      {
         this.§2!?§ = param1;
      }
      
      public function §=!-§() : Boolean
      {
         return this.§2!?§;
      }
   }
}
