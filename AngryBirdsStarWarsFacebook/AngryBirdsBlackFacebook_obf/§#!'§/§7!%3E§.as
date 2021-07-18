package §#!'§
{
   import §&#H§.§3#J§;
   import §1!i§.§>!%§;
   import §5t§.Base64;
   import §?m§.§+"2§;
   import §`!o§.§<9§;
   import com.angrybirds.§,!q§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §7!>§ extends EventDispatcher
   {
      
      public static const §'"S§:int = 54321;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7!>§))
         {
            §'"S§ = 54321;
         }
      }
      
      private var §<y§:Boolean = false;
      
      private var §1!5§:Number;
      
      protected var §+!b§:§+"2§;
      
      protected var §5#,§:String;
      
      public function §7!>§(param1:UncaughtErrorEvents, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§1!5§ = new Date().time;
            while(true)
            {
               this.§5#,§ = param2;
               while(_loc3_ || this)
               {
                  if(!_loc4_)
                  {
                     param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§5'§);
                     if(_loc3_ || param2)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §;y§(param1:§+"2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!b§ = param1;
         }
      }
      
      protected function §%"p§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§1!5§) / 1000);
         if(!_loc13_)
         {
            §§push(param1.error is Error);
            if(_loc14_ || this)
            {
               if(§§pop())
               {
                  if(_loc14_ || _loc3_)
                  {
                     _loc2_ = (_loc10_ = param1.error as Error).errorID;
                     _loc5_ = _loc10_.message;
                     if(_loc14_)
                     {
                        §§push(_loc10_.getStackTrace());
                        if(_loc14_ || this)
                        {
                           _loc3_ = §§pop();
                           if(!_loc13_)
                           {
                              addr113:
                              this.§>"T§(_loc2_,_loc3_);
                              if(_loc14_)
                              {
                                 §6"]§.§-!&§(_loc2_,_loc6_);
                              }
                              while(true)
                              {
                                 §§push(§,!q§.§>#D§);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != null)
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr192:
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(_loc14_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                loop4:
                                                for(; !(_loc13_ && this); continue loop5)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc13_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop().length == 0);
                                                         if(!_loc14_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         loop3:
                                                         while(§§pop())
                                                         {
                                                            addr133:
                                                            if(!(_loc14_ || param1))
                                                            {
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_ = "NoState";
                                                               if(true)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop1;
                                                               §§goto(addr133);
                                                            }
                                                         }
                                                         var _loc7_:* = "";
                                                         if(_loc14_)
                                                         {
                                                            §§push(this.§+!b§);
                                                            if(!_loc13_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc13_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(this.§+!b§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr230:
                                                                              §§push(§§pop().currentLevel);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(§§pop() == null);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr238:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr243:
                                                                                          addr241:
                                                                                          §§push(this.§+!b§.currentLevel);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr246:
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          addr248:
                                                                                          var _loc8_:String = "GPU";
                                                                                          if(!(_loc13_ && _loc2_))
                                                                                          {
                                                                                             if(§3#J§.§2!C§ == null)
                                                                                             {
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   _loc8_ = "NULL";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr274:
                                                                                                   _loc8_ = "CPU";
                                                                                                }
                                                                                             }
                                                                                             else if(§3#J§.§3!s§)
                                                                                             {
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§push(_loc2_.toString() + "::");
                                                                                             if(_loc14_ || param1)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      §§push("::");
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr307:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push("::");
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr313:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc8_);
                                                                                                                        if(!(_loc13_ && this))
                                                                                                                        {
                                                                                                                           addr325:
                                                                                                                           §§push("::");
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              addr328:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc14_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr336:
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc14_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       addr347:
                                                                                                                                       addr348:
                                                                                                                                       §§push(§§pop() + "::");
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr354:
                                                                                                                                       var _loc9_:String = §§pop();
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc14_ || this)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §6"]§.§2!L§(§>!%§.§!!W§,_loc9_,_loc6_);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr382:
                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ || param1))
                                                                                                                                                      {
                                                                                                                                                         addr406:
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr419:
                                                                                                                                                            §§push(§§pop() + "::");
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + _loc3_);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                         }
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         §6"]§.§2!L§(§>!%§.§?#T§,_loc12_,_loc6_);
                                                                                                                                                         §§goto(addr382);
                                                                                                                                                         addr427:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr359);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr427);
                                                                                                                                                }
                                                                                                                                                addr359:
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             §§goto(addr406);
                                                                                                                                          }
                                                                                                                                          §§goto(addr419);
                                                                                                                                       }
                                                                                                                                       §§goto(addr406);
                                                                                                                                    }
                                                                                                                                    addr353:
                                                                                                                                    §§goto(addr354);
                                                                                                                                    §§push(§§pop() + this.§5#,§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr353);
                                                                                                                              }
                                                                                                                              §§goto(addr347);
                                                                                                                           }
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr347);
                                                                                                                  }
                                                                                                                  §§goto(addr328);
                                                                                                               }
                                                                                                               §§goto(addr325);
                                                                                                            }
                                                                                                            §§goto(addr353);
                                                                                                         }
                                                                                                         §§goto(addr325);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              §§goto(addr246);
                                                                           }
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      else
                                                      {
                                                         addr191:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            break loop4;
                                                         }
                                                         addr191:
                                                      }
                                                   }
                                                }
                                                §§goto(addr192);
                                             }
                                             addr157:
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                              }
                              §§goto(addr191);
                              §§push(§§pop().§]?§());
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr165);
                  }
                  else
                  {
                     addr103:
                     _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  }
               }
               else
               {
                  addr102:
                  if(param1.error is ErrorEvent)
                  {
                     §§goto(addr103);
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr102);
         }
         §§goto(addr103);
      }
      
      public function §@#Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>"T§(§'"S§,null);
         }
      }
      
      protected function §>"T§(param1:int, param2:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:URLLoader = new URLLoader();
         §§push(§<9§);
         §§push(§4#;§.SERVER_ROOT + "/clienterror/");
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + param1);
         }
         var _loc4_:URLRequest;
         (_loc4_ = §§pop().§""I§(§§pop())).method = URLRequestMethod.POST;
         if(_loc6_ || param1)
         {
            if(!param2)
            {
               while(true)
               {
                  param2 = "";
                  addr108:
                  while(true)
                  {
                  }
               }
               addr106:
            }
            while(true)
            {
               _loc4_.contentType = "text/plain";
               do
               {
                  _loc4_.data = Base64.encode(param2);
                  do
                  {
                     _loc3_.load(_loc4_);
                  }
                  while(_loc5_);
                  
               }
               while(_loc5_);
               
               if(_loc5_ && param1)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr106);
            }
         }
      }
      
      private function §5'§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§<y§)
            {
               while(true)
               {
                  this.§<y§ = true;
                  while(_loc3_ || this)
                  {
                     if(!(_loc2_ && param1))
                     {
                        this.§%"p§(param1);
                        loop2:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.onError(param1);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        continue;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
