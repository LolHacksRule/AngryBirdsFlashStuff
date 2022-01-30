package §]"&§
{
   import §-N§.§=!]§;
   import §7q§.DisplayObject;
   import §=b§.§-!K§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,"0§;
   import starling.events.TouchEvent;
   import starling.events.§[!k§;
   
   public class §`!z§ extends EventDispatcher implements §#'§
   {
       
      
      protected var §;!x§:§-!K§;
      
      private var §?%§:Boolean = false;
      
      public function §`!z§(param1:§-!K§)
      {
         super();
         this.§;!x§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§;!x§.update(param1,true);
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
         if(§=!]§.§@§)
         {
            §=!]§.§@§.stage.addEventListener(TouchEvent.§!"8§,this.§-!3§);
         }
         this.§;!x§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§=!]§.§@§)
         {
            §=!]§.§@§.stage.removeEventListener(TouchEvent.§!"8§,this.§-!3§);
         }
         this.§;!x§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §-!3§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§,"0§> = null;
         var _loc4_:§,"0§ = null;
         var _loc5_:§,"0§ = null;
         if(!this.§?%§ || !this.§;!x§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§1d§(_loc2_,§[!k§.§@$§);
            _loc3_ = _loc3_.concat(param1.§1d§(_loc2_,§[!k§.§9b§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§%"6§(_loc2_,§[!k§.§>O§)) && _loc4_.§;N§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§%"6§(_loc2_,§[!k§.§9!8§)) && _loc5_.§;N§ > 0)
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
      
      public function getZoomRatio() : Number
      {
         return this.§;!x§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§;!x§.camera.setZoomRatio(param1);
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
      
      public function §5!G§(param1:Boolean) : void
      {
         this.§?%§ = param1;
      }
      
      public function §`"'§() : Boolean
      {
         return this.§?%§;
      }
   }
}
