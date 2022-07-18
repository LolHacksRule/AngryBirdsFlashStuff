package §"a§
{
   import §!!U§.DisplayObject;
   import §&#H§.§3#J§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§5X§;
   import starling.events.TouchEvent;
   import starling.events.§[#W§;
   
   public class §3!z§ extends EventDispatcher implements §?#&§
   {
       
      
      protected var §2#G§:§#_§;
      
      protected var §+!b§:§+"2§;
      
      private var §2I§:Boolean = false;
      
      public function §3!z§(param1:§#_§, param2:§+"2§)
      {
         super();
         this.§2#G§ = param1;
         this.§+!b§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§2#G§.update(param1,true);
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
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.stage.addEventListener(TouchEvent.§;!1§,this.§2#5§);
         }
         this.§2#G§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.stage.removeEventListener(TouchEvent.§;!1§,this.§2#5§);
         }
         this.§2#G§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §2#5§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§[#W§> = null;
         var _loc4_:§[#W§ = null;
         var _loc5_:§[#W§ = null;
         if(!this.§2I§ || !this.§2#G§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§&!N§(_loc2_,§5X§.§!!Z§);
            _loc3_ = _loc3_.concat(param1.§&!N§(_loc2_,§5X§.§;!s§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§>!6§(_loc2_,§5X§.§"!u§)) && _loc4_.§`l§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§>!6§(_loc2_,§5X§.§<!A§)) && _loc5_.§`l§ > 0)
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
      
      public function §=!L§() : Number
      {
         return this.§2#G§.camera.§=!L§();
      }
      
      public function §+"&§(param1:Number) : void
      {
         this.§2#G§.camera.§+"&§(param1);
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
      
      public function §6"<§(param1:Boolean) : void
      {
         this.§2I§ = param1;
      }
      
      public function §5^§() : Boolean
      {
         return this.§2I§;
      }
   }
}
