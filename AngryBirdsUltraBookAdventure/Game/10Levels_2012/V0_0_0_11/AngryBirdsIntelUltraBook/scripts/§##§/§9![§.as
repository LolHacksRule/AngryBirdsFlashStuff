package §##§
{
   import flash.events.Event;
   
   public class §9![§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
      
      {
         var ON_CLOSE_COMPLETE:Boolean = false;
         var _loc2_:Boolean = true;
         if(ON_CLOSE_COMPLETE)
         {
         }
         do
         {
            ON_CLOSE_COMPLETE = "OnCloseComplete";
         }
         while(ON_CLOSE_COMPLETE);
         
      }
      
      private var §5<§:Popup;
      
      public function §9![§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!(_loc6_ && bubbles))
         {
            loop0:
            while(true)
            {
               addr117:
               while(true)
               {
                  addr114:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get popup() : Popup
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         return this.§5<§;
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return new §9![§(type,this.§5<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
