package §?"6§
{
   import § "-§.§6!R§;
   import §"§.§;!E§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §null §.§5#§;
   import starling.events.§"!j§;
   import starling.events.TouchEvent;
   import starling.events.§][§;
   import §use§.DisplayObject;
   
   public class § !^§ extends EventDispatcher implements §@A§
   {
       
      
      protected var §+!E§:§;!E§;
      
      protected var §'""§:§5#§;
      
      private var §99§:Boolean = false;
      
      public function § !^§(param1:§;!E§, param2:§5#§)
      {
         super();
         this.§+!E§ = param1;
         this.§'""§ = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§+!E§.update(param1,true);
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
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.stage.addEventListener(TouchEvent.§["i§,this.§3"+§);
         }
         this.§+!E§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.stage.removeEventListener(TouchEvent.§["i§,this.§3"+§);
         }
         this.§+!E§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3"+§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§"!j§> = null;
         var _loc4_:§"!j§ = null;
         var _loc5_:§"!j§ = null;
         if(!this.§99§ || !this.§+!E§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§]'§(_loc2_,§][§.§&"<§);
            _loc3_ = _loc3_.concat(param1.§]'§(_loc2_,§][§.§+"@§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§-;§(_loc2_,§][§.§""%§)) && _loc4_.§4!P§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§-;§(_loc2_,§][§.§0"+§)) && _loc5_.§4!P§ > 0)
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
      
      public function §&y§() : Number
      {
         return this.§+!E§.camera.§&y§();
      }
      
      public function §<#§(param1:Number) : void
      {
         this.§+!E§.camera.§<#§(param1);
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
      
      public function §@-§(param1:Boolean) : void
      {
         this.§99§ = param1;
      }
      
      public function § !&§() : Boolean
      {
         return this.§99§;
      }
   }
}
