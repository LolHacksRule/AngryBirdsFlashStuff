package §9R§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §!!?§ extends EventDispatcher
   {
       
      
      public var itemIndex:int;
      
      public var itemCount:int;
      
      public var urlLoader:URLLoader;
      
      public var urlRequest:URLRequest;
      
      public function §!!?§(itemIndex:int, itemCount:int, urlLoader:URLLoader, urlRequest:URLRequest)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && itemIndex)
         {
         }
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr165:
                     while(true)
                     {
                        continue loop0;
                     }
                     loop9:
                     while(_loc6_ || itemCount)
                     {
                        while(true)
                        {
                           this.urlLoader = urlLoader;
                           while(_loc6_ || this)
                           {
                              loop12:
                              while(_loc6_ || this)
                              {
                                 this.urlRequest = urlRequest;
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       addr53:
                                       if(!(_loc6_ || itemCount))
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop12;
                                 }
                                 loop8:
                                 while(_loc6_ || this)
                                 {
                                    addr119:
                                    if(_loc6_ || this)
                                    {
                                       this.itemIndex = itemIndex;
                                       continue loop9;
                                    }
                                    addr150:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.itemCount = itemCount;
                                          break loop8;
                                       }
                                       break;
                                       §§goto(addr119);
                                    }
                                    while(_loc6_)
                                    {
                                       §§goto(addr144);
                                    }
                                    addr144:
                                    continue loop0;
                                    §§goto(addr53);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr112);
                                 }
                                 addr112:
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
