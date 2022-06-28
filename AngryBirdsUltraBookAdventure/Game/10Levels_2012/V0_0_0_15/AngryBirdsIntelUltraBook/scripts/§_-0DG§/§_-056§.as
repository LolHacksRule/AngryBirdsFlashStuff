package §_-0Dg§
{
   import §_-0Ea§.§_-AY§;
   import §_-TG§.§_-00u§;
   import §_-uY§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-06V§;
   import starling.events.§_-tW§;
   
   public class §_-056§ extends EventDispatcher implements §_-0BD§
   {
       
      
      protected var §_-6A§:§_-00u§;
      
      private var §_-tr§:Boolean = false;
      
      public function §_-056§(param1:§_-00u§)
      {
         super();
         this.§_-6A§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-6A§.update(param1,true);
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
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.stage.addEventListener(TouchEvent.§_-ed§,this.§_-04d§);
         }
         this.§_-6A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.stage.removeEventListener(TouchEvent.§_-ed§,this.§_-04d§);
         }
         this.§_-6A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-04d§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-06V§> = null;
         var _loc4_:§_-06V§ = null;
         var _loc5_:§_-06V§ = null;
         if(!this.§_-tr§ || !this.§_-6A§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-y4§(_loc2_,§_-tW§.§_-Ua§);
            _loc3_ = _loc3_.concat(param1.§_-y4§(_loc2_,§_-tW§.§for §));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-MV§(_loc2_,§_-tW§.§_-0Cc§)) && _loc4_.§_-Y3§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-MV§(_loc2_,§_-tW§.§_-h4§)) && _loc5_.§_-Y3§ > 0)
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
      
      public function §_-0A5§() : Number
      {
         return this.§_-6A§.camera.§_-0A5§();
      }
      
      public function §_-IH§(param1:Number) : void
      {
         this.§_-6A§.camera.§_-IH§(param1);
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
      
      public function §_-Ia§(param1:Boolean) : void
      {
         this.§_-tr§ = param1;
      }
      
      public function §_-zL§() : Boolean
      {
         return this.§_-tr§;
      }
   }
}
