package §^x§
{
   import § !=§.DisplayObject;
   import §!P§.§5!1§;
   import §]A§.§[d§;
   import §`V§.§;6§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,!B§;
   import starling.events.TouchEvent;
   import starling.events.§]!?§;
   
   public class §"b§ extends EventDispatcher implements §="4§
   {
       
      
      protected var §+"1§:§[d§;
      
      protected var §97§:§5!1§;
      
      private var §5!$§:Boolean = false;
      
      public function §"b§(param1:§[d§, param2:§5!1§)
      {
         super();
         this.§+"1§ = param1;
         this.§97§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§+"1§.update(param1,true);
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
         if(§;6§.§@X§)
         {
            §;6§.§@X§.stage.addEventListener(TouchEvent.§7Z§,this.§'E§);
         }
         this.§+"1§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§;6§.§@X§)
         {
            §;6§.§@X§.stage.removeEventListener(TouchEvent.§7Z§,this.§'E§);
         }
         this.§+"1§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §'E§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§]!?§> = null;
         var _loc4_:§]!?§ = null;
         var _loc5_:§]!?§ = null;
         if(!this.§5!$§ || !this.§+"1§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§6§(_loc2_,§,!B§.§'!R§);
            _loc3_ = _loc3_.concat(param1.§6§(_loc2_,§,!B§.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§]!m§(_loc2_,§,!B§.§0!L§)) && _loc4_.§2!'§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§]!m§(_loc2_,§,!B§.§3<§)) && _loc5_.§2!'§ > 0)
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
      
      public function §7!K§() : Number
      {
         return this.§+"1§.camera.§7!K§();
      }
      
      public function §+G§(param1:Number) : void
      {
         this.§+"1§.camera.§+G§(param1);
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
      
      public function §,!4§(param1:Boolean) : void
      {
         this.§5!$§ = param1;
      }
      
      public function §8"5§() : Boolean
      {
         return this.§5!$§;
      }
   }
}
