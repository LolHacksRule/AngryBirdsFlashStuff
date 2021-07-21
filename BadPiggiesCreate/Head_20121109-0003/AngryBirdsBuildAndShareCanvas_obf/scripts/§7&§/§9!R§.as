package §7&§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9!R§ extends Sprite
   {
       
      
      public function §9!R§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            while(_loc1_ || _loc2_)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public function update(param1:int) : void
      {
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            stage.addEventListener(Event.RESIZE,this.onResize);
         }
      }
      
      protected function §8!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            stage.removeEventListener(Event.RESIZE,this.onResize);
         }
      }
      
      protected function onResize(param1:Event) : void
      {
      }
   }
}
