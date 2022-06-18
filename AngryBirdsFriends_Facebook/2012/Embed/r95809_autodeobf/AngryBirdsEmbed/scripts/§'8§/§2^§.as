package §'8§
{
   import §&I§.§3! §;
   import §+!%§.§'!"§;
   import §->§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ K§;
   import starling.events.§!E§;
   import starling.events.TouchEvent;
   
   public class §2^§ extends EventDispatcher implements §>;§
   {
       
      
      protected var §]U§:§'!"§;
      
      private var §<e§:Boolean = false;
      
      public function §2^§(param1:§'!"§)
      {
         super();
         this.§]U§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]U§.update(param1,true);
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
         if(§3! §.§"n§)
         {
            §3! §.§"n§.stage.addEventListener(TouchEvent.§`Z§,this.§;Q§);
         }
         this.§]U§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§3! §.§"n§)
         {
            §3! §.§"n§.stage.removeEventListener(TouchEvent.§`Z§,this.§;Q§);
         }
         this.§]U§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §;Q§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§ K§> = null;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         if(!this.§<e§ || !this.§]U§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§8x§(_loc2_,§!E§.§6k§);
            _loc3_ = _loc3_.concat(param1.§8x§(_loc2_,§!E§.§3!D§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§'k§(_loc2_,§!E§.§2`§)) && _loc4_.§0!§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§'k§(_loc2_,§!E§.§7`§)) && _loc5_.§0!§ > 0)
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
      
      public function §5Q§() : Number
      {
         return this.§]U§.camera.§5Q§();
      }
      
      public function § n§(param1:Number) : void
      {
         this.§]U§.camera.§ n§(param1);
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
      
      public function §<<§(param1:Boolean) : void
      {
         this.§<e§ = param1;
      }
      
      public function § w§() : Boolean
      {
         return this.§<e§;
      }
   }
}
