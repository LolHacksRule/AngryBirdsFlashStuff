package §_-be§
{
   import §_-0-K§.§_-FL§;
   import §_-KM§.§_-0A§;
   import §case §.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-NE§;
   import starling.events.§_-QO§;
   
   public class §_-5i§ extends EventDispatcher implements §_-1v§
   {
       
      
      protected var §_-mC§:§_-FL§;
      
      private var §_-Vl§:Boolean = false;
      
      public function §_-5i§(param1:§_-FL§)
      {
         super();
         this.§_-mC§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-mC§.update(param1,true);
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
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.stage.addEventListener(TouchEvent.§_-AB§,this.§_-xA§);
         }
         this.§_-mC§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.stage.removeEventListener(TouchEvent.§_-AB§,this.§_-xA§);
         }
         this.§_-mC§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-xA§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-QO§> = null;
         var _loc4_:§_-QO§ = null;
         var _loc5_:§_-QO§ = null;
         if(!this.§_-Vl§ || !this.§_-mC§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-BU§(_loc2_,§_-NE§.§_-L2§);
            _loc3_ = _loc3_.concat(param1.§_-BU§(_loc2_,§_-NE§.§_-eT§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-Nc§(_loc2_,§_-NE§.§_-7A§)) && _loc4_.§_-CQ§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-Nc§(_loc2_,§_-NE§.§_-vw§)) && _loc5_.§_-CQ§ > 0)
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
      
      public function §_-rZ§() : Number
      {
         return this.§_-mC§.camera.§_-rZ§();
      }
      
      public function §_-Re§(param1:Number) : void
      {
         this.§_-mC§.camera.§_-Re§(param1);
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
      
      public function §_-b0§(param1:Boolean) : void
      {
         this.§_-Vl§ = param1;
      }
      
      public function §_-of§() : Boolean
      {
         return this.§_-Vl§;
      }
   }
}
