package §!L§
{
   import § !D§.§'"u§;
   import §!#`§.§"$D§;
   import §!#`§.TouchEvent;
   import §!#`§.§^"e§;
   import §!6§.DisplayObject;
   import §"$=§.§'![§;
   import §]"P§.Starling;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class § "+§ extends EventDispatcher implements §@$#§
   {
       
      
      protected var §&!g§:§'"u§;
      
      protected var mLevelManager:§'![§;
      
      private var §!'§:Boolean = false;
      
      public function § "+§(param1:§'"u§, param2:§'![§)
      {
         super();
         this.§&!g§ = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.§&!g§.update(param1,true);
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
         if(Starling.§3!I§)
         {
            Starling.§3!I§.stage.addEventListener(TouchEvent.§`#b§,this.§3$B§);
         }
         this.§&!g§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.§3!I§)
         {
            Starling.§3!I§.stage.removeEventListener(TouchEvent.§`#b§,this.§3$B§);
         }
         this.§&!g§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §3$B§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§^"e§> = null;
         var _loc4_:§^"e§ = null;
         var _loc5_:§^"e§ = null;
         if(!this.§!'§ || !this.§&!g§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§9"%§(_loc2_,§"$D§.§,+§);
            _loc3_ = _loc3_.concat(param1.§9"%§(_loc2_,§"$D§.§^!D§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§!!]§(_loc2_,§"$D§.§!+§)) && _loc4_.§;$-§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§!!]§(_loc2_,§"$D§.§<#B§)) && _loc5_.§;$-§ > 0)
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
      
      public function §1'§() : Number
      {
         return this.§&!g§.camera.§1'§();
      }
      
      public function §9!D§(param1:Number) : void
      {
         this.§&!g§.camera.§9!D§(param1);
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
      
      public function §!H§(param1:Boolean) : void
      {
         this.§!'§ = param1;
      }
      
      public function §60§() : Boolean
      {
         return this.§!'§;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
