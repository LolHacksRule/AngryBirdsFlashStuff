package §<!U§
{
   import §!J§.§[&§;
   import §"!+§.§2!U§;
   import §"!+§.§=w§;
   import §+a§.§8!I§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §@,§.§8!#§;
   import §]2§.§[4§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §]u§ extends §[4§ implements §=w§
   {
      
      public static const §3V§:Number = 1;
      
      public static const §,!#§:Number = 2;
      
      public static const §0?§:Number = 3;
      
      public static const §=9§:Number = 4;
      
      public static const §1T§:Number = 5;
      
      public static const §@!B§:Number = 6;
      
      public static const §-E§:Number = 7;
      
      public static const §0m§:Number = 8;
      
      public static const §4!,§:Number = 9;
      
      public static const §3#§:Number = 10;
      
      public static const §#!2§:Number = 11;
      
      public static const §7h§:Number = 12;
      
      public static const §6P§:Number = 13;
      
      public static var §%!0§:Array;
      
      private static var §&t§:Class;
      
      public static var sCheetosPopups:§8!I§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §3V§ = 1;
            loop0:
            while(true)
            {
               §,!#§ = 2;
               loop1:
               while(true)
               {
                  §0?§ = 3;
                  loop2:
                  while(true)
                  {
                     §=9§ = 4;
                     while(true)
                     {
                        §1T§ = 5;
                        addr159:
                        addr93:
                        while(true)
                        {
                           §@!B§ = 6;
                           continue loop1;
                        }
                        loop11:
                        while(!(_loc2_ && _loc1_))
                        {
                           §6P§ = 13;
                           loop12:
                           for(; !_loc2_; while(!(_loc2_ && _loc2_))
                           {
                              §&t§ = §@!W§;
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 continue loop11;
                              }
                              §§goto(addr36);
                           })
                           {
                              addr71:
                              if(_loc1_ || _loc1_)
                              {
                                 §%!0§ = [§3V§,§,!#§,§0?§,§=9§,§1T§,§@!B§,§-E§,§0m§,§0m§,§4!,§,§3#§,§#!2§,§7h§,§6P§];
                                 continue;
                              }
                              addr135:
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §3#§ = 10;
                                    do
                                    {
                                       §#!2§ = 11;
                                       break loop12;
                                    }
                                    while(!_loc1_);
                                    
                                    return;
                                    addr121:
                                 }
                                 continue loop1;
                                 §§goto(addr71);
                              }
                              while(!_loc2_)
                              {
                                 §4!,§ = 9;
                                 §§goto(addr126);
                              }
                              addr126:
                              §§goto(addr159);
                           }
                           while(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              §0m§ = 8;
                              §§goto(addr135);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §]u§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            if(sCheetosPopups != null)
            {
               loop3:
               while(true)
               {
                  this.addExternalInterfaceCallbacks();
                  if(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr77:
                  while(true)
                  {
                     continue loop3;
                  }
               }
            }
            continue;
            return;
         }
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §,Y§.addCallback("navigationAttempt",this.navigationAttempt);
         }
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var url:String = param1;
         if(!(_loc5_ && _loc3_))
         {
            §;!=§.§`S§ = url;
         }
         try
         {
            §,Y§.§[[§("navigationConfirmed",§;!=§.§`S§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            sCheetosPopups.§2!,§(§8!#§.§9C§(§&t§),§"c§.container,null,this);
            do
            {
               §"c§.container.addComponent(sCheetosPopups.container);
            }
            while(_loc1_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §,Y§.§!9§("navigationAttempt",this.navigationAttempt);
            loop0:
            do
            {
               §"c§.container.removeComponent(sCheetosPopups.container);
               while(true)
               {
                  sCheetosPopups.deActivate();
                  while(_loc1_)
                  {
                     super.deActivate();
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[2] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(_loc4_)
               {
                  §§pop().§§slot[3] = 0;
                  loop3:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§pop().§§slot[1] = param1;
                        do
                        {
                           §[&§.§>!E§();
                        }
                        while(!_loc4_);
                        
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                        if(false)
                        {
                           §§goto(addr30);
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§pop().§§slot[2] = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
                              if(!_loc5_)
                              {
                                 addr80:
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    if(§§pop().§§slot[2])
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(§§pop().§§slot[2].error == null);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(!§§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr129:
                                                               §§pop();
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop().§§slot[2].error.code));
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        addr289:
                                                                        §§push(§§pop());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr298:
                                                                              §§pop();
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 addr253:
                                                                                 §§push(returnObject.error.code as Number == §=9§);
                                                                                 if(!(returnObject.error.code as Number == §=9§))
                                                                                 {
                                                                                    addr262:
                                                                                    §§pop();
                                                                                    addr263:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[2].error.code as Number == §0?§);
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr224:
                                                                                                §§push(§§pop());
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      addr240:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr152:
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[2].error.code as Number == §,!#§);
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              addr177:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc4_ || param1)
                                                                                                                                 {
                                                                                                                                    addr186:
                                                                                                                                    §;!=§.§`!;§ = null;
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       mNextState = StateConnecting.§`O§;
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr152);
                                                                                                                                          }
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr310:
                                                                                                                                             if(§§pop().§§slot[2].error.code as Number == §,!#§)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   try
                                                                                                                                                   {
                                                                                                                                                      addr319:
                                                                                                                                                      §,Y§.§[[§("reauthenticate",§;!=§.§`!;§.§each §);
                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr394:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr397:
                                                                                                                                                            if(§§pop().§§slot[2].levelProfile)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §;!=§.levelProfile = returnObject.levelProfile;
                                                                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           addr428:
                                                                                                                                                                           §§push(§%!0§.indexOf(returnObject.error.code as Number) > 0);
                                                                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr447:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr448:
                                                                                                                                                                                 mNextState = StateConnecting.§`O§;
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr461:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr480:
                                                                                                                                                                                    §§goto(addr428);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr496:
                                                                                                                                                                                 §;!=§.credits = returnObject.credits;
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    try
                                                                                                                                                                                    {
                                                                                                                                                                                       addr503:
                                                                                                                                                                                       §,Y§.§[[§("updateCredits",returnObject.credits);
                                                                                                                                                                                    }
                                                                                                                                                                                    catch(e:Error)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr547:
                                                                                                                                                                                       return;
                                                                                                                                                                                       addr523:
                                                                                                                                                                                    }
                                                                                                                                                                                    e = §§pop();
                                                                                                                                                                                    addr524:
                                                                                                                                                                                    §§goto(addr547);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr523);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr394);
                                                                                                                                                                              addr446:
                                                                                                                                                                           }
                                                                                                                                                                           addr479:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§goto(addr480);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr448);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr496);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr448);
                                                                                                                                                            }
                                                                                                                                                            try
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            catch(e:Error)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr524);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr547);
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§§slot[3] = int(returnObject.credits as int);
                                                                                                                                                         if(_loc5_ && this)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr448);
                                                                                                                                                         addr346:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr461);
                                                                                                                                                   }
                                                                                                                                                   catch(e:Error)
                                                                                                                                                   {
                                                                                                                                                      var _loc3_:* = e;
                                                                                                                                                      §§goto(addr346);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr394);
                                                                                                                                                }
                                                                                                                                                §§goto(addr448);
                                                                                                                                             }
                                                                                                                                             §§goto(addr394);
                                                                                                                                          }
                                                                                                                                          §§goto(addr397);
                                                                                                                                       }
                                                                                                                                       §§goto(addr503);
                                                                                                                                    }
                                                                                                                                    §§goto(addr461);
                                                                                                                                 }
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 addr355:
                                                                                                                                 §§push(§§pop().§§slot[2].error == null);
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    addr366:
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          addr373:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc4_ || this)
                                                                                                                                          {
                                                                                                                                             addr381:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr389:
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop().§§slot[2].error.code));
                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr477:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr479);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr446);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr479);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr394);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr448);
                                                                                                                                                }
                                                                                                                                                §§goto(addr447);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr477);
                                                                                                                                       }
                                                                                                                                       §§goto(addr389);
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                 }
                                                                                                                                 §§goto(addr373);
                                                                                                                              }
                                                                                                                              §§goto(addr394);
                                                                                                                           }
                                                                                                                           §§goto(addr373);
                                                                                                                        }
                                                                                                                        §§goto(addr253);
                                                                                                                     }
                                                                                                                     §§goto(addr397);
                                                                                                                  }
                                                                                                                  §§goto(addr263);
                                                                                                               }
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§goto(addr262);
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      §§goto(addr177);
                                                                                                   }
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                §§goto(addr477);
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                          §§goto(addr253);
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr177);
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     §§goto(addr479);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr477);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr389);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr480);
                                    }
                                    §§goto(addr547);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr186);
                           }
                        }
                        catch(e:Error)
                        {
                           _loc3_ = e;
                           §§goto(addr80);
                        }
                        §§goto(addr310);
                        continue loop3;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
