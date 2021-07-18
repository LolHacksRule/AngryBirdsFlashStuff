package §3§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9§ extends Sprite
   {
       
      
      public function §9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            while(_loc2_ || this)
            {
               addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
               if(_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            stage.addEventListener(Event.RESIZE,this.onResize);
         }
      }
      
      protected function §?!N§(param1:Event) : void
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
