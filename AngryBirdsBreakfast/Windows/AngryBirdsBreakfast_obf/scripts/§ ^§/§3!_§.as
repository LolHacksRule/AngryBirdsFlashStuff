package § ^§
{
   import §"n§.§!!G§;
   import §#"&§.§#!4§;
   import §%_§.§"!!§;
   import §[!i§.§;Q§;
   import §]0§.§!!K§;
   import §]0§.§0b§;
   import flash.events.EventDispatcher;
   
   public class §3!_§ extends EventDispatcher
   {
       
      
      private var §"7§:§5!C§;
      
      private var §&`§:§1p§;
      
      private var §&!v§:§0b§;
      
      private var mName:String;
      
      private var §`&§:String;
      
      private var §4_§:Boolean;
      
      private var §1!t§:§;Q§;
      
      public function §3!_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.§&!v§ = §0b§.getLocal(§4!=§.§"l§ + "_LOGIN_DATA");
            if(!(_loc4_ && this))
            {
               addr59:
               this.§"7§ = new §5!C§(this);
               if(!(_loc4_ && _loc1_))
               {
                  this.§&`§ = new §1p§(this);
                  do
                  {
                     this.§1!t§ = new §;Q§();
                  }
                  while(_loc4_ && _loc1_);
                  
               }
            }
         }
         catch(e:*)
         {
            §§goto(addr59);
         }
      }
      
      public function §[!N§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§&!v§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           while(true)
                           {
                              addr72:
                              addr146:
                              while(true)
                              {
                                 §§push(this.§&!v§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop().data));
                                    if(!_loc3_)
                                    {
                                    }
                                    addr149:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§goto(addr159);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr215);
                                 }
                                 break;
                              }
                              §§goto(addr149);
                           }
                           addr126:
                        }
                        §§goto(addr149);
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(!_loc4_)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§&!v§);
                                       if(!_loc3_)
                                       {
                                          addr159:
                                          if(this.§&!v§.data.rememberMe)
                                          {
                                             try
                                             {
                                                addr162:
                                                this.mName = §!!K§.§#8§(this.§&!v§.data.id);
                                                if(_loc3_)
                                                {
                                                   this.§`&§ = §!!K§.§#8§(this.§&!v§.data.password);
                                                   if(_loc3_)
                                                   {
                                                      addr196:
                                                      §§push(this.§&!v§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                                  addr210:
                                                                  §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§&!v§);
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop().data));
                                                                        addr286:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr287:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr289:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§&!v§);
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop().data.rememberMe));
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr288:
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 addr264:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§4_§ = true;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                          addr270:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 §§goto(addr237);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr260);
                                                      addr182:
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr182);
                                             }
                                             catch(e:Error)
                                             {
                                             }
                                             §§goto(addr196);
                                          }
                                          else
                                          {
                                             addr215:
                                             §§push(false);
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      addr232:
                                                      return §§pop();
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          addr237:
                                       }
                                       §§push(Boolean(§§pop().data.id));
                                       if(_loc3_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             §§goto(addr149);
                                          }
                                          continue loop4;
                                          addr43:
                                       }
                                       continue;
                                       while(!_loc3_)
                                       {
                                          continue loop9;
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr126);
                                    §§goto(addr149);
                                 }
                                 break;
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr43);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr146);
         }
         §§goto(addr70);
      }
      
      public function §"5§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?B§("","",false);
         }
         try
         {
            this.§&!v§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §+!B§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:LoginHandlerEvent = null;
         var _loc4_:String = "login";
         if(_loc10_)
         {
            §§push(param1);
            if(!(_loc11_ && param1))
            {
               if(§§pop().length == 0)
               {
                  if(_loc10_)
                  {
                     §§goto(addr36);
                  }
                  §§goto(addr65);
               }
               addr59:
               §§push(param2);
               if(_loc10_)
               {
                  if(§§pop().length == 0)
                  {
                     addr65:
                     (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = §"!!§.PASSWORD_MISSING;
                     if(_loc10_)
                     {
                        dispatchEvent(_loc9_);
                        if(_loc11_)
                        {
                           §§goto(addr93);
                        }
                     }
                     return;
                  }
                  addr93:
                  §§push(§!!G§.§2Z§.§-`§());
                  if(_loc11_ && param2)
                  {
                  }
               }
               §§goto(addr104);
            }
            addr104:
            var _loc5_:String = §§pop();
            §§push(§!!G§.§2Z§.§%"!§());
            if(_loc10_)
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            var _loc7_:Object = {
               "type":_loc4_,
               "nickName":param1,
               "password":param2,
               "locale":_loc6_,
               "language":_loc5_
            };
            var _loc8_:§#!4§ = new §#!4§(_loc7_,§4!=§.§69§ + _loc4_,this.§"7§,§#!4§.§ !z§);
            if(!_loc11_)
            {
               (§6!!§.singleton as §4!=§).§%![§.openPopup(this.§1!t§);
               do
               {
                  this.§?B§(param1,param2,param3);
                  do
                  {
                     dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§"!`§));
                  }
                  while(_loc11_);
                  
               }
               while(!(_loc10_ || param1));
               
            }
            return;
         }
         addr36:
         (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = §"!!§.NICKNAME_MISSING;
         if(_loc10_)
         {
            dispatchEvent(_loc9_);
            if(!(_loc10_ || param1))
            {
               §§goto(addr59);
            }
         }
      }
      
      public function §'!;§(param1:Object) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = "registerPlayer";
         var _loc3_:§#!4§ = new §#!4§(param1,§4!=§.§69§ + _loc2_,this.§&`§,§#!4§.§ !z§);
         if(!(_loc5_ && _loc2_))
         {
            (§6!!§.singleton as §4!=§).§%![§.openPopup(this.§1!t§);
            do
            {
               dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§#!n§));
            }
            while(_loc5_ && param1);
            
         }
      }
      
      public function §?B§(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
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
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop0;
                                 addr38:
                                 if(!(_loc6_ && param2))
                                 {
                                    if(true)
                                    {
                                       try
                                       {
                                          this.§&!v§.flush();
                                       }
                                       catch(e:*)
                                       {
                                       }
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       §§push(this.§&!v§);
                                       loop16:
                                       while(!_loc6_)
                                       {
                                          §§pop().data.password = newPassword;
                                          while(_loc7_ || param3)
                                          {
                                             §§push(this.§&!v§);
                                             if(!_loc6_)
                                             {
                                                §§pop().data.rememberMe = rememberMeToggled;
                                                if(_loc7_ || this)
                                                {
                                                   continue loop15;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop16;
                                          }
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                addr73:
                                                if(_loc6_ && param2)
                                                {
                                                   break;
                                                }
                                                continue loop15;
                                             }
                                             addr126:
                                             while(true)
                                             {
                                                §§push(this.§&!v§);
                                                break loop16;
                                             }
                                          }
                                          loop11:
                                          for(; !(_loc6_ && this); §§goto(addr73))
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§§newactivation());
                                             if(!(_loc7_ || param3))
                                             {
                                                continue loop0;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§!!K§.§0E§(newPassword));
                                             if(_loc7_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr118:
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§pop().§§slot[2] = §§pop();
                                                      §§goto(addr126);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   addr140:
                                                }
                                                while(!(_loc6_ && param3))
                                                {
                                                   §§pop().§§slot[1] = §§pop();
                                                   continue loop11;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr118);
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§pop().data.id = newName;
                                          §§goto(addr71);
                                       }
                                    }
                                    continue;
                                    return;
                                 }
                              }
                           }
                           continue loop3;
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
         return this.§`&§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§4_§;
      }
      
      public function get §&!1§() : §;Q§
      {
         return this.§1!t§;
      }
   }
}
