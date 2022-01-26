package §_-5i§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.DisplayObject;
   import §_-vB§.§_-Kk§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-3x§;
   import starling.events.§_-KQ§;
   
   public class §_-l5§ extends EventDispatcher implements §_-U1§
   {
       
      
      protected var §_-5F§:§_-sn§;
      
      private var §_-EM§:Boolean = false;
      
      public function §_-l5§(param1:§_-sn§)
      {
         super();
         this.§_-5F§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-5F§.update(param1,true);
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
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.stage.addEventListener(TouchEvent.§_-xL§,this.§_-AI§);
         }
         this.§_-5F§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.stage.removeEventListener(TouchEvent.§_-xL§,this.§_-AI§);
         }
         this.§_-5F§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-AI§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-KQ§> = null;
         var _loc4_:§_-KQ§ = null;
         var _loc5_:§_-KQ§ = null;
         if(!this.§_-EM§ || !this.§_-5F§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-00§(_loc2_,§_-3x§.§_-zy§);
            _loc3_ = _loc3_.concat(param1.§_-00§(_loc2_,§_-3x§.§_-Nx§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-Cl§(_loc2_,§_-3x§.§_-JZ§)) && _loc4_.§_-y1§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-Cl§(_loc2_,§_-3x§.§_-4G§)) && _loc5_.§_-y1§ > 0)
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
      
      public function §_-je§() : Number
      {
         return this.§_-5F§.camera.§_-je§();
      }
      
      public function §_-Nw§(param1:Number) : void
      {
         this.§_-5F§.camera.§_-Nw§(param1);
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
      
      public function §_-ov§(param1:Boolean) : void
      {
         this.§_-EM§ = param1;
      }
      
      public function §_-Xk§() : Boolean
      {
         return this.§_-EM§;
      }
   }
}
