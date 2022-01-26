package §_-Kb§
{
   import §_-5Y§.§_-yw§;
   import §_-b5§.DisplayObject;
   import §_-fI§.§_-BI§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-cm§;
   import starling.events.§_-rP§;
   
   public class §_-e§ implements §_-CH§
   {
       
      
      protected var §_-Fx§:§_-yw§;
      
      private var §_-pE§:Boolean = false;
      
      public function §_-e§(param1:§_-yw§)
      {
         super();
         this.§_-Fx§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-Fx§.update(param1,true);
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
         if(§_-BI§.§_-44§)
         {
            §_-BI§.§_-44§.stage.addEventListener(TouchEvent.final,this.§_-LO§);
         }
         this.§_-Fx§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-BI§.§_-44§)
         {
            §_-BI§.§_-44§.stage.removeEventListener(TouchEvent.final,this.§_-LO§);
         }
         this.§_-Fx§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-LO§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-rP§> = null;
         var _loc4_:§_-rP§ = null;
         var _loc5_:§_-rP§ = null;
         if(!this.§_-pE§ || !this.§_-Fx§.§_-3B§)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-2x§(_loc2_,§_-cm§.§_-PY§);
            _loc3_ = _loc3_.concat(param1.§_-2x§(_loc2_,§_-cm§.§_-sc§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-1W§(_loc2_,§_-cm§.§_-R1§)) && _loc4_.§_-1a§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-1W§(_loc2_,§_-cm§.§_-Ye§)) && _loc5_.§_-1a§ > 0)
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
      
      public function §_-oz§(param1:Boolean) : void
      {
         this.§_-pE§ = param1;
      }
      
      public function §_-dN§() : Boolean
      {
         return this.§_-pE§;
      }
   }
}
