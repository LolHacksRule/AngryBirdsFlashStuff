package §4!S§
{
   import §%h§.§5X§;
   import §0!F§.§^d§;
   import §]!2§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#"#§;
   import starling.events.§8§;
   import starling.events.TouchEvent;
   
   public class §"!K§ extends EventDispatcher implements §&!4§
   {
       
      
      protected var §>"2§:§5X§;
      
      private var §9!t§:Boolean = false;
      
      public function §"!K§(param1:§5X§)
      {
         super();
         this.§>"2§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§>"2§.update(param1,true);
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
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.stage.addEventListener(TouchEvent.§-!k§,this.§-y§);
         }
         this.§>"2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.stage.removeEventListener(TouchEvent.§-!k§,this.§-y§);
         }
         this.§>"2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §-y§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§8§> = null;
         var _loc4_:§8§ = null;
         var _loc5_:§8§ = null;
         if(!this.§9!t§ || !this.§>"2§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§3w§(_loc2_,§#"#§.§?9§);
            _loc3_ = _loc3_.concat(param1.§3w§(_loc2_,§#"#§.§-^§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§'G§(_loc2_,§#"#§.§ '§)) && _loc4_.§+!]§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§'G§(_loc2_,§#"#§.§ "$§)) && _loc5_.§+!]§ > 0)
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
         return this.§>"2§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§>"2§.camera.setZoomRatio(param1);
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
      
      public function §@v§(param1:Boolean) : void
      {
         this.§9!t§ = param1;
      }
      
      public function §^"5§() : Boolean
      {
         return this.§9!t§;
      }
   }
}
