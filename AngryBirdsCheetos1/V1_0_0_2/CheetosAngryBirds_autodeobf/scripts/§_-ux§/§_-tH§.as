package §_-ux§
{
   import §_-GY§.DisplayObject;
   import §_-Kz§.§_-c3§;
   import §_-Ye§.§_-cP§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-BH§;
   import starling.events.§_-oj§;
   
   public class §_-tH§ extends EventDispatcher implements §_-im§
   {
       
      
      protected var §_-GF§:§_-c3§;
      
      private var §_-XX§:Boolean = false;
      
      public function §_-tH§(param1:§_-c3§)
      {
         super();
         this.§_-GF§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-GF§.update(param1,true);
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
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.stage.addEventListener(TouchEvent.§_-yZ§,this.§_-TQ§);
         }
         this.§_-GF§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.stage.removeEventListener(TouchEvent.§_-yZ§,this.§_-TQ§);
         }
         this.§_-GF§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-TQ§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-oj§> = null;
         var _loc4_:§_-oj§ = null;
         var _loc5_:§_-oj§ = null;
         if(!this.§_-XX§ || !this.§_-GF§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-5H§(_loc2_,§_-BH§.§_-WZ§);
            _loc3_ = _loc3_.concat(param1.§_-5H§(_loc2_,§_-BH§.§_-Dt§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-3p§(_loc2_,§_-BH§.§_-mx§)) && _loc4_.§_-A0§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-3p§(_loc2_,§_-BH§.§_-vK§)) && _loc5_.§_-A0§ > 0)
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
      
      public function §_-bh§() : Number
      {
         return this.§_-GF§.camera.§_-bh§();
      }
      
      public function §_-Dz§(param1:Number) : void
      {
         this.§_-GF§.camera.§_-Dz§(param1);
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
      
      public function §_-gr§(param1:Boolean) : void
      {
         this.§_-XX§ = param1;
      }
      
      public function §_-9h§() : Boolean
      {
         return this.§_-XX§;
      }
   }
}
