package §4[§
{
   import §&!h§.§4!<§;
   import §&9§.§1?§;
   import §'H§.§9!f§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §5!3§.§#!B§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §3q§
   {
      
      private static var §0!a§:§"!m§;
      
      private static var §,<§:Object;
      
      private static var §else§:String = "";
      
      private static var §^D§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §else§ = "";
            do
            {
               §^D§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      public function §3q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §3q§)
         {
            §0!a§ = new §"!m§();
            while(true)
            {
               §§push(§0!a§);
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  while(true)
                  {
                     §§push(§0!a§);
                     loop3:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,§^!J§);
                        addr238:
                        while(true)
                        {
                           §§push(§0!a§);
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  §§pop().load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/init"));
                  if(!(_loc4_ && param3))
                  {
                     if(!(_loc5_ || param2))
                     {
                        addr74:
                        if(!(_loc4_ && param3))
                        {
                           addr82:
                           §§push(§0!a§);
                           if(!_loc4_)
                           {
                              §§push(§]!X§);
                              §§push(AngryBirdsFP11.§6S§ + "/init/");
                              if(_loc5_ || param2)
                              {
                                 §§push(param1);
                                 if(_loc5_ || param2)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || param2)
                                    {
                                       addr122:
                                       §§push("/");
                                       if(_loc5_ || param3)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc4_ && param2))
                                          {
                                             §§push(param2);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc5_ || §3q§)
                                                {
                                                   addr154:
                                                   §§push("/");
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc5_)
                                                      {
                                                         addr161:
                                                         §§push(§§pop() + param3);
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            addr170:
                                                            §§push(§§pop() + "/");
                                                            if(!(_loc4_ && param3))
                                                            {
                                                               addr178:
                                                               §§push(§§pop() + (new Date().timezoneOffset / 60).toString());
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§pop().load(§§pop().§#l§(§§pop()));
                                                §§goto(addr187);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr122);
                           }
                           while(true)
                           {
                              §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§"!v§);
                           }
                           §§goto(addr25);
                           addr199:
                        }
                        while(!_loc4_)
                        {
                           if(!param1)
                           {
                              §§push(§0!a§);
                              if(_loc5_)
                              {
                                 §§goto(addr35);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr187);
               }
            }
         }
         while(true)
         {
            §§goto(addr199);
         }
         §§goto(addr196);
      }
      
      protected static function §"!v§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§§findproperty(§else§));
            §§push("Can\'t contact server.\n");
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§else§ = §§pop();
         }
         do
         {
            §0!a§ = null;
         }
         while(_loc2_ && param1);
         
      }
      
      private static function §^!J§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(!_loc5_)
                     {
                        §§push(null);
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[1] = param1;
                              loop7:
                              while(!_loc5_)
                              {
                                 do
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§§slot[2] = false;
                                       addr61:
                                       while(true)
                                       {
                                          if(!(_loc5_ && §3q§))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && param1))
                                             {
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 while(false);
                                 
                                 try
                                 {
                                    §,<§ = JSON.parse(serverResponse);
                                    if(_loc6_ || §3q§)
                                    {
                                       if(§,<§.error)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(§§findproperty(§else§));
                                             §§push("Server error of type \'");
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(§§pop() + §,<§.type);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + "\':\n");
                                                   if(!(_loc5_ && §3q§))
                                                   {
                                                      §§push(§§pop() + §,<§.message);
                                                   }
                                                }
                                             }
                                             §§pop().§else§ = §§pop();
                                             if(!_loc5_)
                                             {
                                                addr119:
                                                if(§,<§.type == "OAuthException")
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §^D§ = §4!<§.§7!1§;
                                                      addr135:
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   §§pop().§§slot[2] = true;
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr119);
                                                         }
                                                         addr239:
                                                         if(!threwError)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               addr248:
                                                               §#!B§.§&?§(§,<§.friends);
                                                               if(_loc6_)
                                                               {
                                                                  (AngryBirdsFP11.sUserProgress as §9!f§).§<v§(§,<§.state as Array,§,<§.user.name,§,<§.user.avatar,§,<§.user.userId,§,<§.eggs,§,<§.user.tutorials);
                                                                  §§goto(addr343);
                                                               }
                                                            }
                                                            addr278:
                                                            §1?§.§>!X§("doAdParlorConversion");
                                                            §[!m§.§2!]§(§,<§.friends);
                                                            addr281:
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        addr268:
                                                                        if(§,<§.user.ap == true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr278);
                                                                              }
                                                                              addr317:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§8!g§.§^Z§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§pop().§8!6§(§,<§.deauthorizedUserIds);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(§,<§.user.name != null)
                                                                                       {
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                                 addr314:
                                                                                 §§pop().§"!P§(§,<§.excludedUserIds);
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr314);
                                                                              §§push(§8!g§.§^Z§);
                                                                              addr343:
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     var _loc3_:* = 0;
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        var _loc4_:* = §,<§.requests.brags;
                                                                        if(_loc5_ && §3q§)
                                                                        {
                                                                        }
                                                                        addr391:
                                                                        for each(bragObject in _loc4_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §1?§.§>!X§("flashDeleteRequest",bragObject.r);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr397:
                                                                        §0!a§ = null;
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr397);
                                                         addr176:
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   addr400:
                                                   return;
                                                }
                                                §§goto(addr239);
                                             }
                                             addr288:
                                             throw new Error("User name cannot be null");
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 catch(e:Error)
                                 {
                                    _loc3_ = e;
                                    if(_loc6_)
                                    {
                                       §§push(§§findproperty(§else§));
                                       §§push("Invalid server response. Expected a json string but got this:\n");
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() + serverResponse);
                                       }
                                       §§pop().§else§ = §§pop();
                                       addr209:
                                       §^D§ = §4!<§.§ 5§;
                                       if(_loc5_ && _loc3_)
                                       {
                                       }
                                       addr235:
                                       §§goto(addr235);
                                    }
                                    var threwError:Boolean = true;
                                    if(_loc6_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr209);
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr278);
                              }
                              continue loop5;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function get §6j§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§0!a§ == null);
         if(_loc1_ || §3q§)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §,<§;
      }
      
      public static function §]!M§() : String
      {
         return §else§;
      }
      
      public static function §?s§() : int
      {
         return §^D§;
      }
   }
}
