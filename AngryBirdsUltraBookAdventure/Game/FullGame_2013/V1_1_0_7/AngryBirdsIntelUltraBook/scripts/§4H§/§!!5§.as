package §4H§
{
   import §#!G§.§6!_§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§"K§;
   import §>L§.§+!i§;
   import §[;§.§#!6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §!!5§
   {
      
      private static var §9^§:§45§;
      
      private static var §+7§:Object;
      
      private static var §,!>§:String = "";
      
      private static var §8t§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!>§ = "";
         }
         do
         {
            §8t§ = 0;
         }
         while(!_loc1_);
         
      }
      
      public function §!!5§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §9^§ = new §45§();
            loop0:
            while(true)
            {
               §§push(§9^§);
               loop1:
               while(true)
               {
                  §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                  addr224:
                  while(true)
                  {
                     §§push(§9^§);
                     addr214:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,§94§);
                        addr218:
                        addr55:
                        while(true)
                        {
                           §§push(§9^§);
                           continue loop1;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr20);
      }
      
      protected static function §2!@§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §!!5§)
         {
            §§push(§§findproperty(§,!>§));
            §§push("Can\'t contact server.\n");
            if(!(_loc3_ && §!!5§))
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().§,!>§ = §§pop();
            do
            {
               §9^§ = null;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private static function §94§(param1:Event) : void
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
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        §§pop().§§slot[4] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc6_)
                           {
                              §§pop().§§slot[1] = param1;
                              loop7:
                              while(!_loc6_)
                              {
                                 loop8:
                                 do
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(_loc5_)
                                    {
                                       §§pop().§§slot[2] = false;
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!(_loc5_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(String(§9^§.data));
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             continue loop9;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 while(false);
                                 
                                 try
                                 {
                                    §+7§ = JSON.parse(serverResponse);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§+7§.error)
                                       {
                                          addr145:
                                          §§push(§§findproperty(§,!>§));
                                          §§push("Server error of type \'");
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §+7§.type);
                                             if(_loc5_ || §!!5§)
                                             {
                                                §§push(§§pop() + "\':\n");
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §+7§.message);
                                                }
                                             }
                                          }
                                          §§pop().§,!>§ = §§pop();
                                          if(_loc5_)
                                          {
                                             addr118:
                                             if(§+7§.type == "OAuthException")
                                             {
                                                if(!(_loc6_ && §!!5§))
                                                {
                                                   §8t§ = §"K§.§6$§;
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr96:
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         §§pop().§§slot[2] = true;
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr118);
                                                               }
                                                               addr228:
                                                               if(!threwError)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §6!_§.§8m§(§+7§.friends);
                                                                     if(_loc5_)
                                                                     {
                                                                        (AngryBirdsFP11.sUserProgress as §#!6§).§0!2§(§+7§.state as Array,§+7§.user.name,§+7§.user.avatar,§+7§.user.userId,§+7§.eggs,§+7§.user.tutorials);
                                                                        addr330:
                                                                        §0c§.§[U§.§-c§(§+7§.excludedUserIds);
                                                                        addr357:
                                                                        addr333:
                                                                        §§push(§0c§.§[U§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().§4C§(§+7§.deauthorizedUserIds);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§+7§.user.name == null)
                                                                              {
                                                                                 §§goto(addr297);
                                                                              }
                                                                              addr258:
                                                                              if(§+7§.user.ap == true)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    addr271:
                                                                                    §+!i§.§>!y§("doAdParlorConversion");
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(_loc5_ || §!!5§)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr244:
                                                                                             §<t§.§6v§(§+7§.friends);
                                                                                             if(!(_loc6_ && §!!5§))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr258);
                                                                                                }
                                                                                                var _loc3_:* = 0;
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   var _loc4_:* = §+7§.requests.brags;
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      addr400:
                                                                                                      for each(bragObject in _loc4_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr394:
                                                                                                            §+!i§.§>!y§("flashDeleteRequest",bragObject.r);
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                addr403:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr406:
                                                                                                   §9^§ = null;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                 }
                                                                                 addr409:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr244);
                                                                              addr326:
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr330);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                               }
                                                               §§goto(addr406);
                                                               addr170:
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr96);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr170);
                                    }
                                    addr297:
                                    if(_loc6_ && param1)
                                    {
                                       §§goto(addr357);
                                    }
                                    throw new Error("User name cannot be null");
                                 }
                                 catch(e:Error)
                                 {
                                    _loc3_ = e;
                                    if(!_loc6_)
                                    {
                                       §§push(§§findproperty(§,!>§));
                                       §§push("Invalid server response. Expected a json string but got this:\n");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + serverResponse);
                                       }
                                       §§pop().§,!>§ = §§pop();
                                       addr210:
                                       §8t§ = §"K§.§6#§;
                                       addr224:
                                    }
                                    var threwError:Boolean = true;
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && §!!5§))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr210);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr224);
                                    }
                                    addr215:
                                    §§goto(addr215);
                                 }
                                 §§goto(addr228);
                              }
                              continue loop5;
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public static function get §6;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§9^§ == null);
         if(_loc2_ || §!!5§)
         {
            return !§§pop();
         }
      }
      
      private static function get data() : Object
      {
         return §+7§;
      }
      
      public static function §>!I§() : String
      {
         return §,!>§;
      }
      
      public static function §+!A§() : int
      {
         return §8t§;
      }
   }
}
