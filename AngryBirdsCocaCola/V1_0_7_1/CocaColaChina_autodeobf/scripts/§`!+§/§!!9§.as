package §`!+§
{
   import § F§.§3!&§;
   import §,!Q§.DisplayObject;
   import §4A§.§&_§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§!!S§;
   import starling.events.§&!7§;
   import starling.events.TouchEvent;
   
   public class §!!9§ extends EventDispatcher implements §]!"§
   {
       
      
      protected var mLevelMain:§&_§;
      
      private var §>m§:Boolean = false;
      
      public function §!!9§(param1:§&_§)
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
         if(§3!&§.§<1§)
         {
            §3!&§.§<1§.stage.addEventListener(TouchEvent.§8X§,this.§<!K§);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§3!&§.§<1§)
         {
            §3!&§.§<1§.stage.removeEventListener(TouchEvent.§8X§,this.§<!K§);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §<!K§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§&!7§> = null;
         var _loc4_:§&!7§ = null;
         var _loc5_:§&!7§ = null;
         if(!this.§>m§ || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§;0§(_loc2_,§!!S§.§9!K§);
            _loc3_ = _loc3_.concat(param1.§;0§(_loc2_,§!!S§.§54§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§6!X§(_loc2_,§!!S§.§3§)) && _loc4_.§'i§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§6!X§(_loc2_,§!!S§.§,![§)) && _loc5_.§'i§ > 0)
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
      
      public function §>L§() : Number
      {
         return this.mLevelMain.camera.§>L§();
      }
      
      public function §]!8§(param1:Number) : void
      {
         this.mLevelMain.camera.§]!8§(param1);
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
      
      public function §4!M§(param1:Boolean) : void
      {
         this.§>m§ = param1;
      }
      
      public function §2Q§() : Boolean
      {
         return this.§>m§;
      }
   }
}
