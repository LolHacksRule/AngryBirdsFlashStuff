package §<<§
{
   import § d§.§'!"§;
   import §#!f§.DisplayObject;
   import §1y§.§&!B§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§4!a§;
   import starling.events.§8W§;
   import starling.events.TouchEvent;
   
   public class §<6§ extends EventDispatcher implements §#!T§
   {
       
      
      protected var §"2§:§'!"§;
      
      private var §0!c§:Boolean = false;
      
      public function §<6§(param1:§'!"§)
      {
         super();
         this.§"2§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§"2§.update(param1,true);
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
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.stage.addEventListener(TouchEvent.§%H§,this.§%U§);
         }
         this.§"2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.stage.removeEventListener(TouchEvent.§%H§,this.§%U§);
         }
         this.§"2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §%U§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§8W§> = null;
         var _loc4_:§8W§ = null;
         var _loc5_:§8W§ = null;
         if(!this.§0!c§ || !this.§"2§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§0Q§(_loc2_,§4!a§.§>!%§);
            _loc3_ = _loc3_.concat(param1.§0Q§(_loc2_,§4!a§.§-c§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§!!&§(_loc2_,§4!a§.§,§)) && _loc4_.§,c§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§!!&§(_loc2_,§4!a§.§#!Y§)) && _loc5_.§,c§ > 0)
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
      
      public function §6m§() : Number
      {
         return this.§"2§.camera.§6m§();
      }
      
      public function §5!f§(param1:Number) : void
      {
         this.§"2§.camera.§5!f§(param1);
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
      
      public function §'!K§(param1:Boolean) : void
      {
         this.§0!c§ = param1;
      }
      
      public function §1g§() : Boolean
      {
         return this.§0!c§;
      }
   }
}
