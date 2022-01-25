package §>T§
{
   import § 2§.§=+§;
   import §=!d§.§5!5§;
   import §`!B§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§[y§;
   import starling.events.§^!G§;
   
   public class §>X§ extends EventDispatcher implements §,"3§
   {
       
      
      protected var §false§:§=+§;
      
      protected var §#n§:§-g§;
      
      private var §0!6§:Boolean = false;
      
      public function §>X§(param1:§=+§, param2:§-g§)
      {
         super();
         this.§false§ = param1;
         this.§#n§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§false§.update(param1,true);
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
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.stage.addEventListener(TouchEvent.§-o§,this.§%"6§);
         }
         this.§false§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.stage.removeEventListener(TouchEvent.§-o§,this.§%"6§);
         }
         this.§false§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%"6§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§[y§> = null;
         var _loc4_:§[y§ = null;
         var _loc5_:§[y§ = null;
         if(!this.§0!6§ || !this.§false§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§`m§(_loc2_,§^!G§.§-H§);
            _loc3_ = _loc3_.concat(param1.§`m§(_loc2_,§^!G§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§;!a§(_loc2_,§^!G§.§;"0§)) && _loc4_.§""%§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§;!a§(_loc2_,§^!G§.§]m§)) && _loc5_.§""%§ > 0)
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
      
      public function §4b§() : Number
      {
         return this.§false§.camera.§4b§();
      }
      
      public function §!^§(param1:Number) : void
      {
         this.§false§.camera.§!^§(param1);
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
      
      public function §6<§(param1:Boolean) : void
      {
         this.§0!6§ = param1;
      }
      
      public function §2!`§() : Boolean
      {
         return this.§0!6§;
      }
   }
}
