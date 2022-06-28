package §9!H§
{
   import §"$§.Starling;
   import §1!&§.DisplayObject;
   import §?A§.LevelMain;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§0M§;
   import starling.events.§1B§;
   import starling.events.TouchEvent;
   
   public class BasicController extends EventDispatcher implements §"!L§
   {
       
      
      protected var §6f§:LevelMain;
      
      private var §;$§:Boolean = false;
      
      public function BasicController(param1:LevelMain)
      {
         super();
         this.§6f§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§6f§.update(param1,true);
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
         if(Starling.§'!A§)
         {
            Starling.§'!A§.stage.addEventListener(TouchEvent.§@!;§,this.§=o§);
         }
         this.§6f§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§'!A§)
         {
            Starling.§'!A§.stage.removeEventListener(TouchEvent.§@!;§,this.§=o§);
         }
         this.§6f§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §=o§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§1B§> = null;
         var _loc4_:§1B§ = null;
         var _loc5_:§1B§ = null;
         if(!this.§;$§ || !this.§6f§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§!!K§(_loc2_,§0M§.§-!Y§);
            _loc3_ = _loc3_.concat(param1.§!!K§(_loc2_,§0M§.§'p§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            _loc4_ = param1.§2r§(_loc2_,§0M§.§!!C§);
            if(_loc4_ && _loc4_.§'!c§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            _loc5_ = param1.§2r§(_loc2_,§0M§.§+!$§);
            if(_loc5_ && _loc5_.§'!c§ > 0)
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
      
      public function §`!h§() : Number
      {
         return this.§6f§.camera.§`!h§();
      }
      
      public function §`w§(param1:Number) : void
      {
         this.§6f§.camera.§`w§(param1);
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
      
      public function §6!D§(param1:Boolean) : void
      {
         this.§;$§ = param1;
      }
      
      public function §5!j§() : Boolean
      {
         return this.§;$§;
      }
   }
}
