package §]!=§
{
   import §,#+§.§7!m§;
   import §1"s§.DisplayObject;
   import §5!q§.§3"X§;
   import §9!!§.§=!S§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#"X§;
   import starling.events.§;!9§;
   import starling.events.TouchEvent;
   
   public class §?,§ extends EventDispatcher implements §6"p§
   {
       
      
      protected var §]""§:§3"X§;
      
      protected var § !p§:§7!m§;
      
      private var §]"6§:Boolean = false;
      
      public function §?,§(param1:§3"X§, param2:§7!m§)
      {
         super();
         this.§]""§ = param1;
         this.§ !p§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§]""§.update(param1,true);
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
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.stage.addEventListener(TouchEvent.§]N§,this.§>&§);
         }
         this.§]""§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.stage.removeEventListener(TouchEvent.§]N§,this.§>&§);
         }
         this.§]""§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §>&§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§#"X§> = null;
         var _loc4_:§#"X§ = null;
         var _loc5_:§#"X§ = null;
         if(!this.§]"6§ || !this.§]""§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§;!E§(_loc2_,§;!9§.§%!C§);
            _loc3_ = _loc3_.concat(param1.§;!E§(_loc2_,§;!9§.§9A§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§]!b§(_loc2_,§;!9§.§,"F§)) && _loc4_.§7!s§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§]!b§(_loc2_,§;!9§.§0"1§)) && _loc5_.§7!s§ > 0)
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
      
      public function §4!;§() : Number
      {
         return this.§]""§.camera.§4!;§();
      }
      
      public function §]!^§(param1:Number) : void
      {
         this.§]""§.camera.§]!^§(param1);
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
      
      public function §5"e§(param1:Boolean) : void
      {
         this.§]"6§ = param1;
      }
      
      public function §]!x§() : Boolean
      {
         return this.§]"6§;
      }
   }
}
