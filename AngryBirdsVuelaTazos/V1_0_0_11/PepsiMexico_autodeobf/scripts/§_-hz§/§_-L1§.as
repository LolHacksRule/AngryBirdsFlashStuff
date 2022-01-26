package §_-hz§
{
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-Ay§;
   import §_-vO§.DisplayObject;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-6l§;
   import starling.events.§_-8W§;
   
   public class §_-L1§ implements §_-aa§
   {
       
      
      protected var §_-9N§:§_-Ay§;
      
      private var §_-sp§:Boolean = false;
      
      public function §_-L1§(param1:§_-Ay§)
      {
         super();
         this.§_-9N§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-9N§.update(param1,true);
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
         this.§_-D7§();
         if(this.§_-9N§.sprite)
         {
            this.§_-9N§.sprite.addEventListener(TouchEvent.§_-Wz§,this.§_-qI§);
         }
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stage.addEventListener(TouchEvent.§_-Wz§,this.§_-qI§);
         }
         this.§_-9N§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function §_-D7§() : void
      {
         if(this.§_-9N§.sprite)
         {
            this.§_-9N§.sprite.removeEventListener(TouchEvent.§_-Wz§,this.§_-qI§);
         }
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stage.removeEventListener(TouchEvent.§_-Wz§,this.§_-qI§);
         }
         this.§_-9N§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-qI§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-8W§> = null;
         var _loc4_:§_-8W§ = null;
         var _loc5_:§_-8W§ = null;
         if(!this.§_-sp§)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-74§(_loc2_,§_-6l§.§_-x6§);
            _loc3_ = _loc3_.concat(param1.§_-74§(_loc2_,§_-6l§.§_-YR§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-qf§(_loc2_,§_-6l§.§_-oi§)) && _loc4_.§_-jR§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-qf§(_loc2_,§_-6l§.§_-N§)) && _loc5_.§_-jR§ > 0)
            {
               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
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
      
      public function §_-uI§(param1:Boolean) : void
      {
         this.§_-sp§ = param1;
      }
      
      public function §_-Kh§() : Boolean
      {
         return this.§_-sp§;
      }
   }
}
