package §>A§
{
   import §8!#§.§<n§;
   import §]!6§.DisplayObject;
   import §`i§.§2W§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§?c§;
   import starling.events.TouchEvent;
   import starling.events.§[9§;
   
   public class §2!1§ extends EventDispatcher implements §`!6§
   {
       
      
      protected var §"8§:§2W§;
      
      private var §>@§:Boolean = false;
      
      public function §2!1§(param1:§2W§)
      {
         super();
         this.§"8§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§"8§.update(param1,true);
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
         if(§<n§.§?@§)
         {
            §<n§.§?@§.stage.addEventListener(TouchEvent.§0!;§,this.§"!F§);
         }
         this.§"8§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§<n§.§?@§)
         {
            §<n§.§?@§.stage.removeEventListener(TouchEvent.§0!;§,this.§"!F§);
         }
         this.§"8§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §"!F§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§[9§> = null;
         var _loc4_:§[9§ = null;
         var _loc5_:§[9§ = null;
         if(!this.§>@§ || !this.§"8§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§ !"§(_loc2_,§?c§.§7z§);
            _loc3_ = _loc3_.concat(param1.§ !"§(_loc2_,§?c§.§0!2§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§]!D§(_loc2_,§?c§.§,F§)) && _loc4_.§;%§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§]!D§(_loc2_,§?c§.§?!§)) && _loc5_.§;%§ > 0)
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
      
      public function §+!3§() : Number
      {
         return this.§"8§.camera.§+!3§();
      }
      
      public function §7;§(param1:Number) : void
      {
         this.§"8§.camera.§7;§(param1);
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
      
      public function §6J§(param1:Boolean) : void
      {
         this.§>@§ = param1;
      }
      
      public function §&$§() : Boolean
      {
         return this.§>@§;
      }
   }
}
