package §2!!§
{
   import §+&§.§-!7§;
   import §9E§.DisplayObject;
   import §@4§.§,!]§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§<Q§;
   import starling.events.§=<§;
   import starling.events.TouchEvent;
   
   public class § !X§ extends EventDispatcher implements §[!A§
   {
       
      
      protected var §+!X§:§-!7§;
      
      private var §0![§:Boolean = false;
      
      public function § !X§(param1:§-!7§)
      {
         super();
         this.§+!X§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§+!X§.update(param1,true);
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
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.stage.addEventListener(TouchEvent.§`!t§,this.§<Z§);
         }
         this.§+!X§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.stage.removeEventListener(TouchEvent.§`!t§,this.§<Z§);
         }
         this.§+!X§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §<Z§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§<Q§> = null;
         var _loc4_:§<Q§ = null;
         var _loc5_:§<Q§ = null;
         if(!this.§0![§ || !this.§+!X§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§0q§(_loc2_,§=<§.§!!x§);
            _loc3_ = _loc3_.concat(param1.§0q§(_loc2_,§=<§.§+!+§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§+?§(_loc2_,§=<§.§<%§)) && _loc4_.§6n§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§+?§(_loc2_,§=<§.§4c§)) && _loc5_.§6n§ > 0)
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
      
      public function §'T§() : Number
      {
         return this.§+!X§.camera.§'T§();
      }
      
      public function §9&§(param1:Number) : void
      {
         this.§+!X§.camera.§9&§(param1);
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
      
      public function §3s§(param1:Boolean) : void
      {
         this.§0![§ = param1;
      }
      
      public function §6!#§() : Boolean
      {
         return this.§0![§;
      }
   }
}
