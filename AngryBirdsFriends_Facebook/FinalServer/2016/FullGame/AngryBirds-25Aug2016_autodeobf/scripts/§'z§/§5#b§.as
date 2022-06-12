package §'z§
{
   import §#v§.§#!?§;
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §?a§.§2#n§;
   import §?a§.§=!U§;
   import §?a§.TouchEvent;
   import §^a§.Starling;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §5#b§ extends EventDispatcher implements §]!T§
   {
       
      
      protected var §,#2§:§#!,§;
      
      protected var mLevelManager:§#!?§;
      
      private var §-"M§:Boolean = false;
      
      public function §5#b§(param1:§#!,§, param2:§#!?§)
      {
         super();
         this.§,#2§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§,#2§.update(param1,true);
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
         if(Starling.§<#`§)
         {
            Starling.§<#`§.stage.addEventListener(TouchEvent.§#q§,this.§=#=§);
         }
         this.§,#2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§<#`§)
         {
            Starling.§<#`§.stage.removeEventListener(TouchEvent.§#q§,this.§=#=§);
         }
         this.§,#2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §=#=§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§=!U§> = null;
         var _loc4_:§=!U§ = null;
         var _loc5_:§=!U§ = null;
         if(!this.§-"M§ || !this.§,#2§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§0b§(_loc2_,§2#n§.§'$!§);
            _loc3_ = _loc3_.concat(param1.§0b§(_loc2_,§2#n§.§9#0§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`[§(_loc2_,§2#n§.§<#D§)) && _loc4_.§,$6§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`[§(_loc2_,§2#n§.§2X§)) && _loc5_.§,$6§ > 0)
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
      
      public function §0!T§() : Number
      {
         return this.§,#2§.camera.§0!T§();
      }
      
      public function §19§(param1:Number) : void
      {
         this.§,#2§.camera.§19§(param1);
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
      
      public function §]"b§(param1:Boolean) : void
      {
         this.§-"M§ = param1;
      }
      
      public function §-#4§() : Boolean
      {
         return this.§-"M§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
