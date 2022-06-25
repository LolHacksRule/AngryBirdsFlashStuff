package §"!i§
{
   import § 3§.FacebookUserProgress;
   import §&"§.ExternalInterfaceHandler;
   import §&e§.FriendsDataCache;
   import §5=§.§8O§;
   import §^!7§.§+!I§;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class InitDataLoader
   {
      
      private static var sLoader:§[!<§;
      
      private static var sData:Object;
      
      private static var sError:String = "";
      
      private static var sErrorCode:int = 0;
      
      {
         var sLoader:Boolean = false;
         var sData:Boolean = true;
         if(!sLoader)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; sData || InitDataLoader; if(sData || sLoader)
                  {
                     addr59:
                     return;
                  })
                  {
                     if(!sData)
                     {
                        continue loop0;
                     }
                     sError = "";
                     loop3:
                     while(true)
                     {
                        addr62:
                        while(true)
                        {
                           sErrorCode = 0;
                           if(!sLoader)
                           {
                              if(sData)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr59);
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function InitDataLoader()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            while(!(_loc2_ || this))
            {
            }
         }
         while(_loc1_);
         
      }
      
      public static function load(facebookUserId:String, accessToken:String, expiresInSeconds:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
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
                     addr309:
                     while(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(_loc5_ && InitDataLoader)
                  {
                     continue loop0;
                  }
                  §§goto(addr256);
               }
            }
         }
         §§goto(addr297);
      }
      
      protected static function §`3§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && e)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(§§findproperty(sError));
                  §§push("Can\'t contact server.\n");
                  if(_loc3_)
                  {
                     §§push(§§pop() + e.toString());
                  }
                  §§pop().sError = §§pop();
                  loop2:
                  while(_loc3_ || _loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           sLoader = null;
                           while(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private static function §5f§(e:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc5_ && _loc3_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr156:
            while(true)
            {
               §§push(§§pop());
               addr157:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr158:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function get §#]§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         §§push(sLoader == null);
         if(_loc1_ || InitDataLoader)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return sData;
      }
      
      public static function §=J§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return sError;
      }
      
      public static function §2!§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return sErrorCode;
      }
   }
}
