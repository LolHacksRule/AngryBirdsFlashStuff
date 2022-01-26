package §_-m6§
{
   import §_-0y§.§_-B3§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-4l§;
   import starling.events.§_-KE§;
   
   public class §_-a-§ implements §_-d§
   {
       
      
      protected var §_-Ia§:§_-B3§;
      
      private var §_-xV§:Boolean = false;
      
      public function §_-a-§(param1:§_-B3§)
      {
         super();
         this.§_-Ia§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-Ia§.update(param1,true);
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
         if(this.§_-Ia§.sprite)
         {
            this.§_-Ia§.sprite.addEventListener(TouchEvent.§_-Ej§,this.§_-jj§);
            this.§_-Ia§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         }
      }
      
      public function §_-7a§() : void
      {
         if(this.§_-Ia§.sprite)
         {
            this.§_-Ia§.sprite.removeEventListener(TouchEvent.§_-Ej§,this.§_-jj§);
            this.§_-Ia§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         }
      }
      
      private function §_-jj§(param1:TouchEvent) : void
      {
         var _loc2_:Vector.<§_-4l§> = null;
         var _loc3_:§_-4l§ = null;
         var _loc4_:§_-4l§ = null;
         if(!this.§_-xV§)
         {
            return;
         }
         if(this.§_-Ia§.sprite)
         {
            _loc2_ = param1.§_-CT§(this.§_-Ia§.sprite,§_-KE§.§_-SA§);
            _loc2_ = _loc2_.concat(param1.§_-CT§(this.§_-Ia§.sprite,§_-KE§.§_-xa§));
            if(_loc2_.length > 0)
            {
               this.handleMouseMove(_loc2_[0].globalX,_loc2_[0].globalY);
            }
            _loc3_ = param1.§_-aJ§(this.§_-Ia§.sprite,§_-KE§.§_-w0§);
            if(_loc3_ && _loc3_.§_-AH§ > 0)
            {
               this.handleMouseUp(_loc3_.globalX,_loc3_.globalY);
            }
            if((_loc4_ = param1.§_-aJ§(this.§_-Ia§.sprite,§_-KE§.§_-mI§)) && _loc4_.§_-AH§ > 0)
            {
               this.handleMouseDown(_loc4_.globalX,_loc4_.globalY);
            }
         }
      }
      
      public function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      public function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function §_-91§(param1:Boolean) : void
      {
         this.§_-xV§ = param1;
      }
      
      public function §_-Tq§() : Boolean
      {
         return this.§_-xV§;
      }
   }
}
