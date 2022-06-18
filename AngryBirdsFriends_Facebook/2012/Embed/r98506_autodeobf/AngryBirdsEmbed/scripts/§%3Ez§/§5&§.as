package §>z§
{
   import §#;§.§4!8§;
   import §;%§.§8o§;
   import §;q§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§"1§;
   import starling.events.§0!!§;
   import starling.events.TouchEvent;
   
   public class §5&§ extends EventDispatcher implements §!8§
   {
       
      
      protected var §3!3§:§4!8§;
      
      private var §=^§:Boolean = false;
      
      public function §5&§(param1:§4!8§)
      {
         super();
         this.§3!3§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§3!3§.update(param1,true);
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
         if(§8o§.§5J§)
         {
            §8o§.§5J§.stage.addEventListener(TouchEvent.§5!J§,this.§+-§);
         }
         this.§3!3§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§8o§.§5J§)
         {
            §8o§.§5J§.stage.removeEventListener(TouchEvent.§5!J§,this.§+-§);
         }
         this.§3!3§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §+-§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§"1§> = null;
         var _loc4_:§"1§ = null;
         var _loc5_:§"1§ = null;
         if(!this.§=^§ || !this.§3!3§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§2]§(_loc2_,§0!!§.§&I§);
            _loc3_ = _loc3_.concat(param1.§2]§(_loc2_,§0!!§.§<! §));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ !!§(_loc2_,§0!!§.§ #§)) && _loc4_.§-!?§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ !!§(_loc2_,§0!!§.§9!;§)) && _loc5_.§-!?§ > 0)
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
      
      public function §8C§() : Number
      {
         return this.§3!3§.camera.§8C§();
      }
      
      public function §?q§(param1:Number) : void
      {
         this.§3!3§.camera.§?q§(param1);
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
      
      public function §8-§(param1:Boolean) : void
      {
         this.§=^§ = param1;
      }
      
      public function §[4§() : Boolean
      {
         return this.§=^§;
      }
   }
}
