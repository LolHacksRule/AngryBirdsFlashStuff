package §7!B§
{
   import §!?§.§'k§;
   import §3C§.§["1§;
   import §7!0§.§";§;
   import §7!0§.§'q§;
   import §9y§.§8"3§;
   import flash.events.EventDispatcher;
   
   public class §@"@§ extends EventDispatcher
   {
       
      
      private var §true §:§=!Q§;
      
      private var §]h§:§@R§;
      
      private var §?!S§:§";§;
      
      private var mName:String;
      
      private var §5!u§:String;
      
      private var §^,§:Boolean;
      
      private var §'F§:§["1§;
      
      public function §@"@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.§?!S§ = §";§.getLocal(§`Y§.§^"'§ + "_LOGIN_DATA");
            if(!(_loc4_ && this))
            {
               addr59:
               this.§true § = new §=!Q§(this);
               if(_loc3_ || _loc3_)
               {
                  this.§]h§ = new §@R§(this);
               }
            }
         }
         catch(e:*)
         {
            §§goto(addr59);
         }
         do
         {
            this.§'F§ = new §["1§();
         }
         while(!_loc3_);
         
      }
      
      public function §+!T§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§?!S§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr126:
                           while(true)
                           {
                              addr74:
                              while(true)
                              {
                                 §§push(this.§?!S§);
                                 continue loop0;
                              }
                           }
                           addr154:
                           if(§§pop().data.rememberMe)
                           {
                              try
                              {
                                 addr157:
                                 this.mName = §'q§.§<"&§(this.§?!S§.data.id);
                                 if(_loc3_ || _loc2_)
                                 {
                                    this.§5!u§ = §'q§.§<"&§(this.§?!S§.data.password);
                                    if(!_loc4_)
                                    {
                                       addr196:
                                       §§push(this.§?!S§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr225:
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§?!S§);
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop().data));
                                                            addr296:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               §§goto(addr297);
                                                            }
                                                         }
                                                         addr293:
                                                      }
                                                      else
                                                      {
                                                         addr230:
                                                         §§push(false);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr233);
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   addr233:
                                                   return §§pop();
                                                }
                                                §§goto(addr296);
                                             }
                                             addr297:
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr299:
                                                      while(true)
                                                      {
                                                         §§push(this.§?!S§);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(Boolean(§§pop().data.rememberMe));
                                                            continue loop13;
                                                         }
                                                         continue loop18;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§^,§ = true;
                                                            addr280:
                                                            while(true)
                                                            {
                                                               addr236:
                                                               while(true)
                                                               {
                                                                  §§goto(addr238);
                                                               }
                                                            }
                                                         }
                                                         addr277:
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr236);
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr277);
                              }
                              catch(e:Error)
                              {
                                 var _loc2_:* = e;
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr230);
                        }
                        addr125:
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           continue loop1;
                        }
                        addr89:
                     }
                  }
               }
               §§goto(addr139);
            }
         }
         §§goto(addr72);
      }
      
      public function §1!m§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§#Q§("","",false);
         }
         try
         {
            this.§?!S§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7j§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:LoginHandlerEvent = null;
         var _loc4_:String = "login";
         var _loc5_:RegExp = /^\S+@\S+\.\S+$/;
         if(_loc10_)
         {
            §§push(param1);
            if(!(_loc11_ && this))
            {
               if(§§pop().length == 0)
               {
                  if(!(_loc11_ && this))
                  {
                     (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.INVALID_EMAIL;
                     if(_loc10_ || param1)
                     {
                        dispatchEvent(_loc9_);
                        if(!_loc11_)
                        {
                           return;
                        }
                     }
                  }
                  (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.PASSWORD_MISSING;
                  addr97:
                  if(!(_loc11_ && this))
                  {
                     dispatchEvent(_loc9_);
                     if(_loc10_ || param3)
                     {
                        return;
                     }
                  }
                  addr135:
                  var _loc6_:Object;
                  (_loc6_ = {}).email = param1;
                  if(_loc10_)
                  {
                     _loc6_.password = param2;
                  }
                  var _loc7_:Object = {
                     "type":_loc4_,
                     "player":_loc6_
                  };
                  var _loc8_:§'k§ = new §'k§(_loc7_,§`Y§.§6T§ + _loc4_,this.§true §,§'k§.§;!^§);
                  if(_loc10_ || param1)
                  {
                     (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§'F§);
                     while(true)
                     {
                        this.§#Q§(param1,param2,param3);
                        loop1:
                        while(_loc10_ || this)
                        {
                           while(true)
                           {
                              dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§?q§));
                              if(_loc10_ || param3)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr206);
               }
               if(!_loc5_.test(param1))
               {
                  if(_loc10_)
                  {
                     (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = §8"3§.INVALID_EMAIL;
                     if(!_loc11_)
                     {
                        dispatchEvent(_loc9_);
                        if(_loc11_)
                        {
                           addr93:
                           if(param2.length == 0)
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr135);
                        }
                     }
                     return;
                  }
                  §§goto(addr97);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr97);
      }
      
      public function §+1§(param1:Object) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "registerPlayer";
         var _loc3_:§'k§ = new §'k§(param1,§`Y§.§6T§ + _loc2_,this.§]h§,§'k§.§;!^§);
         if(_loc5_ || _loc2_)
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§'F§);
            do
            {
               dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§5!l§));
            }
            while(!(_loc5_ || _loc2_));
            
         }
      }
      
      public function §#Q§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(param1);
            while(true)
            {
               §§pop().§§slot[1] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(param2);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc7_)
                           {
                              §§pop().§§slot[3] = param3;
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(_loc7_)
                                 {
                                    continue loop3;
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_ && this)
                                       {
                                          continue loop8;
                                       }
                                       §§push(§'q§.§2!#§(newPassword));
                                       if(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!(_loc7_ || param3))
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().§§slot[1] = §§pop();
                                                continue loop10;
                                             }
                                             addr152:
                                          }
                                       }
                                       §§pop().§§slot[2] = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§?!S§);
                                          while(true)
                                          {
                                             §§pop().data.id = newName;
                                             addr80:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop11;
                                             }
                                             continue loop7;
                                             addr27:
                                             if(_loc6_ && param1)
                                             {
                                                continue;
                                             }
                                             §§pop().data.rememberMe = rememberMeToggled;
                                             if(!(_loc6_ && this))
                                             {
                                                addr45:
                                                if(_loc7_)
                                                {
                                                   if(true)
                                                   {
                                                      try
                                                      {
                                                         this.§?!S§.flush();
                                                      }
                                                      catch(e:*)
                                                      {
                                                      }
                                                      addr49:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§?!S§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop().data.password = newPassword;
                                                         addr56:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc6_ && param3)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§?!S§);
                                                               if(_loc6_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr27);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr80);
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr45);
                                                   }
                                                   continue loop2;
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr56);
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get password() : String
      {
         return this.§5!u§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^,§;
      }
      
      public function get §4>§() : §["1§
      {
         return this.§'F§;
      }
   }
}
