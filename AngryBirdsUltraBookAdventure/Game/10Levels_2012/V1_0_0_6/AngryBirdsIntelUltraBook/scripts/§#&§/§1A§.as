package §#&§
{
   import §,!§.§![§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §;!o§.§>!l§;
   import §;0§.§7;§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §1A§
   {
      
      private static var §]!"§:§7^§;
      
      private static var §^!s§:Object;
      
      private static var §3y§:String = "";
      
      private static var §5X§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3y§ = "";
            do
            {
               §5X§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      public function §1A§()
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
         if(_loc5_ || §1A§)
         {
            §]!"§ = new §7^§();
            while(true)
            {
               §§push(§]!"§);
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  while(true)
                  {
                     §§push(§]!"§);
                     loop3:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,§,r§);
                        addr238:
                        while(true)
                        {
                           §§push(§]!"§);
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  §§pop().load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/init"));
                  if(!(_loc4_ && param3))
                  {
                     if(!(_loc5_ || param2))
                     {
                        addr74:
                        if(!(_loc4_ && param3))
                        {
                           addr82:
                           §§push(§]!"§);
                           if(!_loc4_)
                           {
                              §§push(§+!p§);
                              §§push(AngryBirdsFP11.§;!1§ + "/init/");
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
                                                if(_loc5_ || §1A§)
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
                                                §§pop().load(§§pop().§`;§(§§pop()));
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
                              §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!_§);
                           }
                           §§goto(addr25);
                           addr199:
                        }
                        while(!_loc4_)
                        {
                           if(!param1)
                           {
                              §§push(§]!"§);
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
      
      protected static function §6!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§§findproperty(§3y§));
            §§push("Can\'t contact server.\n");
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§3y§ = §§pop();
         }
         do
         {
            §]!"§ = null;
         }
         while(_loc2_ && param1);
         
      }
      
      private static function §,r§(param1:Event) : void
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
                                          if(!(_loc5_ && §1A§))
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
                                    §^!s§ = JSON.parse(serverResponse);
                                    if(_loc6_ || §1A§)
                                    {
                                       if(§^!s§.error)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(§§findproperty(§3y§));
                                             §§push("Server error of type \'");
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(§§pop() + §^!s§.type);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + "\':\n");
                                                   if(!(_loc5_ && §1A§))
                                                   {
                                                      §§push(§§pop() + §^!s§.message);
                                                   }
                                                }
                                             }
                                             §§pop().§3y§ = §§pop();
                                             if(!_loc5_)
                                             {
                                                addr119:
                                                if(§^!s§.type == "OAuthException")
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §5X§ = §&!$§.§@+§;
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
                                                               §7;§.§??§(§^!s§.friends);
                                                               if(_loc6_)
                                                               {
                                                                  (AngryBirdsFP11.sUserProgress as §![§).§!!h§(§^!s§.state as Array,§^!s§.user.name,§^!s§.user.avatar,§^!s§.user.userId,§^!s§.eggs,§^!s§.user.tutorials);
                                                                  §§goto(addr343);
                                                               }
                                                            }
                                                            addr278:
                                                            §>!l§.§ a§("doAdParlorConversion");
                                                            §[!P§.§'!F§(§^!s§.friends);
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
                                                                        if(§^!s§.user.ap == true)
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
                                                                                 §§push(§+!@§.§7!j§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§pop().§@!$§(§^!s§.deauthorizedUserIds);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(§^!s§.user.name != null)
                                                                                       {
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                                 addr314:
                                                                                 §§pop().§6t§(§^!s§.excludedUserIds);
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr314);
                                                                              §§push(§+!@§.§7!j§);
                                                                              addr343:
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     var _loc3_:* = 0;
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        var _loc4_:* = §^!s§.requests.brags;
                                                                        if(_loc5_ && §1A§)
                                                                        {
                                                                        }
                                                                        addr391:
                                                                        for each(bragObject in _loc4_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §>!l§.§ a§("flashDeleteRequest",bragObject.r);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr397:
                                                                        §]!"§ = null;
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
                                       §§push(§§findproperty(§3y§));
                                       §§push("Invalid server response. Expected a json string but got this:\n");
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() + serverResponse);
                                       }
                                       §§pop().§3y§ = §§pop();
                                       addr209:
                                       §5X§ = §&!$§.§1!`§;
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
      
      public static function get §@B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§]!"§ == null);
         if(_loc1_ || §1A§)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §^!s§;
      }
      
      public static function §;!l§() : String
      {
         return §3y§;
      }
      
      public static function §?!L§() : int
      {
         return §5X§;
      }
   }
}
