package §>!7§
{
   import §&o§.DisplayObject;
   import §6A§.§ !§;
   import §=!0§.§>I§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§7+§;
   import starling.events.§>;§;
   import starling.events.TouchEvent;
   
   public class §!q§ extends EventDispatcher implements §;b§
   {
       
      
      protected var §?V§:§ !§;
      
      private var §`'§:Boolean = false;
      
      public function §!q§(param1:§ !§)
      {
         super();
         this.§?V§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§?V§.update(param1,true);
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
         if(§>I§.§`S§)
         {
            §>I§.§`S§.stage.addEventListener(TouchEvent.§7!4§,this.§2h§);
         }
         this.§?V§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§>I§.§`S§)
         {
            §>I§.§`S§.stage.removeEventListener(TouchEvent.§7!4§,this.§2h§);
         }
         this.§?V§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §2h§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§7+§> = null;
         var _loc4_:§7+§ = null;
         var _loc5_:§7+§ = null;
         if(!this.§`'§ || !this.§?V§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§?!&§(_loc2_,§>;§.§"%§);
            _loc3_ = _loc3_.concat(param1.§?!&§(_loc2_,§>;§.§+S§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#^§(_loc2_,§>;§.§1!@§)) && _loc4_.§?[§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#^§(_loc2_,§>;§.§7!=§)) && _loc5_.§?[§ > 0)
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
      
      public function §[$§() : Number
      {
         return this.§?V§.camera.§[$§();
      }
      
      public function §]!K§(param1:Number) : void
      {
         this.§?V§.camera.§]!K§(param1);
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
      
      public function §4u§(param1:Boolean) : void
      {
         this.§`'§ = param1;
      }
      
      public function §!6§() : Boolean
      {
         return this.§`'§;
      }
   }
}
