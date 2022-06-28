package §-%§
{
   import §!!K§.§else§;
   import §2_§.§'u§;
   import §7!B§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§9!t§;
   import starling.events.TouchEvent;
   import starling.events.§^K§;
   
   public class §+c§ extends EventDispatcher implements §#!J§
   {
       
      
      protected var §#!3§:§'u§;
      
      private var §7_§:Boolean = false;
      
      public function §+c§(param1:§'u§)
      {
         super();
         this.§#!3§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§#!3§.update(param1,true);
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
         if(§else§.§^!A§)
         {
            §else§.§^!A§.stage.addEventListener(TouchEvent.§^!>§,this.§`!D§);
         }
         this.§#!3§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§else§.§^!A§)
         {
            §else§.§^!A§.stage.removeEventListener(TouchEvent.§^!>§,this.§`!D§);
         }
         this.§#!3§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §`!D§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§9!t§> = null;
         var _loc4_:§9!t§ = null;
         var _loc5_:§9!t§ = null;
         if(!this.§7_§ || !this.§#!3§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§-g§(_loc2_,§^K§.§6!A§);
            _loc3_ = _loc3_.concat(param1.§-g§(_loc2_,§^K§.§[!7§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§4!,§(_loc2_,§^K§.§3!p§)) && _loc4_.§8_§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§4!,§(_loc2_,§^K§.§5i§)) && _loc5_.§8_§ > 0)
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
      
      public function §4!U§() : Number
      {
         return this.§#!3§.camera.§4!U§();
      }
      
      public function §5]§(param1:Number) : void
      {
         this.§#!3§.camera.§5]§(param1);
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
      
      public function §76§(param1:Boolean) : void
      {
         this.§7_§ = param1;
      }
      
      public function §7!h§() : Boolean
      {
         return this.§7_§;
      }
   }
}
