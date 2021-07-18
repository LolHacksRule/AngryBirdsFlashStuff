package §4[§
{
   import §'!3§.§,!S§;
   import §1![§.§#E§;
   import §[!5§.§2p§;
   import com.angrybirds.utils.§'[§;
   import com.angrybirds.utils.§0O§;
   import flash.events.EventDispatcher;
   
   public class §4Z§ extends EventDispatcher
   {
       
      
      private var §`W§:§`A§;
      
      private var §4w§:§<"6§;
      
      private var §?!b§:§'[§;
      
      private var mName:String;
      
      private var §-!X§:String;
      
      private var §3!`§:String;
      
      private var §,!l§:String;
      
      private var §^T§:Boolean;
      
      private var §"!j§:§,!S§;
      
      public function §4Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            this.§?!b§ = §'[§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME + "_LOGIN_DATA");
            if(_loc3_ || this)
            {
               addr59:
               this.§`W§ = new §`A§(this);
               if(_loc3_ || _loc2_)
               {
                  this.§4w§ = new §<"6§(this);
               }
               do
               {
                  this.§"!j§ = new §,!S§();
               }
               while(!_loc3_);
               
            }
         }
         catch(e:*)
         {
            var _loc2_:* = e;
            §§goto(addr59);
         }
      }
      
      public function §8"§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§?!b§);
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
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
                           addr179:
                           while(true)
                           {
                              §§push(this.§?!b§);
                              addr153:
                              while(true)
                              {
                                 §§push(Boolean(§§pop().data));
                              }
                           }
                        }
                        addr178:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           loop7:
                           while(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§?!b§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop().data.id));
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop12:
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(_loc4_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               addr104:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?!b§);
                                                                  addr107:
                                                                  while(_loc4_)
                                                                  {
                                                                     §§push(Boolean(§§pop().data.password));
                                                                     while(_loc4_)
                                                                     {
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                            }
                                                            addr66:
                                                            if(!(_loc4_ || _loc1_))
                                                            {
                                                               continue;
                                                            }
                                                            §§pop();
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr81:
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  addr125:
                                                                  addr212:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.§?!b§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(_loc4_ || _loc1_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(Boolean(§§pop().data.language));
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr66);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr202:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this.§?!b§);
                                                                                                   break loop21;
                                                                                                }
                                                                                                try
                                                                                                {
                                                                                                   addr215:
                                                                                                   this.mName = §0O§.§3m§(this.§?!b§.data.id);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      this.§-!X§ = §0O§.§3m§(this.§?!b§.data.password);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§3!`§ = §0O§.§3m§(this.§?!b§.data.language);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               this.§,!l§ = §0O§.§3m§(this.§?!b§.data.country);
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr286:
                                                                                                                  §§push(this.§?!b§);
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr386:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr388:
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr383:
                                                                                                                                    §§push(this.§?!b§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop().data));
                                                                                                                                    }
                                                                                                                                    addr383:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 break loop31;
                                                                                                                              }
                                                                                                                              addr388:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                           addr386:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr388);
                                                                                                                           }
                                                                                                                           addr363:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    this.§^T§ = true;
                                                                                                                                 }
                                                                                                                                 break loop31;
                                                                                                                              }
                                                                                                                              §§goto(addr333);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  §§goto(addr383);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                catch(e:Error)
                                                                                                {
                                                                                                   var _loc2_:* = e;
                                                                                                   §§goto(addr286);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§?!b§);
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop().data.rememberMe));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr386);
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      addr361:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                   §§goto(addr386);
                                                                                                }
                                                                                                addr333:
                                                                                                §§goto(addr335);
                                                                                             }
                                                                                             §§push(false);
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    addr116:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr112);
                                                                              }
                                                                              §§goto(addr202);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr107);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr149);
                                                                     §§goto(addr107);
                                                                     §§goto(addr81);
                                                                  }
                                                               }
                                                               continue loop8;
                                                               if(§§pop().data.rememberMe)
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr202);
                                                               }
                                                               while(!(_loc4_ || _loc2_))
                                                               {
                                                                  §§goto(addr333);
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr116);
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                addr136:
                                             }
                                             else
                                             {
                                                §§goto(addr178);
                                             }
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr136);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr199);
         }
         §§goto(addr102);
      }
      
      public function §4!s§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!!z§("","","","",false);
         }
         try
         {
            this.§?!b§.clear();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §]"#§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:LoginHandlerEvent = null;
         var _loc6_:String = "login";
         if(_loc11_)
         {
            §§push(param1);
            if(_loc11_ || param2)
            {
               if(§§pop().length == 0)
               {
                  if(!(_loc10_ && param1))
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr65);
         }
         addr42:
         (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = §2p§.NICKNAME_MISSING;
         if(!(_loc10_ && this))
         {
            dispatchEvent(_loc9_);
            if(_loc10_)
            {
               addr65:
               if(param2.length == 0)
               {
                  addr69:
                  (_loc9_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = §2p§.PASSWORD_MISSING;
                  if(!(_loc10_ && param2))
                  {
                     dispatchEvent(_loc9_);
                     if(_loc10_ && param3)
                     {
                        §§goto(addr107);
                     }
                  }
                  return;
               }
               addr107:
               var _loc7_:Object = {
                  "type":_loc6_,
                  "nickName":param1,
                  "password":param2,
                  "locale":param4,
                  "language":param3
               };
               var _loc8_:§#E§ = new §#E§(_loc7_,AngryBirdsCustom.§;"1§ + _loc6_,this.§`W§,§#E§.§3b§);
               if(!(_loc10_ && param3))
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§"!j§);
                  while(true)
                  {
                     this.§!!z§(param1,param2,param3,param4,param5);
                     §§goto(addr175);
                  }
               }
               addr175:
               while(true)
               {
                  dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§ ! §));
                  if(_loc11_ || param1)
                  {
                     if(!(_loc10_ && param2))
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
      }
      
      public function §^!h§(param1:Object) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "registerPlayer";
         var _loc3_:§#E§ = new §#E§(param1,AngryBirdsCustom.§;"1§ + _loc2_,this.§4w§,§#E§.§3b§);
         if(_loc5_)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§"!j§);
         }
         do
         {
            dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§ =§));
         }
         while(_loc4_);
         
      }
      
      public function §!!z§(param1:String, param2:String, param3:String, param4:String, param5:Boolean) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
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
                     addr273:
                     while(true)
                     {
                        §§pop().§§slot[2] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(param3);
                              addr266:
                              while(!_loc9_)
                              {
                                 §§pop().§§slot[3] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param4);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[4] = §§pop();
                                          loop11:
                                          while(_loc8_)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().§§slot[5] = param5;
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   for(; !_loc9_; while(true)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop14;
                                                   },continue loop0)
                                                   {
                                                      §§push(§0O§.§]U§(newName));
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop16:
                                                         while(_loc8_ || param2)
                                                         {
                                                            §§pop().§§slot[1] = §§pop();
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               continue loop14;
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  addr207:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§0O§.§]U§(country));
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              addr154:
                                                                              §§push(§§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().§§slot[4] = §§pop();
                                                                                 loop25:
                                                                                 while(_loc8_)
                                                                                 {
                                                                                    §§push(this.§?!b§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().data.id = newName;
                                                                                       addr112:
                                                                                       while(!_loc9_)
                                                                                       {
                                                                                          §§push(this.§?!b§);
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().data.password = newPassword;
                                                                                             addr98:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(this.§?!b§);
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       continue loop11;
                                                                                       if(!(_loc8_ || param3))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§pop().data.language = language;
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc8_ || param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§?!b§);
                                                                                                while(_loc8_)
                                                                                                {
                                                                                                   §§pop().data.country = country;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?!b§);
                                                                                                      if(_loc9_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop().data.rememberMe = rememberMeToggled;
                                                                                                      if(_loc8_ || param3)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop31;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr63);
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr98);
                                                                                       }
                                                                                       §§goto(addr112);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr229:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       §§pop().§§slot[2] = §§pop();
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr228:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 addr162:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop12;
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr199:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§§slot[3] = §§pop();
                                                                              continue loop24;
                                                                           }
                                                                           addr199:
                                                                        }
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            if(_loc9_ && param1)
            {
               continue;
            }
            §§goto(addr228);
            §§push(§0O§.§]U§(newPassword));
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get password() : String
      {
         return this.§-!X§;
      }
      
      public function get language() : String
      {
         return this.§3!`§;
      }
      
      public function get country() : String
      {
         return this.§,!l§;
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^T§;
      }
      
      public function get §3!p§() : §,!S§
      {
         return this.§"!j§;
      }
   }
}
