package §_-W3§
{
   import §_-LP§.DisplayObject;
   import §_-OJ§.§_-tL§;
   import §_-gY§.§_-Vu§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-5K§;
   import starling.events.§_-aG§;
   
   public class §_-c4§ implements §_-qz§
   {
       
      
      protected var §_-Ag§:§_-tL§;
      
      private var §_-FM§:Boolean = false;
      
      public function §_-c4§(param1:§_-tL§)
      {
         super();
         this.§_-Ag§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-Ag§.update(param1,true);
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
         if(§_-Vu§.§_-dq§)
         {
            §_-Vu§.§_-dq§.stage.addEventListener(TouchEvent.§_-AT§,this.§_-Bb§);
         }
         this.§_-Ag§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-Vu§.§_-dq§)
         {
            §_-Vu§.§_-dq§.stage.removeEventListener(TouchEvent.§_-AT§,this.§_-Bb§);
         }
         this.§_-Ag§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-Bb§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-aG§> = null;
         var _loc4_:§_-aG§ = null;
         var _loc5_:§_-aG§ = null;
         if(!this.§_-FM§ || !this.§_-Ag§.§_-57§)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-OT§(_loc2_,§_-5K§.§_-qP§);
            _loc3_ = _loc3_.concat(param1.§_-OT§(_loc2_,§_-5K§.§_-d2§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-QB§(_loc2_,§_-5K§.§_-an§)) && _loc4_.§_-Y7§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-QB§(_loc2_,§_-5K§.§_-RF§)) && _loc5_.§_-Y7§ > 0)
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
      
      public function §_-WT§(param1:Boolean) : void
      {
         this.§_-FM§ = param1;
      }
      
      public function §_-Md§() : Boolean
      {
         return this.§_-FM§;
      }
   }
}
