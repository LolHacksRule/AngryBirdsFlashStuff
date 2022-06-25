package §[i§
{
   import §>!<§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class §&'§ extends Event
   {
      
      public static const UI_INTERACTION:String = "onUiInteraction";
      
      {
         var UI_INTERACTION:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         do
         {
            UI_INTERACTION = "onUiInteraction";
         }
         while(_loc2_);
         
      }
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:UIEventListenerRovio;
      
      public function §&'§(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         if(!(_loc8_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           continue loop3;
                           loop8:
                           for(; _loc7_ || eventIndex; loop10:
                           for(; _loc7_ || eventName; loop11:
                           for(; _loc7_ || eventIndex; if(_loc8_ && type)
                           {
                              continue;
                           },if(_loc8_)
                           {
                              continue loop3;
                           },this.component = component,while(_loc7_)
                           {
                              if(_loc8_)
                              {
                                 continue;
                              }
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr55);
                           },§§goto(addr122))
                           {
                              this.eventName = eventName;
                              loop12:
                              while(true)
                              {
                                 addr55:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop11;
                                    }
                                    continue loop12;
                                 }
                                 continue loop3;
                              }
                           })
                           {
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              addr137:
                              while(true)
                              {
                                 super(type,bubbles,cancelable);
                                 addr122:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       break loop10;
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                           })
                           {
                              while(true)
                              {
                                 this.eventIndex = eventIndex;
                                 continue loop8;
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc8_ && type))
                  {
                     return;
                  }
               }
               if(!(_loc7_ || eventIndex))
               {
                  continue;
               }
               §§goto(addr137);
            }
         }
         §§goto(addr115);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return new §&'§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
