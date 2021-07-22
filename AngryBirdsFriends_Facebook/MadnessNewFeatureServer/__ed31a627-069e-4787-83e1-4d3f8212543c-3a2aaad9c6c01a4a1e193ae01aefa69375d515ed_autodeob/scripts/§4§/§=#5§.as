package §4§#3
{
   import §!$;§.§!r§;
   import §!$;§.§4$8§;
   import §!$;§.TouchEvent;
   import §'!j§.Starling;
   import §,"v§.§;"n§;
   import §6#H§.DisplayObject;
   import §>2§.§!6§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §=#5§ extends EventDispatcher implements §="r§
   {
       
      
      protected var §5#0§:§!6§;
      
      protected var mLevelManager:§;"n§;
      
      private var §&"B§:Boolean = false;
      
      public function §=#5§(param1:§!6§, param2:§;"n§)
      {
         super();
         this.§5#0§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§5#0§.update(param1,true);
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
         if(Starling.§>x§)
         {
            Starling.§>x§.stage.addEventListener(TouchEvent.§3O§,this.§0$8§);
         }
         this.§5#0§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§>x§)
         {
            Starling.§>x§.stage.removeEventListener(TouchEvent.§3O§,this.§0$8§);
         }
         this.§5#0§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §0$8§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§!r§> = null;
         var _loc4_:§!r§ = null;
         var _loc5_:§!r§ = null;
         if(!this.§&"B§ || !this.§5#0§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§@!1§(_loc2_,§4$8§.§4"^§);
            _loc3_ = _loc3_.concat(param1.§@!1§(_loc2_,§4$8§.§8"b§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§5$E§(_loc2_,§4$8§.ENDED)) && _loc4_.§["P§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§5$E§(_loc2_,§4$8§.§0E§)) && _loc5_.§["P§ > 0)
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
      
      public function §]6§() : Number
      {
         return this.§5#0§.camera.§]6§();
      }
      
      public function § K§(param1:Number) : void
      {
         this.§5#0§.camera.§ K§(param1);
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
      
      public function §>#H§(param1:Boolean) : void
      {
         this.§&"B§ = param1;
      }
      
      public function §,"V§() : Boolean
      {
         return this.§&"B§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
