package §'!%§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §3&§ extends EventDispatcher
   {
       
      
      public var itemIndex:int;
      
      public var itemCount:int;
      
      public var urlLoader:URLLoader;
      
      public var urlRequest:URLRequest;
      
      public function §3&§(itemIndex:int, itemCount:int, urlLoader:URLLoader, urlRequest:URLRequest)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr175:
                     while(true)
                     {
                     }
                     loop5:
                     for(; !(_loc5_ && itemCount); if(_loc6_ || itemCount)
                     {
                        return;
                     })
                     {
                        loop6:
                        while(true)
                        {
                           this.itemCount = itemCount;
                           while(true)
                           {
                              continue loop6;
                              loop10:
                              while(!(_loc5_ && this))
                              {
                                 this.urlLoader = urlLoader;
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop10;
                                    addr73:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop11;
                                       }
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       addr87:
                                       if(_loc6_ || this)
                                       {
                                          continue loop1;
                                       }
                                       addr172:
                                       while(true)
                                       {
                                          super();
                                          continue loop5;
                                          §§goto(addr87);
                                       }
                                       addr42:
                                       if(!(_loc5_ && itemIndex))
                                       {
                                          addr49:
                                          if(_loc5_ && this)
                                          {
                                             while(true)
                                             {
                                                continue loop10;
                                                §§goto(addr49);
                                             }
                                             addr130:
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr172);
      }
   }
}
