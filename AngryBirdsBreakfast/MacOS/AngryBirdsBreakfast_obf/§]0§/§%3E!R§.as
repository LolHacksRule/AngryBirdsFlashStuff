package §]0§
{
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §8!K§.§5!Y§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §>!R§ extends EventDispatcher
   {
       
      
      private var §#"#§:Boolean = false;
      
      private var §2;§:Number;
      
      protected var §&" §:§5!Y§;
      
      protected var §5#§:String;
      
      public function §>!R§(param1:UncaughtErrorEvents, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            do
            {
               this.§2;§ = new Date().time;
               while(true)
               {
                  this.§5#§ = param2;
                  while(_loc4_)
                  {
                     param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§[7§);
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc3_);
            
         }
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §&!j§(param1:§5!Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&" § = param1;
         }
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
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
         var _loc6_:int = Math.round((new Date().time - this.§2;§) / 1000);
         if(_loc14_)
         {
            §§push(param1.error is Error);
            if(!_loc13_)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     addr58:
                     _loc2_ = (_loc10_ = param1.error as Error).errorID;
                     _loc5_ = _loc10_.message;
                     if(_loc14_)
                     {
                        §§push(_loc10_.getStackTrace());
                        if(!(_loc13_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           if(_loc14_)
                           {
                              addr103:
                              §[!-§.§[A§(_loc2_,_loc6_);
                              if(!(_loc13_ && _loc3_))
                              {
                                 §§push(§&!"§.§=!X§);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       while(true)
                                       {
                                          §§push(§&!"§.§=!X§);
                                          addr176:
                                          while(true)
                                          {
                                             §§push(§§pop().§<!&§());
                                             addr178:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr179:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr133:
                                          if(!(_loc14_ || this))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc4_ = "NoState";
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   loop2:
                                                   while(_loc14_ || _loc2_)
                                                   {
                                                      §§push(§§pop() == null);
                                                      if(_loc14_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  if(_loc14_ || _loc3_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().length == 0);
                                                                        if(!(_loc14_ || param1))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr179);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr159:
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               §§goto(addr133);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr160);
                                                            }
                                                         }
                                                         addr180:
                                                         var _loc7_:String = "";
                                                         if(!(_loc13_ && this))
                                                         {
                                                            §§push(this.§&" §);
                                                            if(_loc14_ || this)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc13_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           §§push(this.§&" §);
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              §§push(§§pop().currentLevel);
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 §§push(§§pop() == null);
                                                                                 if(_loc14_ || _loc2_)
                                                                                 {
                                                                                    addr255:
                                                                                    addr254:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr260:
                                                                                          §§push(this.§&" §.currentLevel);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr264:
                                                                                             _loc7_ = §§pop();
                                                                                          }
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                    }
                                                                                    var _loc8_:String = "GPU";
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(§1"&§.§1i§ == null)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr275:
                                                                                             _loc8_ = "NULL";
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr281:
                                                                                             _loc8_ = "CPU";
                                                                                          }
                                                                                       }
                                                                                       else if(§1"&§.§'!g§)
                                                                                       {
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       §§push(_loc2_.toString() + "::");
                                                                                       if(_loc14_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                addr310:
                                                                                                §§push("::");
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         addr319:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc13_ && _loc3_))
                                                                                                         {
                                                                                                            §§push("::");
                                                                                                            if(!(_loc13_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                               {
                                                                                                                  addr343:
                                                                                                                  §§push(§§pop() + _loc8_);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push("::");
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        addr355:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc13_ && param1))
                                                                                                                        {
                                                                                                                           addr363:
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              addr366:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 addr369:
                                                                                                                                 §§push(§§pop() + "::");
                                                                                                                                 if(!(_loc13_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr380:
                                                                                                                                    §§push(§§pop() + this.§5#§);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc9_:String = §§pop();
                                                                                                                              if(!(_loc13_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §[!-§.§@v§(§+!a§.§;G§,_loc9_,_loc6_);
                                                                                                                                 loop10:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(_loc14_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §[!-§.§@v§(§+!a§.§;G§,_loc9_,_loc6_);
                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(_loc13_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc14_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + "::");
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + _loc3_);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                      }
                                                                                                                                                      addr442:
                                                                                                                                                   }
                                                                                                                                                   addr449:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr421:
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr434);
                                                                                                                                    }
                                                                                                                                    §§goto(addr442);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §[!-§.§@v§(§+!a§.§%!F§,_loc12_,_loc6_);
                                                                                                                                 §§goto(addr421);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                               §§goto(addr380);
                                                                                                            }
                                                                                                            §§goto(addr369);
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr369);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                addr144:
                                             }
                                             §§goto(addr180);
                                          }
                                          addr140:
                                       }
                                       addr174:
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr140);
                              addr87:
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr87);
                  }
                  else
                  {
                     addr93:
                     _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  }
               }
               else
               {
                  addr92:
                  if(param1.error is ErrorEvent)
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr92);
         }
         §§goto(addr58);
      }
      
      private function §[7§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§#"#§)
            {
               while(true)
               {
                  this.§#"#§ = true;
                  while(_loc3_)
                  {
                     this.reportError(param1);
                     while(_loc3_)
                     {
                        this.onError(param1);
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || this)
                           {
                              return;
                              addr57:
                           }
                           else
                           {
                              addr85:
                           }
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr57);
      }
   }
}
