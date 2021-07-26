package §6#h§
{
   import §"#k§.Starling;
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,$&§.§-"E§;
   import §,$&§.§4"i§;
   import §,$&§.TouchEvent;
   import §7#$§.§]#q§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §]!E§ extends EventDispatcher implements §]!d§
   {
       
      
      protected var §9!E§:§8#3§;
      
      protected var mLevelManager:§]#q§;
      
      private var §%"i§:Boolean = false;
      
      public function §]!E§(param1:§8#3§, param2:§]#q§)
      {
         super();
         this.§9!E§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§9!E§.update(param1,true);
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
         if(Starling.§4$#§)
         {
            Starling.§4$#§.stage.addEventListener(TouchEvent.§"x§,this.§ !c§);
         }
         this.§9!E§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§4$#§)
         {
            Starling.§4$#§.stage.removeEventListener(TouchEvent.§"x§,this.§ !c§);
         }
         this.§9!E§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function § !c§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§4"i§> = null;
         var _loc4_:§4"i§ = null;
         var _loc5_:§4"i§ = null;
         if(!this.§%"i§ || !this.§9!E§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§+"E§(_loc2_,§-"E§.§"E§);
            _loc3_ = _loc3_.concat(param1.§+"E§(_loc2_,§-"E§.§]!D§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§]!v§(_loc2_,§-"E§.ENDED)) && _loc4_.§5-§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§]!v§(_loc2_,§-"E§.§@"Y§)) && _loc5_.§5-§ > 0)
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
      
      public function §<!o§() : Number
      {
         return this.§9!E§.camera.§<!o§();
      }
      
      public function §6"0§(param1:Number) : void
      {
         this.§9!E§.camera.§6"0§(param1);
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
      
      public function §+"<§(param1:Boolean) : void
      {
         this.§%"i§ = param1;
      }
      
      public function §;"g§() : Boolean
      {
         return this.§%"i§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
