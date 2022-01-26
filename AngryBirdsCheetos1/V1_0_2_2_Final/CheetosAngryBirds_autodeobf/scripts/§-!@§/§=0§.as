package §-!@§
{
   import §!X§.§86§;
   import §]@§.DisplayObject;
   import §`C§.§9!'§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§3M§;
   import starling.events.§5v§;
   import starling.events.TouchEvent;
   
   public class §=0§ extends EventDispatcher implements §<!D§
   {
       
      
      protected var §>`§:§86§;
      
      private var §1W§:Boolean = false;
      
      public function §=0§(param1:§86§)
      {
         super();
         this.§>`§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§>`§.update(param1,true);
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
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.stage.addEventListener(TouchEvent.§"M§,this.§4u§);
         }
         this.§>`§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.stage.removeEventListener(TouchEvent.§"M§,this.§4u§);
         }
         this.§>`§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4u§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§5v§> = null;
         var _loc4_:§5v§ = null;
         var _loc5_:§5v§ = null;
         if(!this.§1W§ || !this.§>`§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§7S§(_loc2_,§3M§.§@!,§);
            _loc3_ = _loc3_.concat(param1.§7S§(_loc2_,§3M§.§3!$§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§<!8§(_loc2_,§3M§.§"!,§)) && _loc4_.§!!8§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§<!8§(_loc2_,§3M§.§+c§)) && _loc5_.§!!8§ > 0)
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
      
      public function §'!?§() : Number
      {
         return this.§>`§.camera.§'!?§();
      }
      
      public function §^!G§(param1:Number) : void
      {
         this.§>`§.camera.§^!G§(param1);
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
      
      public function §&!#§(param1:Boolean) : void
      {
         this.§1W§ = param1;
      }
      
      public function §1l§() : Boolean
      {
         return this.§1W§;
      }
   }
}
