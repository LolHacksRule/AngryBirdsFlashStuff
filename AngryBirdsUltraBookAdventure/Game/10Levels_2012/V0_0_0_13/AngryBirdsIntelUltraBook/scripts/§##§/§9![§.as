package §##§
{
   import flash.events.Event;
   
   public class §9![§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
      
      {
         var ON_CLOSE_COMPLETE:Boolean = true;
         var _loc2_:Boolean = false;
         if(ON_CLOSE_COMPLETE)
         {
            do
            {
               ON_CLOSE_COMPLETE = "OnCloseComplete";
            }
            while(_loc2_ && §9![§);
            
         }
      }
      
      private var §5<§:Popup;
      
      public function §9![§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc6_ || popup)
         {
            while(true)
            {
            }
            addr115:
         }
         while(true)
         {
            loop2:
            while(!_loc5_)
            {
               if(_loc6_)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     for(; !_loc5_; if(!(_loc6_ || popup))
                     {
                        continue;
                     },§§goto(addr83))
                     {
                        super(type,bubbles,cancelable);
                        loop5:
                        while(!_loc5_)
                        {
                           loop6:
                           while(true)
                           {
                              this.§5<§ = popup;
                              while(true)
                              {
                                 if(!(_loc5_ && popup))
                                 {
                                    continue loop4;
                                 }
                                 continue loop6;
                                 addr83:
                                 if(_loc6_ || bubbles)
                                 {
                                    if(_loc6_)
                                    {
                                       return;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
               else
               {
                  §§goto(addr115);
               }
            }
         }
      }
      
      public function get popup() : Popup
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         return this.§5<§;
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return new §9![§(type,this.§5<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
