package §+_§
{
   import §,!,§.§2t§;
   import §90§.DisplayObject;
   import §`!4§.§6l§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§#!<§;
   import starling.events.§=5§;
   import starling.events.TouchEvent;
   
   public class §+3§ extends EventDispatcher implements §2!'§
   {
       
      
      protected var §#J§:§6l§;
      
      private var §&!'§:Boolean = false;
      
      public function §+3§(param1:§6l§)
      {
         super();
         this.§#J§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§#J§.update(param1,true);
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
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.stage.addEventListener(TouchEvent.§,u§,this.§4&§);
         }
         this.§#J§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.stage.removeEventListener(TouchEvent.§,u§,this.§4&§);
         }
         this.§#J§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §4&§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§#!<§> = null;
         var _loc4_:§#!<§ = null;
         var _loc5_:§#!<§ = null;
         if(!this.§&!'§ || !this.§#J§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§!z§(_loc2_,§=5§.§]$§);
            _loc3_ = _loc3_.concat(param1.§!z§(_loc2_,§=5§.§%V§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§5E§(_loc2_,§=5§.§'!$§)) && _loc4_.§1!A§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§5E§(_loc2_,§=5§.§!o§)) && _loc5_.§1!A§ > 0)
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
      
      public function §+z§() : Number
      {
         return this.§#J§.camera.§+z§();
      }
      
      public function §@!!§(param1:Number) : void
      {
         this.§#J§.camera.§@!!§(param1);
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
      
      public function §;E§(param1:Boolean) : void
      {
         this.§&!'§ = param1;
      }
      
      public function § c§() : Boolean
      {
         return this.§&!'§;
      }
   }
}
