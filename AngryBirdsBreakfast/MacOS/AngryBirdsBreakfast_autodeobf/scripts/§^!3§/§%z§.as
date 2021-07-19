package §^!3§
{
   import §6![§.DisplayObject;
   import §8!K§.§5!Y§;
   import §@L§.§?!'§;
   import §`!a§.§1"&§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"",§;
   import starling.events.§4!#§;
   import starling.events.TouchEvent;
   
   public class §%z§ extends EventDispatcher implements §6!z§
   {
       
      
      protected var §<Y§:§?!'§;
      
      protected var §&" §:§5!Y§;
      
      private var §1!E§:Boolean = false;
      
      public function §%z§(param1:§?!'§, param2:§5!Y§)
      {
         super();
         this.§<Y§ = param1;
         this.§&" § = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§<Y§.update(param1,true);
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
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.stage.addEventListener(TouchEvent.§77§,this.§&r§);
         }
         this.§<Y§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.stage.removeEventListener(TouchEvent.§77§,this.§&r§);
         }
         this.§<Y§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §&r§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4!#§> = null;
         var _loc4_:§4!#§ = null;
         var _loc5_:§4!#§ = null;
         if(!this.§1!E§ || !this.§<Y§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§!",§(_loc2_,§"",§.§#D§);
            _loc3_ = _loc3_.concat(param1.§!",§(_loc2_,§"",§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§?5§(_loc2_,§"",§.§5!=§)) && _loc4_.§7!L§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§?5§(_loc2_,§"",§.§"!A§)) && _loc5_.§7!L§ > 0)
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
      
      public function §!!<§() : Number
      {
         return this.§<Y§.camera.§!!<§();
      }
      
      public function §0! §(param1:Number) : void
      {
         this.§<Y§.camera.§0! §(param1);
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
      
      public function §&!E§(param1:Boolean) : void
      {
         this.§1!E§ = param1;
      }
      
      public function §8I§() : Boolean
      {
         return this.§1!E§;
      }
   }
}
