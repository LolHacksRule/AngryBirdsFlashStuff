package §_-qb§
{
   import §_-Di§.§_-ix§;
   import §_-Ku§.§_-Ha§;
   import §_-SE§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-7v§;
   import starling.events.§_-m0§;
   
   public class §_-AU§ extends EventDispatcher implements §_-a2§
   {
       
      
      protected var §_-JH§:§_-ix§;
      
      private var §_-pd§:Boolean = false;
      
      public function §_-AU§(param1:§_-ix§)
      {
         super();
         this.§_-JH§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-JH§.update(param1,true);
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
         if(§_-Ha§.§_-Aq§)
         {
            §_-Ha§.§_-Aq§.stage.addEventListener(TouchEvent.§_-zM§,this.§_-fO§);
         }
         this.§_-JH§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-Ha§.§_-Aq§)
         {
            §_-Ha§.§_-Aq§.stage.removeEventListener(TouchEvent.§_-zM§,this.§_-fO§);
         }
         this.§_-JH§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-fO§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-m0§> = null;
         var _loc4_:§_-m0§ = null;
         var _loc5_:§_-m0§ = null;
         if(!this.§_-pd§ || !this.§_-JH§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-6R§(_loc2_,§_-7v§.§_-P9§);
            _loc3_ = _loc3_.concat(param1.§_-6R§(_loc2_,§_-7v§.§_-Vh§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-Re§(_loc2_,§_-7v§.§_-dk§)) && _loc4_.§_-8i§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-Re§(_loc2_,§_-7v§.§_-Xe§)) && _loc5_.§_-8i§ > 0)
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
      
      public function §_-Tg§(param1:Boolean) : void
      {
         this.§_-pd§ = param1;
      }
      
      public function §_-M2§() : Boolean
      {
         return this.§_-pd§;
      }
   }
}
