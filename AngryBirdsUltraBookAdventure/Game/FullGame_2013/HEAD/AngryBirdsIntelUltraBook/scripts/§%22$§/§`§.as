package §"$§
{
   import flash.events.Event;
   
   public class §`§ extends Event
   {
      
      public static const ON_CLOSE_COMPLETE:String = "OnCloseComplete";
      
      {
         var ON_CLOSE_COMPLETE:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            do
            {
               ON_CLOSE_COMPLETE = "OnCloseComplete";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §^!'§:Popup;
      
      public function §`§(type:String, popup:Popup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || bubbles)
         {
         }
         if(_loc6_ || bubbles)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(_loc6_)
                     {
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        while(!(_loc5_ && this))
                        {
                           loop7:
                           while(_loc6_ || this)
                           {
                              addr74:
                              if(_loc6_ || this)
                              {
                                 continue loop0;
                              }
                              addr110:
                              while(true)
                              {
                                 super(type,bubbles,cancelable);
                                 break loop7;
                                 §§goto(addr74);
                              }
                              while(!(_loc5_ && type))
                              {
                                 if(!_loc5_)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr110);
         }
      }
      
      public function get popup() : Popup
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         return this.§^!'§;
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return new §`§(type,this.§^!'§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
