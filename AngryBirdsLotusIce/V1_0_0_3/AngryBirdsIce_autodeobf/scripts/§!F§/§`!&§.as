package §!F§
{
   import §-Z§.§?h§;
   import §[x§.§2^§;
   import §^V§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§ K§;
   import starling.events.§"e§;
   import starling.events.TouchEvent;
   
   public class §`!&§ extends EventDispatcher implements §!h§
   {
       
      
      protected var §1! §:§2^§;
      
      private var §;!,§:Boolean = false;
      
      public function §`!&§(param1:§2^§)
      {
         super();
         this.§1! § = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§1! §.update(param1,true);
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
         if(§?h§.§ n§)
         {
            §?h§.§ n§.stage.addEventListener(TouchEvent.§[<§,this.§&=§);
         }
         this.§1! §.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§?h§.§ n§)
         {
            §?h§.§ n§.stage.removeEventListener(TouchEvent.§[<§,this.§&=§);
         }
         this.§1! §.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §&=§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§ K§> = null;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         if(!this.§;!,§ || !this.§1! §.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§`o§(_loc2_,§"e§.§76§);
            _loc3_ = _loc3_.concat(param1.§`o§(_loc2_,§"e§.§2!7§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§!!?§(_loc2_,§"e§.§"m§)) && _loc4_.§#'§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§!!?§(_loc2_,§"e§.§'D§)) && _loc5_.§#'§ > 0)
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
      
      public function §77§() : Number
      {
         return this.§1! §.camera.§77§();
      }
      
      public function §6X§(param1:Number) : void
      {
         this.§1! §.camera.§6X§(param1);
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
      
      public function §@T§(param1:Boolean) : void
      {
         this.§;!,§ = param1;
      }
      
      public function §=,§() : Boolean
      {
         return this.§;!,§;
      }
   }
}
