package § A§
{
   import §0V§.§`!O§;
   import §3§.DisplayObject;
   import §94§.§&!7§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+!9§;
   import starling.events.§?S§;
   import starling.events.TouchEvent;
   
   public class §<!D§ extends EventDispatcher implements §#K§
   {
       
      
      protected var §!q§:§`!O§;
      
      private var § !_§:Boolean = false;
      
      public function §<!D§(param1:§`!O§)
      {
         super();
         this.§!q§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§!q§.update(param1,true);
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
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.stage.addEventListener(TouchEvent.§?B§,this.§^!R§);
         }
         this.§!q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.stage.removeEventListener(TouchEvent.§?B§,this.§^!R§);
         }
         this.§!q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §^!R§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§+!9§> = null;
         var _loc4_:§+!9§ = null;
         var _loc5_:§+!9§ = null;
         if(!this.§ !_§ || !this.§!q§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§ R§(_loc2_,§?S§.§?W§);
            _loc3_ = _loc3_.concat(param1.§ R§(_loc2_,§?S§.§+!K§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`P§(_loc2_,§?S§.§,i§)) && _loc4_.§,9§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`P§(_loc2_,§?S§.§'t§)) && _loc5_.§,9§ > 0)
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
      
      public function §0E§() : Number
      {
         return this.§!q§.camera.§0E§();
      }
      
      public function §,u§(param1:Number) : void
      {
         this.§!q§.camera.§,u§(param1);
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
      
      public function §`!"§(param1:Boolean) : void
      {
         this.§ !_§ = param1;
      }
      
      public function §^B§() : Boolean
      {
         return this.§ !_§;
      }
   }
}
