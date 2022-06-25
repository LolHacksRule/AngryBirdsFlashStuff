package §>!"§
{
   import flash.events.Event;
   
   public class §>f§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
      
      {
         var ON_CLOSE_COMPLETE:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            do
            {
               ON_CLOSE_COMPLETE = "OnCloseComplete";
            }
            while(ON_CLOSE_COMPLETE);
            
         }
      }
      
      private var §?!+§:Popup;
      
      public function §>f§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && popup)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               addr117:
               while(true)
               {
               }
               addr41:
               if(!(_loc6_ && type))
               {
                  return;
               }
            }
         }
         loop2:
         while(true)
         {
            while(true)
            {
               loop4:
               while(_loc5_)
               {
                  super(type,bubbles,cancelable);
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           this.§?!+§ = popup;
                           continue;
                        }
                        continue loop4;
                     }
                     §§goto(addr117);
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
      }
      
      public function get popup() : Popup
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         return this.§?!+§;
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return new §>f§(type,this.§?!+§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
