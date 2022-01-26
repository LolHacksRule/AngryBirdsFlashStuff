package § !F§
{
   import §-!§.§-§;
   import §8!`§.§4J§;
   import §;!Q§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"o§;
   import starling.events.§3S§;
   import starling.events.TouchEvent;
   
   public class §9B§ extends EventDispatcher implements §?Z§
   {
       
      
      protected var §'N§:§4J§;
      
      private var §3!T§:Boolean = false;
      
      public function §9B§(param1:§4J§)
      {
         super();
         this.§'N§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§'N§.update(param1,true);
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
         if(§-§.§-G§)
         {
            §-§.§-G§.stage.addEventListener(TouchEvent.§ A§,this.§9!F§);
         }
         this.§'N§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§-§.§-G§)
         {
            §-§.§-G§.stage.removeEventListener(TouchEvent.§ A§,this.§9!F§);
         }
         this.§'N§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §9!F§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§3S§> = null;
         var _loc4_:§3S§ = null;
         var _loc5_:§3S§ = null;
         if(!this.§3!T§ || !this.§'N§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§=!'§(_loc2_,§"o§.§]t§);
            _loc3_ = _loc3_.concat(param1.§=!'§(_loc2_,§"o§.§^!`§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§&2§(_loc2_,§"o§.§&!H§)) && _loc4_.§7!L§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§&2§(_loc2_,§"o§.§`Y§)) && _loc5_.§7!L§ > 0)
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
      
      public function §5!R§() : Number
      {
         return this.§'N§.camera.§5!R§();
      }
      
      public function §8c§(param1:Number) : void
      {
         this.§'N§.camera.§8c§(param1);
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
      
      public function §[2§(param1:Boolean) : void
      {
         this.§3!T§ = param1;
      }
      
      public function §`8§() : Boolean
      {
         return this.§3!T§;
      }
   }
}
