package §5G§
{
   import §"§.§%!$§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §=!g§.§!!@§;
   import §>^§.§7]§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?,§ extends §%!$§ implements §7Z§
   {
      
      public static const §0n§:Number = 1;
      
      public static const §?!i§:Number = 2;
      
      public static const § B§:Number = 3;
      
      public static const §%!d§:Number = 4;
      
      public static const §'N§:Number = 5;
      
      public static const §%3§:Number = 6;
      
      public static const §&!<§:Number = 7;
      
      public static const §=!@§:Number = 8;
      
      public static const § '§:Number = 9;
      
      public static const §]U§:Number = 10;
      
      public static const §;?§:Number = 11;
      
      public static const §9O§:Number = 12;
      
      public static const §6!E§:Number = 13;
      
      public static var §?!Y§:Array;
      
      private static var §>q§:Class;
      
      public static var sCheetosPopups:§&O§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §0n§ = 1;
            loop0:
            while(true)
            {
               §?!i§ = 2;
               addr185:
               while(true)
               {
                  § B§ = 3;
                  addr180:
                  while(true)
                  {
                     §%!d§ = 4;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §&!<§ = 7;
            §§goto(addr141);
         }
      }
      
      public function §?,§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            do
            {
               if(sCheetosPopups == null)
               {
                  if(!_loc2_)
                  {
                     sCheetosPopups = new §&O§();
                     addr71:
                     while(true)
                     {
                     }
                     addr71:
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  this.addExternalInterfaceCallbacks();
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr71);
               }
            }
            while(!_loc1_);
            
            return;
         }
         §§goto(addr71);
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!@§.addCallback("navigationAttempt",this.navigationAttempt);
         }
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var url:String = param1;
         if(!_loc5_)
         {
            §>f§.§%!-§ = url;
         }
         try
         {
            §!!@§.§%Q§("navigationConfirmed",§>f§.§%!-§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            sCheetosPopups.§3,§(§7]§.§#!I§(§>q§),§%!0§.container,null,this);
            do
            {
               §%!0§.container.addComponent(sCheetosPopups.container);
            }
            while(!_loc2_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §!!@§.§,2§("navigationAttempt",this.navigationAttempt);
            loop0:
            do
            {
               §%!0§.container.removeComponent(sCheetosPopups.container);
               while(true)
               {
                  sCheetosPopups.deActivate();
                  while(_loc1_ || this)
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
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr29:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_ || this)
               {
                  §§pop().§§slot[2] = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
                  if(!_loc5_)
                  {
                     addr65:
                     §§push(§§newactivation());
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop().§§slot[2])
                        {
                           if(!_loc5_)
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 §§push(§§pop().§§slot[2].error == null);
                                 if(!_loc5_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop().§§slot[2].error.code));
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           addr226:
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§§slot[2].error.code as Number == §%!d§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr242:
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(§§pop().§§slot[2].error.code as Number == § B§);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         loop10:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc4_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[2].error.code as Number == §?!i§);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr137:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          break loop7;
                                                                                                                                       }
                                                                                                                                       break loop9;
                                                                                                                                    }
                                                                                                                                    if(!(_loc5_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr146:
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    addr396:
                                                                                                                                    mNextState = StateConnecting.§3!?§;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr352:
                                                                                                                                       §§goto(addr368);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §>f§.§%!`§ = null;
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       mNextState = StateConnecting.§3!?§;
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr265:
                                                                                                                                                   if(§§pop().§§slot[2].error.code as Number == §?!i§)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         break loop9;
                                                                                                                                                         addr347:
                                                                                                                                                      }
                                                                                                                                                      try
                                                                                                                                                      {
                                                                                                                                                         addr274:
                                                                                                                                                         §!!@§.§%Q§("reauthenticate",§>f§.§%!`§.§6!W§);
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr296:
                                                                                                                                                            §§goto(addr353);
                                                                                                                                                            addr282:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr427);
                                                                                                                                                      }
                                                                                                                                                      catch(e:Error)
                                                                                                                                                      {
                                                                                                                                                         var _loc3_:* = e;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr296);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop7;
                                                                                                                                             break loop9;
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       §§goto(addr274);
                                                                                                                                    }
                                                                                                                                    addr368:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                    §§goto(addr146);
                                                                                                                                 }
                                                                                                                                 addr137:
                                                                                                                                 addr153:
                                                                                                                              }
                                                                                                                              addr324:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              §§goto(addr426);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr305:
                                                                                                                        §§push(§§pop().§§slot[2].error == null);
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr324);
                                                                                                                           }
                                                                                                                           break loop15;
                                                                                                                        }
                                                                                                                        addr424:
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                               §§goto(addr137);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr425:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr426);
                                                                                                         }
                                                                                                         §§goto(addr387);
                                                                                                         addr193:
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Boolean(§§pop().§§slot[2].error.code));
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §§goto(addr424);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             addr241:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    addr339:
                                                                                    §§pop();
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                    addr238:
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr137);
                                                               }
                                                            }
                                                            addr256:
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr339);
                                                            }
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr153);
                                                }
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr339);
                              }
                              §§goto(addr305);
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr368);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr242);
               }
            }
            catch(e:Error)
            {
               _loc3_ = e;
               §§goto(addr65);
            }
            §§goto(addr265);
         }
         §§goto(addr29);
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
