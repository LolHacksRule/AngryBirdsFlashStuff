package §'!N§
{
   import §0@§.DisplayObject;
   import §55§.§>![§;
   import §each §.§'!3§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§5!K§;
   import starling.events.TouchEvent;
   import starling.events.§^!$§;
   
   public class §!!W§ extends EventDispatcher implements §9!;§
   {
       
      
      protected var mLevelMain:§>![§;
      
      private var §1n§:Boolean = false;
      
      public function §!!W§(param1:§>![§)
      {
         super();
         this.mLevelMain = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.mLevelMain.update(param1,true);
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
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.stage.addEventListener(TouchEvent.§&!5§,this.§^!A§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.stage.removeEventListener(TouchEvent.§&!5§,this.§^!A§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §^!A§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§^!$§> = null;
         var _loc4_:§^!$§ = null;
         var _loc5_:§^!$§ = null;
         if(!this.§1n§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§?!_§(_loc2_,§5!K§.§5`§);
            _loc3_ = _loc3_.concat(param1.§?!_§(_loc2_,§5!K§.§<!@§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§`^§(_loc2_,§5!K§.§#%§)) && _loc4_.§^!#§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§`^§(_loc2_,§5!K§.§[g§)) && _loc5_.§^!#§ > 0)
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
      
      public function §,!R§() : Number
      {
         return this.mLevelMain.camera.§,!R§();
      }
      
      public function §<!K§(param1:Number) : void
      {
         this.mLevelMain.camera.§<!K§(param1);
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
      
      public function §9!p§(param1:Boolean) : void
      {
         this.§1n§ = param1;
      }
      
      public function §+!-§() : Boolean
      {
         return this.§1n§;
      }
   }
}
