package § Z§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §1!i§.§6"#§;
   import §7K§.§,T§;
   import §;"Y§.§1"z§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §]#-§
   {
      
      public static const §3!#§:int = 115;
      
      public static const §?W§:int = 30;
      
      public static const §[A§:int = 20;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]#-§)
         {
            §3!#§ = 115;
         }
         while(true)
         {
            §?W§ = 30;
            while(!_loc2_)
            {
               §[A§ = 20;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §]"u§:Boolean;
      
      public function §]#-§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:String, param5:§,T§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.view = param1;
            loop1:
            while(true)
            {
               this.§]!=§ = param4;
               while(true)
               {
                  this.§1>§ = param5;
                  while(_loc7_ || param2)
                  {
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     this.§^"N§ = param2;
                     loop4:
                     while(true)
                     {
                        this.§8!J§ = param3;
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function set dataID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!=§ = param1;
         }
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1>§ = param1;
         }
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]"u§ = param1;
         }
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.view.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.view.visible;
      }
      
      public function refresh() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§]"u§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr331:
                     this.view.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                  }
                  loop26:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§1>§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§]"u§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr109:
                                             if(!(_loc3_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             addr116:
                                             if(§§pop())
                                             {
                                                addr118:
                                                TextField(this.view.mClip.stamp.discount).text = this.§1>§.text;
                                                if(_loc3_)
                                                {
                                                   addr131:
                                                   if(_loc3_ || this)
                                                   {
                                                      addr57:
                                                      MovieClip(this.view.mClip.stamp).visible = true;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               loop21:
                                                               while(_loc3_ || _loc1_)
                                                               {
                                                                  TextField(this.view.mClip.title).text = this.§1>§.quantity + "x " + this.§1>§.itemID;
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.§1>§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().text);
                                                                           addr143:
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 addr151:
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                       addr236:
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr116);
                                                                                    }
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop21;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr269:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         TextField(this.view.mClip.cost).text = this.§1>§.price.toString();
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr343:
                                                                                                   addr343:
                                                                                                   addr343:
                                                                                                   addr371:
                                                                                                   addr454:
                                                                                                   addr422:
                                                                                                   §6"#§.§7s§(TextField(this.view.mClip.title),§[A§,§3!#§,§?W§);
                                                                                                   addr433:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      TextField(this.view.mClip.cost).mouseEnabled = false;
                                                                                                      addr413:
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         TextField(this.view.mClip.title).mouseEnabled = false;
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr413);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr403:
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   TextField(this.view.mClip.cost).text = "";
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr231:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§]!=§);
                                                                                                         addr234:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop24;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr263:
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                             addr102:
                                                                                             if(_loc4_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr109);
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             TextField(this.view.mClip.title).text = "";
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                MovieClip(this.view.mClip.stamp).visible = false;
                                                                                                §§goto(addr454);
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr403);
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    §§goto(addr193);
                                                                                    §§goto(addr151);
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr191:
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr179:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr236);
                                                                           }
                                                                           §§push(this.§1>§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr183:
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop().text);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr90:
                                                                                       §§push(§§pop() == "");
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(!(_loc3_ || _loc2_))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr143);
                                                                                 }
                                                                              }
                                                                              while(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr191);
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              continue loop3;
                                                                              addr183:
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                     addr48:
                                                                     if(!(_loc3_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr57);
                                                                     }
                                                                     try
                                                                     {
                                                                        addr333:
                                                                        MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
                                                                        §§goto(addr343);
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           MovieClip(view.mClip.icon).gotoAndStop(MovieClip(view.mClip.icon).totalFrames);
                                                                        }
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr231);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  §§goto(addr183);
                                                                  §§push(this.§1>§);
                                                                  §§goto(addr195);
                                                               }
                                                               addr195:
                                                               continue loop26;
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                      §§goto(addr131);
                                                   }
                                                   addr316:
                                                }
                                                §§goto(addr263);
                                             }
                                             MovieClip(this.view.mClip.stamp).visible = false;
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr48);
                                                }
                                                §§goto(addr57);
                                             }
                                             §§goto(addr343);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr269);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr332:
               }
               else
               {
                  §§push(this.view);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     if(!_loc4_)
                     {
                        §§pop().setComponentState(§§pop());
                        §§goto(addr316);
                     }
                     else
                     {
                        §§goto(addr331);
                     }
                  }
                  else
                  {
                     §§goto(addr331);
                  }
                  §§goto(addr331);
               }
               §§goto(addr331);
            }
         }
         §§goto(addr290);
      }
   }
}
