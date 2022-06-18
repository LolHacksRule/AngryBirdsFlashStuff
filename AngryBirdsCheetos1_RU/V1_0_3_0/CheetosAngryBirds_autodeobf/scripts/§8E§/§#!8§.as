package §8E§
{
   import §9!a§.DisplayObject;
   import §9T§.§=!^§;
   import §>N§.§"u§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§'S§;
   import starling.events.§31§;
   import starling.events.TouchEvent;
   
   public class §#!8§ extends EventDispatcher implements §%!0§
   {
       
      
      protected var §&?§:§=!^§;
      
      private var §0!G§:Boolean = false;
      
      public function §#!8§(param1:§=!^§)
      {
         super();
         this.§&?§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§&?§.update(param1,true);
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
         if(§"u§.§-2§)
         {
            §"u§.§-2§.stage.addEventListener(TouchEvent.§<d§,this.§@%§);
         }
         this.§&?§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§"u§.§-2§)
         {
            §"u§.§-2§.stage.removeEventListener(TouchEvent.§<d§,this.§@%§);
         }
         this.§&?§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §@%§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§31§> = null;
         var _loc4_:§31§ = null;
         var _loc5_:§31§ = null;
         if(!this.§0!G§ || !this.§&?§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§[!8§(_loc2_,§'S§.§@!_§);
            _loc3_ = _loc3_.concat(param1.§[!8§(_loc2_,§'S§.§>8§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§6g§(_loc2_,§'S§.§"3§)) && _loc4_.§]!4§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§6g§(_loc2_,§'S§.§=n§)) && _loc5_.§]!4§ > 0)
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
      
      public function §5s§() : Number
      {
         return this.§&?§.camera.§5s§();
      }
      
      public function §+G§(param1:Number) : void
      {
         this.§&?§.camera.§+G§(param1);
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
      
      public function §"M§(param1:Boolean) : void
      {
         this.§0!G§ = param1;
      }
      
      public function §,!,§() : Boolean
      {
         return this.§0!G§;
      }
   }
}
