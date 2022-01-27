package §5s§
{
   import §1f§.§9H§;
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §4"@§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§+0§;
   import starling.events.§4"=§;
   import starling.events.TouchEvent;
   
   public class §6z§ extends EventDispatcher implements §`!<§
   {
       
      
      protected var §;H§:§1!R§;
      
      protected var §]m§:§,!j§;
      
      private var §="3§:Boolean = false;
      
      public function §6z§(param1:§1!R§, param2:§,!j§)
      {
         super();
         this.§;H§ = param1;
         this.§]m§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§;H§.update(param1,true);
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
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.stage.addEventListener(TouchEvent.§3Q§,this.§-"1§);
         }
         this.§;H§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.stage.removeEventListener(TouchEvent.§3Q§,this.§-"1§);
         }
         this.§;H§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §-"1§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4"=§> = null;
         var _loc4_:§4"=§ = null;
         var _loc5_:§4"=§ = null;
         if(!this.§="3§ || !this.§;H§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§%" §(_loc2_,§+0§.§%F§);
            _loc3_ = _loc3_.concat(param1.§%" §(_loc2_,§+0§.§,!_§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§%s§(_loc2_,§+0§.§-O§)) && _loc4_.§=!6§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§%s§(_loc2_,§+0§.§6§)) && _loc5_.§=!6§ > 0)
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
      
      public function §>t§() : Number
      {
         return this.§;H§.camera.§>t§();
      }
      
      public function §]`§(param1:Number) : void
      {
         this.§;H§.camera.§]`§(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §`"D§(param1:Boolean) : void
      {
         this.§="3§ = param1;
      }
      
      public function §`!7§() : Boolean
      {
         return this.§="3§;
      }
   }
}
