package § M§
{
   import §'4§.§^g§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§7M§;
   import starling.events.§@M§;
   import starling.events.TouchEvent;
   
   public class §;!!§ extends EventDispatcher implements §`"B§
   {
       
      
      protected var §?>§:§^g§;
      
      protected var §6u§:§9"!§;
      
      private var §;!K§:Boolean = false;
      
      public function §;!!§(param1:§^g§, param2:§9"!§)
      {
         super();
         this.§?>§ = param1;
         this.§6u§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§?>§.update(param1,true);
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
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.stage.addEventListener(TouchEvent.§1!X§,this.§&"9§);
         }
         this.§?>§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.stage.removeEventListener(TouchEvent.§1!X§,this.§&"9§);
         }
         this.§?>§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §&"9§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§7M§> = null;
         var _loc4_:§7M§ = null;
         var _loc5_:§7M§ = null;
         if(!this.§;!K§ || !this.§?>§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§4!V§(_loc2_,§@M§.§[!c§);
            _loc3_ = _loc3_.concat(param1.§4!V§(_loc2_,§@M§.§2"@§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§#0§(_loc2_,§@M§.§2_§)) && _loc4_.§@"G§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§#0§(_loc2_,§@M§.§>!A§)) && _loc5_.§@"G§ > 0)
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
      
      public function §=U§() : Number
      {
         return this.§?>§.camera.§=U§();
      }
      
      public function §&"0§(param1:Number) : void
      {
         this.§?>§.camera.§&"0§(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §]W§(param1:Boolean) : void
      {
         this.§;!K§ = param1;
      }
      
      public function §3!E§() : Boolean
      {
         return this.§;!K§;
      }
   }
}
