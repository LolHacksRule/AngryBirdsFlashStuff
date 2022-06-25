package §#_§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §9k§ extends EventDispatcher
   {
       
      
      public var itemIndex:int;
      
      public var itemCount:int;
      
      public var urlLoader:URLLoader;
      
      public var urlRequest:URLRequest;
      
      public function §9k§(itemIndex:int, itemCount:int, urlLoader:URLLoader, urlRequest:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && itemCount)
         {
         }
         if(!_loc6_)
         {
            while(true)
            {
               while(true)
               {
                  addr137:
                  if(!(_loc5_ || urlLoader))
                  {
                     continue;
                  }
                  this.itemCount = itemCount;
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        this.itemIndex = itemIndex;
                        while(!_loc6_)
                        {
                           while(!_loc6_)
                           {
                              this.urlLoader = urlLoader;
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       addr90:
                                       if(!(_loc5_ || itemIndex))
                                       {
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    while(true)
                                    {
                                       addr151:
                                       while(true)
                                       {
                                          super();
                                          while(true)
                                          {
                                             addr130:
                                             while(!(_loc6_ && itemCount))
                                             {
                                                §§goto(addr137);
                                             }
                                          }
                                       }
                                    }
                                    addr154:
                                 }
                                 §§goto(addr130);
                              }
                              while(true)
                              {
                                 §§goto(addr154);
                                 §§goto(addr90);
                              }
                              while(!(_loc6_ && this))
                              {
                                 if(!(_loc5_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                    §§goto(addr151);
                                 }
                                 else
                                 {
                                    §§goto(addr86);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc5_ || itemIndex))
               {
                  continue;
               }
               this.urlRequest = urlRequest;
               §§goto(addr52);
            }
         }
         §§goto(addr157);
      }
   }
}
