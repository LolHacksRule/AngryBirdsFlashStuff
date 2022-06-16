package §70§
{
   import §+!F§.§1!D§;
   import §0!2§.§5"L§;
   import §]!v§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§1&§;
   import starling.events.§9!@§;
   import starling.events.TouchEvent;
   
   public class §[3§ extends EventDispatcher implements §<!j§
   {
       
      
      protected var §^!"§:§5"L§;
      
      private var §"!A§:Boolean = false;
      
      public function §[3§(param1:§5"L§)
      {
         super();
         this.§^!"§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§^!"§.update(param1,true);
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
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.stage.addEventListener(TouchEvent.§+!X§,this.§3S§);
         }
         this.§^!"§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.stage.removeEventListener(TouchEvent.§+!X§,this.§3S§);
         }
         this.§^!"§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3S§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§9!@§> = null;
         var _loc4_:§9!@§ = null;
         var _loc5_:§9!@§ = null;
         if(!this.§"!A§ || !this.§^!"§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§<!L§(_loc2_,§1&§.§+!b§);
            _loc3_ = _loc3_.concat(param1.§<!L§(_loc2_,§1&§.§#"8§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§->§(_loc2_,§1&§.§#m§)) && _loc4_.§3!O§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§->§(_loc2_,§1&§.§3!§)) && _loc5_.§3!O§ > 0)
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
      
      public function §3L§() : Number
      {
         return this.§^!"§.camera.§3L§();
      }
      
      public function §>2§(param1:Number) : void
      {
         this.§^!"§.camera.§>2§(param1);
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
      
      public function §&l§(param1:Boolean) : void
      {
         this.§"!A§ = param1;
      }
      
      public function §-!R§() : Boolean
      {
         return this.§"!A§;
      }
   }
}
