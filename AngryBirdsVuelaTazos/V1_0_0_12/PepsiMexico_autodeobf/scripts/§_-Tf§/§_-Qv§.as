package §_-Tf§
{
   import §_-pF§.DisplayObject;
   import §_-rp§.§_-c5§;
   import §_-v3§.§_-G3§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-2b§;
   import starling.events.§_-ny§;
   
   public class §_-Qv§ implements §_-5y§
   {
       
      
      protected var §_-fE§:§_-c5§;
      
      private var §_-rI§:Boolean = false;
      
      public function §_-Qv§(param1:§_-c5§)
      {
         super();
         this.§_-fE§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-fE§.update(param1,true);
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
         this.§_-Nx§();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stage.addEventListener(TouchEvent.§_-O6§,this.§_-HY§);
         }
         this.§_-fE§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function §_-Nx§() : void
      {
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stage.removeEventListener(TouchEvent.§_-O6§,this.§_-HY§);
         }
         this.§_-fE§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-HY§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-ny§> = null;
         var _loc4_:§_-ny§ = null;
         var _loc5_:§_-ny§ = null;
         if(!this.§_-rI§)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-O1§(_loc2_,§_-2b§.§_-SR§);
            _loc3_ = _loc3_.concat(param1.§_-O1§(_loc2_,§_-2b§.§_-2h§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-jN§(_loc2_,§_-2b§.§_-ZD§)) && _loc4_.§_-S5§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-jN§(_loc2_,§_-2b§.§_-tD§)) && _loc5_.§_-S5§ > 0)
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
      
      public function §_-3H§(param1:Boolean) : void
      {
         this.§_-rI§ = param1;
      }
      
      public function §_-bm§() : Boolean
      {
         return this.§_-rI§;
      }
   }
}
