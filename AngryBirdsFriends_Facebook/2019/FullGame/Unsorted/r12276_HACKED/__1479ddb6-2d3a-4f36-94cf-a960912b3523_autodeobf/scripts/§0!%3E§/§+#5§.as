package §0!>§
{
   import §#Z§.DisplayObject;
   import §&§.Starling;
   import §<!S§.§2w§;
   import §<!S§.§?"^§;
   import §<!S§.TouchEvent;
   import §?$#§.§<d§;
   import §?o§.§4#?§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §+#5§ extends EventDispatcher implements §^$D§
   {
       
      
      protected var § 6§:§<d§;
      
      protected var mLevelManager:§4#?§;
      
      private var §`w§:Boolean = false;
      
      public function §+#5§(param1:§<d§, param2:§4#?§)
      {
         super();
         this.§ 6§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§ 6§.update(param1,true);
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
         if(Starling.§%!q§)
         {
            Starling.§%!q§.stage.addEventListener(TouchEvent.§-X§,this.§?#=§);
         }
         this.§ 6§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§%!q§)
         {
            Starling.§%!q§.stage.removeEventListener(TouchEvent.§-X§,this.§?#=§);
         }
         this.§ 6§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §?#=§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?"^§> = null;
         var _loc4_:§?"^§ = null;
         var _loc5_:§?"^§ = null;
         if(!this.§`w§ || !this.§ 6§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§ -§(_loc2_,§2w§.§<#F§);
            _loc3_ = _loc3_.concat(param1.§ -§(_loc2_,§2w§.§3"X§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§+!k§(_loc2_,§2w§.ENDED)) && _loc4_.§>#F§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§+!k§(_loc2_,§2w§.§@$;§)) && _loc5_.§>#F§ > 0)
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
      
      public function §6#'§() : Number
      {
         return this.§ 6§.camera.§6#'§();
      }
      
      public function §"i§(param1:Number) : void
      {
         this.§ 6§.camera.§"i§(param1);
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
      
      public function §"!a§(param1:Boolean) : void
      {
         this.§`w§ = param1;
      }
      
      public function §,"<§() : Boolean
      {
         return this.§`w§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
