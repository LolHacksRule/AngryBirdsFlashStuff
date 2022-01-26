package §"!G§
{
   import §+D§.§5!P§;
   import §>Q§.§5!5§;
   import §[=§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ Y§;
   import starling.events.§9T§;
   import starling.events.TouchEvent;
   
   public class §&_§ extends EventDispatcher implements §^x§
   {
       
      
      protected var §^!4§:§5!P§;
      
      private var §'!"§:Boolean = false;
      
      public function §&_§(param1:§5!P§)
      {
         super();
         this.§^!4§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§^!4§.update(param1,true);
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
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.stage.addEventListener(TouchEvent.§8!!§,this.§7S§);
         }
         this.§^!4§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.stage.removeEventListener(TouchEvent.§8!!§,this.§7S§);
         }
         this.§^!4§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §7S§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§ Y§> = null;
         var _loc4_:§ Y§ = null;
         var _loc5_:§ Y§ = null;
         if(!this.§'!"§ || !this.§^!4§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§7X§(_loc2_,§9T§.§!!d§);
            _loc3_ = _loc3_.concat(param1.§7X§(_loc2_,§9T§.§9,§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§0Z§(_loc2_,§9T§.§"d§)) && _loc4_.§5e§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§0Z§(_loc2_,§9T§.§-0§)) && _loc5_.§5e§ > 0)
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
      
      public function §`u§() : Number
      {
         return this.§^!4§.camera.§`u§();
      }
      
      public function §<K§(param1:Number) : void
      {
         this.§^!4§.camera.§<K§(param1);
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
      
      public function §?e§(param1:Boolean) : void
      {
         this.§'!"§ = param1;
      }
      
      public function §=!V§() : Boolean
      {
         return this.§'!"§;
      }
   }
}
