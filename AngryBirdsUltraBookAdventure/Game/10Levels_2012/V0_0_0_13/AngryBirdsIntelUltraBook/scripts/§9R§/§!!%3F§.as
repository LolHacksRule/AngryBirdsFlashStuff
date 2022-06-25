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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && urlLoader)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(_loc5_ || itemIndex)
                     {
                        while(true)
                        {
                           super();
                           addr141:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr105:
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        this.itemIndex = itemIndex;
                        loop9:
                        while(_loc5_)
                        {
                           loop10:
                           while(true)
                           {
                              if(!(_loc5_ || itemIndex))
                              {
                                 continue loop9;
                              }
                              if(_loc6_)
                              {
                                 break;
                              }
                              this.urlLoader = urlLoader;
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop10;
                                    }
                                    addr57:
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       this.urlRequest = urlRequest;
                                       continue;
                                    }
                                    addr117:
                                    while(true)
                                    {
                                       break loop9;
                                       §§goto(addr57);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                        while(_loc5_)
                        {
                           §§goto(addr105);
                        }
                        §§goto(addr144);
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
   }
}
