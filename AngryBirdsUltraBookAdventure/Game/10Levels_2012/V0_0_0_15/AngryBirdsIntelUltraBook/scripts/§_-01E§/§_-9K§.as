package §_-01E§
{
   import §_-9X§.§_-qS§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-ur§;
   import §_-Y8§.§_-05J§;
   import §_-eS§.§_-4E§;
   import §_-mh§.§_-09d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §_-9K§
   {
      
      private static var §_-01p§:§_-ur§;
      
      private static var §_-0Cx§:Object;
      
      private static var §_-0-H§:String = "";
      
      private static var §_-31§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-0-H§ = "";
         }
         do
         {
            §_-31§ = 0;
         }
         while(_loc2_ && §_-9K§);
         
      }
      
      public function §_-9K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §_-01p§ = new §_-ur§();
            loop0:
            while(true)
            {
               §§push(§_-01p§);
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  continue loop0;
                  loop6:
                  for(; !(_loc4_ && param2); if(!(_loc5_ || param3))
                  {
                     continue;
                  },§§pop().load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/init")),if(_loc5_ || param3)
                  {
                     addr56:
                     if(_loc5_ || §_-9K§)
                     {
                        addr25:
                        return;
                     }
                     continue loop7;
                  },§§goto(addr162))
                  {
                     §§pop().addEventListener(IOErrorEvent.IO_ERROR,§_-cs§);
                     while(true)
                     {
                        §§push(§_-01p§);
                        loop8:
                        while(!_loc4_)
                        {
                           §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§_-cs§);
                           do
                           {
                              if(param1)
                              {
                                 if(_loc4_ && §_-9K§)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§_-01p§);
                              }
                              else
                              {
                                 §§push(§_-01p§);
                                 if(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                              }
                              if(!_loc5_)
                              {
                                 continue loop8;
                              }
                              §§push(§_-P-§);
                              §§push(AngryBirdsFP11.§_-08Q§ + "/init/");
                              if(_loc5_)
                              {
                                 §§push(param1);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || param1)
                                    {
                                       §§push("/");
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(param2);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push("/");
                                                   if(_loc5_)
                                                   {
                                                      addr132:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         addr153:
                                                         §§push(§§pop() + param3);
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr149:
                                                            §§push("/");
                                                         }
                                                         §§pop().load(§§pop().§_-0Ak§(§§pop() + (new Date().timezoneOffset / 60).toString()));
                                                         continue;
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr132);
                                    }
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr149);
                           }
                           while(_loc4_ && param1);
                           
                           if(!(_loc4_ && §_-9K§))
                           {
                              §§goto(addr25);
                           }
                           addr216:
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                        addr212:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§_-0V§);
                           §§goto(addr216);
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr212);
         }
      }
      
      protected static function §_-cs§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§findproperty(§_-0-H§));
            §§push("Can\'t contact server.\n");
            if(!_loc3_)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§_-0-H§ = §§pop();
         }
         do
         {
            §_-01p§ = null;
         }
         while(_loc3_);
         
      }
      
      private static function §_-0V§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        if(_loc6_ && §_-9K§)
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           for(; _loc5_; if(_loc6_ && param1)
                           {
                              continue;
                           },§§push(String(§_-01p§.data)),if(_loc6_ && _loc2_)
                           {
                              continue loop2;
                           },§§pop().§§slot[3] = §§pop(),if(!_loc5_)
                           {
                              §§goto(addr62);
                           },if(_loc6_)
                           {
                              continue loop5;
                           },if(false)
                           {
                              §§goto(addr51);
                           }
                           else
                           {
                              try
                              {
                                 §_-0Cx§ = JSON.parse(serverResponse);
                                 if(!_loc6_)
                                 {
                                    if(§_-0Cx§.error)
                                    {
                                       addr140:
                                       §§push(§§findproperty(§_-0-H§));
                                       §§push("Server error of type \'");
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() + §_-0Cx§.type);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(§§pop() + "\':\n");
                                             if(!_loc5_)
                                             {
                                             }
                                             addr166:
                                             §§pop().§_-0-H§ = §§pop();
                                             if(_loc5_)
                                             {
                                                addr121:
                                                if(§_-0Cx§.type == "OAuthException")
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §_-31§ = §_-4E§.§_-T§;
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr106:
                                                            §§push(§§newactivation());
                                                            if(_loc5_ || §_-9K§)
                                                            {
                                                               §§pop().§§slot[2] = true;
                                                               addr277:
                                                               if(_loc5_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr121);
                                                                  }
                                                                  addr227:
                                                                  §§push(§§newactivation());
                                                                  addr170:
                                                               }
                                                               if(false)
                                                               {
                                                                  addr279:
                                                                  if(§_-0Cx§.user.ap == true)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr294:
                                                                           §_-05J§.§_-0At§("doAdParlorConversion");
                                                                           addr297:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr249:
                                                                              §_-rG§.§_-1J§(§_-0Cx§.friends);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(!(_loc6_ && §_-9K§))
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§push(§_-xz§.§_-3S§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().§_-JD§(§_-0Cx§.deauthorizedUserIds);
                                                                                          if(§_-0Cx§.user.name != null)
                                                                                          {
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          addr306:
                                                                                          throw new Error("User name cannot be null");
                                                                                          addr321:
                                                                                       }
                                                                                       addr325:
                                                                                       §§pop().§_-Hd§(§_-0Cx§.excludedUserIds);
                                                                                       addr328:
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           §§goto(addr321);
                                                                        }
                                                                        §§goto(addr325);
                                                                        §§push(§_-xz§.§_-3S§);
                                                                        addr352:
                                                                     }
                                                                     addr404:
                                                                     return;
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               var _loc3_:* = 0;
                                                               if(!_loc6_)
                                                               {
                                                                  var _loc4_:* = §_-0Cx§.requests.brags;
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                  }
                                                                  addr395:
                                                                  for each(bragObject in _loc4_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §_-05J§.§_-0At§("flashDeleteRequest",bragObject.r);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  addr401:
                                                                  §_-01p§ = null;
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            if(!§§pop().§§slot[2])
                                                            {
                                                               if(!(_loc6_ && §_-9K§))
                                                               {
                                                                  §_-qS§.§_-067§(§_-0Cx§.friends);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     (AngryBirdsFP11.sUserProgress as §_-09d§).§_-mg§(§_-0Cx§.state as Array,§_-0Cx§.user.name,§_-0Cx§.user.avatar,§_-0Cx§.user.userId,§_-0Cx§.eggs,§_-0Cx§.user.tutorials);
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr401);
                                                            addr136:
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr106);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§push(§§pop() + §_-0Cx§.message);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr136);
                              }
                              catch(e:Error)
                              {
                                 _loc3_ = e;
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§findproperty(§_-0-H§));
                                    §§push("Invalid server response. Expected a json string but got this:\n");
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + serverResponse);
                                    }
                                    §§pop().§_-0-H§ = §§pop();
                                    addr210:
                                    §_-31§ = §_-4E§.§_-ju§;
                                    addr224:
                                 }
                                 var threwError:Boolean = true;
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr210);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr224);
                                 }
                                 addr215:
                                 §§goto(addr215);
                              }
                              §§goto(addr227);
                           })
                           {
                              §§pop().§§slot[1] = param1;
                              loop7:
                              while(true)
                              {
                                 addr51:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop0;
                                 }
                                 addr62:
                                 continue loop5;
                                 addr62:
                                 while(true)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop0;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function get §_-Er§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§_-01p§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §_-0Cx§;
      }
      
      public static function §_-00E§() : String
      {
         return §_-0-H§;
      }
      
      public static function §_-If§() : int
      {
         return §_-31§;
      }
   }
}
