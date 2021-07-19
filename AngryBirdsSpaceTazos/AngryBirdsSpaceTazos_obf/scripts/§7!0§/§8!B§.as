package §7!0§
{
   import §!?§.§'k§;
   import §3C§.§-"E§;
   import §3C§.§9!%§;
   import §3C§.§["1§;
   import §3C§.§^p§;
   import §7!B§.§@!^§;
   import §9y§.§8"3§;
   import §=r§.§7!r§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §8!B§ extends EventDispatcher implements §-!^§
   {
       
      
      private var §!!]§:Boolean = false;
      
      private var §3!S§:§["1§;
      
      public function §8!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            do
            {
               this.§3!S§ = new §["1§();
            }
            while(_loc1_);
            
         }
      }
      
      public function §6!L§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§'k§ = null;
         if(!(_loc7_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().length == 0);
               if(!(_loc7_ && this))
               {
                  §§push(!§§pop());
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop22:
                           while(true)
                           {
                              §§pop();
                              addr260:
                              loop23:
                              while(true)
                              {
                                 §§push(param1);
                                 loop24:
                                 while(true)
                                 {
                                    §§push(§§pop() == "Incorrect code");
                                    if(_loc6_)
                                    {
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() == "Código incorrecto");
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               addr63:
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          break loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == "Código ya utilizado");
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc7_ && this)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr116:
                                                                                                      addr176:
                                                                                                      loop18:
                                                                                                      while(_loc6_ || param1)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_ && _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break loop6;
                                                                                                                     }
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(§§pop() == "Code already used");
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc7_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           break loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc7_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        break loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                                  addr230:
                                                                                                               }
                                                                                                               if(!(_loc6_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(param1);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               if(_loc7_ && _loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               §§push(§§pop() == "<Type code here>");
                                                                                                               if(_loc7_ && _loc3_)
                                                                                                               {
                                                                                                                  addr274:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  break loop24;
                                                                                                               }
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc6_ || this))
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               §§goto(addr63);
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                            addr127:
                                                                                                         }
                                                                                                         §§goto(addr274);
                                                                                                      }
                                                                                                      while(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr186:
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr230);
                                                                                                                  §§goto(addr186);
                                                                                                               }
                                                                                                               addr229:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr274);
                                                                                                         §§goto(addr116);
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             break loop7;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       addr93:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr93);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr127);
                                                                              }
                                                                           }
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     §§goto(addr116);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                            addr271:
                                                            §§push(!§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr274);
                                                            }
                                                            break loop24;
                                                         }
                                                         break;
                                                      }
                                                      §§push(§§pop() == "<Introduzca el código aquí>");
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                       addr238:
                                    }
                                    break;
                                 }
                                 var _loc2_:* = §§pop();
                                 if(!_loc7_)
                                 {
                                    §§push(this.§!!]§);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(false);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§pop();
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr328);
                                                            }
                                                            §§goto(addr394);
                                                         }
                                                         §§goto(addr391);
                                                      }
                                                      §§goto(addr414);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr328);
                                             }
                                             §§goto(addr391);
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr391);
                                    }
                                    addr328:
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          _loc3_ = "code";
                                          _loc4_ = {
                                             "playerId":§@!^§.§2j§.id,
                                             "code":param1
                                          };
                                          _loc5_ = new §'k§(_loc4_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
                                          if(_loc6_)
                                          {
                                             this.§!!]§ = true;
                                             if(!_loc7_)
                                             {
                                                (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§3!S§);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr414:
                                          (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.ENTER_CODE));
                                          if(!_loc7_)
                                          {
                                             addr436:
                                             dispatchEvent(new §3!d§(§3!d§.§9!v§));
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§!!]§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(false);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc7_)
                                             {
                                                addr391:
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr394:
                                                      §§pop();
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc7_)
                                                         {
                                                            addr406:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§goto(addr414);
                                                               }
                                                               §§goto(addr436);
                                                            }
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                   }
                                                }
                                                §§goto(addr406);
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr391);
                                       }
                                       §§goto(addr406);
                                    }
                                    return;
                                 }
                                 §§goto(addr414);
                              }
                           }
                           addr259:
                        }
                        §§goto(addr238);
                     }
                  }
                  §§goto(addr271);
               }
               §§goto(addr259);
            }
         }
         §§goto(addr260);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         if(_loc4_)
         {
            this.§!!]§ = false;
            while(true)
            {
               this.§3!S§.close();
               loop1:
               while(true)
               {
                  §§push(Boolean(_loc2_));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr454:
                              while(_loc4_)
                              {
                                 §§push(Boolean(_loc2_.items));
                              }
                              continue loop1;
                           }
                           addr453:
                        }
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr446:
                                       while(true)
                                       {
                                          §§push(Boolean(_loc2_.itemsSecurity));
                                       }
                                    }
                                    addr445:
                                 }
                                 while(true)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop13:
                                       while(_loc4_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr436:
                                                while(true)
                                                {
                                                   §§push(Boolean(_loc2_.id));
                                                }
                                                addr136:
                                                if(_loc5_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop());
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop40:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr153:
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop40;
                                                                              }
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§'k§.§5-§(_loc2_.id,_loc2_.items) == _loc2_.itemsSecurity);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    addr400:
                                                                                    loop22:
                                                                                    while(!§§pop())
                                                                                    {
                                                                                       §§push(Boolean(_loc2_));
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop24:
                                                                                          for(; !_loc5_; if(_loc5_)
                                                                                          {
                                                                                             continue;
                                                                                          },if(§§pop())
                                                                                          {
                                                                                             §§goto(addr236);
                                                                                          },§§goto(addr187))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             addr334:
                                                                                             while(true)
                                                                                             {
                                                                                                addr335:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr340:
                                                                                                         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.CODE_USED));
                                                                                                      }
                                                                                                      dispatchEvent(new §3!d§(§3!d§.§!e§));
                                                                                                      addr324:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr30);
                                                                                                      }
                                                                                                      addr348:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(Boolean(_loc2_));
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop30:
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr308:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        break loop40;
                                                                                                                     }
                                                                                                                     addr308:
                                                                                                                  }
                                                                                                                  loop34:
                                                                                                                  while(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(Boolean(_loc2_));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           while(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                           addr221:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr257:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                           §§goto(addr453);
                                                                                                                        }
                                                                                                                        §§goto(addr454);
                                                                                                                     }
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop20;
                                                                                                                        addr236:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           addr243:
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr251:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_.error == "PLAYER_BANNED");
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              addr251:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 break loop30;
                                                                                                                                 §§goto(addr243);
                                                                                                                              }
                                                                                                                              addr415:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr274:
                                                                                                                        §§push(§ !g§.§;!'§);
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           (§§pop() as §`Y§).§>";§.openPopup(new §9!%§());
                                                                                                                           addr287:
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr30);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr454);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr403:
                                                                                                                           (§§pop() as §`Y§).§>";§.openPopup(new §-"E§());
                                                                                                                           §7!r§.§[!1§.§-!F§();
                                                                                                                           dispatchEvent(new §3!d§(§3!d§.§+T§));
                                                                                                                           addr409:
                                                                                                                           addr388:
                                                                                                                        }
                                                                                                                        §§goto(addr30);
                                                                                                                     }
                                                                                                                     if(_loc5_ && _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr409);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                                  addr30:
                                                                                                                  return;
                                                                                                               }
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  §§goto(addr419);
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§goto(addr445);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr446);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop7;
                                                                                       §§goto(addr153);
                                                                                    }
                                                                                    §§goto(addr403);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr136);
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr436);
                                                                     addr161:
                                                                     addr132:
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      while(!(_loc5_ && param1))
                                                      {
                                                         §§goto(addr257);
                                                         §§push(_loc2_.error == "PLAYER_NOT_VERIFIED");
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr103);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr415);
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
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               §§goto(addr198);
               §§push(§ !g§.§;!'§);
            }
         }
         §§goto(addr251);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §3!d§(§3!d§.§-l§));
         }
         do
         {
            this.§!!]§ = false;
         }
         while(_loc3_ && this);
         
      }
   }
}
