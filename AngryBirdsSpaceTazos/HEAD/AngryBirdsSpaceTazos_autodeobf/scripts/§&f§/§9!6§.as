package §&f§
{
   import §&!]§.DisplayObject;
   import §'!B§.§8T§;
   import §1z§.§^!@§;
   import §3"#§.§`"8§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§%!T§;
   import starling.events.§?=§;
   import starling.events.TouchEvent;
   
   public class §9!6§ extends EventDispatcher implements §%!x§
   {
       
      
      protected var §'"9§:§`"8§;
      
      protected var §#"=§:§^!@§;
      
      private var §4&§:Boolean = false;
      
      public function §9!6§(param1:§`"8§, param2:§^!@§)
      {
         super();
         this.§'"9§ = param1;
         this.§#"=§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§'"9§.update(param1,true);
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
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.stage.addEventListener(TouchEvent.§-!E§,this.§4n§);
         }
         this.§'"9§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.stage.removeEventListener(TouchEvent.§-!E§,this.§4n§);
         }
         this.§'"9§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4n§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§%!T§> = null;
         var _loc4_:§%!T§ = null;
         var _loc5_:§%!T§ = null;
         if(!this.§4&§ || !this.§'"9§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§8!S§(_loc2_,§?=§.§2!&§);
            _loc3_ = _loc3_.concat(param1.§8!S§(_loc2_,§?=§.§'A§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§&!D§(_loc2_,§?=§.§;!J§)) && _loc4_.§ "=§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§&!D§(_loc2_,§?=§.§8q§)) && _loc5_.§ "=§ > 0)
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
      
      public function §&"3§() : Number
      {
         return this.§'"9§.camera.§&"3§();
      }
      
      public function §^8§(param1:Number) : void
      {
         this.§'"9§.camera.§^8§(param1);
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
      
      public function § e§(param1:Boolean) : void
      {
         this.§4&§ = param1;
      }
      
      public function §%"B§() : Boolean
      {
         return this.§4&§;
      }
   }
}
