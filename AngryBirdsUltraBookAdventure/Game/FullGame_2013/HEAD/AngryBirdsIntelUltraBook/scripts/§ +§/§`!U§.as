package § +§
{
   import §0!Q§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class §`!U§ extends Event
   {
      
      public static const UI_INTERACTION:String = "onUiInteraction";
      
      {
         var UI_INTERACTION:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && UI_INTERACTION)
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
      
      public function §`!U§(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && eventIndex)
         {
         }
         if(_loc8_ || eventName)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(!(_loc7_ && eventName))
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 super(type,bubbles,cancelable);
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    addr114:
                                    loop8:
                                    while(!(_loc7_ && type))
                                    {
                                       this.eventIndex = eventIndex;
                                       loop9:
                                       for(; _loc8_; loop11:
                                       for(; !(_loc7_ && type); if(!(_loc7_ && type))
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop8;
                                       })
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          this.eventName = eventName;
                                          loop12:
                                          while(true)
                                          {
                                             while(_loc8_)
                                             {
                                                this.component = component;
                                                while(!_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_ || eventName)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue;
                                                      continue;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             continue loop3;
                                          }
                                       })
                                       {
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                                 if(_loc8_ || this)
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
         §§goto(addr111);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return new §`!U§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
