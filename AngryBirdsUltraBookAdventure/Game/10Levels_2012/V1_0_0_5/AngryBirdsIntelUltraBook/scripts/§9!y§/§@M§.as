package §9!y§
{
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §7=§.§7j§;
   import §[m§.§%!b§;
   import §[m§.Popup;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §@M§
   {
      
      protected static var §0!P§:§'!^§;
      
      protected static var §8!>§:StatePopupManager;
      
      public static var §;c§:Object;
      
      public static var §2!;§:Popup;
      
      public static var §>,§:Boolean;
      
      private static var §?!L§:Number;
      
      private static var §@!O§:Number;
       
      
      public function §@M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6w§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§2!;§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§0!P§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §8!>§ = new StatePopupManager();
                     while(_loc2_ || _loc3_)
                     {
                        §0!P§ = new §7j§(§8!>§);
                        while(_loc2_ || _loc3_)
                        {
                           if(!(_loc3_ && §@M§))
                           {
                              §§push(§0!P§);
                              continue loop0;
                           }
                           continue loop1;
                           loop6:
                           while(_loc2_ || _loc2_)
                           {
                              param1.addChild(§0!P§.§;H§.mClip);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 addr77:
                                 while(true)
                                 {
                                    §§push(§0!P§);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§pop().activateView();
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(§0!P§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr99:
                  while(true)
                  {
                     §§push(§0!P§);
                     addr100:
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           addr102:
                           while(true)
                           {
                              §§push(§0!P§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(param2);
                                 if(_loc3_ || param1)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           addr94:
                           §§pop().viewHeight = §§pop();
                        }
                     }
                  }
                  addr99:
               }
               loop0:
               while(true)
               {
                  §?!L§ = param1;
                  while(!(_loc4_ && §@M§))
                  {
                     §@!O§ = param2;
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc3_ || §@M§)
                     {
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr94);
               }
               return;
            }
            §§goto(addr100);
         }
         §§goto(addr99);
      }
      
      public static function §@!7§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§2!;§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr40:
                     §2!;§.close();
                  }
               }
               var _loc2_:§]!+§ = new §]!+§(§0!P§,§8!>§,param1);
               if(!(_loc4_ && _loc3_))
               {
                  §2N§(_loc2_);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public static function §?!K§() : §%g§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%g§ = new §%g§(§0!P§,§8!>§);
         if(!_loc3_)
         {
            §2N§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §!!g§(param1:String = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §§push(§§findproperty(§2N§));
            §§push(§§findproperty(§2v§));
            §§push(§0!P§);
            §§push(§8!>§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           addr49:
                           §§push(§2v§.§?%§);
                           if(!_loc3_)
                           {
                              addr53:
                              §§push(§§pop());
                           }
                        }
                     }
                  }
                  §§pop().§2N§(new §§pop().§2v§(§§pop(),§§pop(),§§pop()));
                  if(_loc4_ || _loc3_)
                  {
                     if(param1 == §2v§.§'1§)
                     {
                        if(_loc4_)
                        {
                           §'N§.§"!@§();
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr53);
            }
            §§goto(addr49);
         }
         catch(e:Error)
         {
         }
         addr93:
      }
      
      public static function §-!@§() : void
      {
         try
         {
            §2N§(new §switch§(§0!P§,§8!>§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-5§() : void
      {
         try
         {
            §2N§(new §!N§(§0!P§,§8!>§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2N§(new §6!6§(§0!P§,§8!>§));
         }
      }
      
      public static function §'t§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §@M§)
         {
            §2N§(new §]s§(§0!P§,§8!>§,param1,param2,param3,param4));
         }
      }
      
      private static function §2N§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§2!;§);
            loop0:
            while(true)
            {
               §§push(§§pop() is §2v§);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§2!;§);
                              while(true)
                              {
                                 §§push(§§pop() is §switch§);
                                 addr191:
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop() is §%g§);
                                 loop18:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop20:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      §§pop();
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(param1 is §2v§);
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr172:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr150:
                                                                     while(true)
                                                                     {
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(_loc3_)
                                                                              {
                                                                                 break loop21;
                                                                              }
                                                                              return;
                                                                              addr152:
                                                                           }
                                                                           addr84:
                                                                           addr184:
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(§2!;§);
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 if(_loc4_ || §@M§)
                                                                                 {
                                                                                    §§pop().deActivate();
                                                                                    loop27:
                                                                                    while(!(_loc3_ && param2))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §2!;§ = param1;
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                param1.open(param2);
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   param1.mClip.addEventListener(§%!b§.§<!k§,§6§);
                                                                                                   loop34:
                                                                                                   for(; _loc4_ || §@M§; while(true)
                                                                                                   {
                                                                                                      setViewSize(§?!L§,§@!O§);
                                                                                                      if(!(_loc3_ && §@M§))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                   },return)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr152);
                                                                                                   }
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             addr219:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§2!;§);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc4_ || param2))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr52);
                                                                                    }
                                                                                    if(_loc4_ || §@M§)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr216:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§2!;§);
                                                                                             addr218:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr77);
                                                                                                }
                                                                                                §§goto(addr219);
                                                                                                break loop26;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr263:
                                                                                    }
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1 is §switch§);
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       addr120:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       addr180:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop25;
                                                                                          §§goto(addr120);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr152);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() is §!N§);
                                                                                    addr222:
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             §§goto(addr216);
                                                                                             continue loop13;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       addr254:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop21;
                                                                                                }
                                                                                                §§goto(addr172);
                                                                                             }
                                                                                             continue loop2;
                                                                                             addr244:
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§goto(addr191);
                                                                              §§goto(addr84);
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr148:
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         continue loop20;
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr247);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr184);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       if(_loc3_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr254);
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private static function §6§(param1:§%!b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§1!g§ == §2!;§)
            {
               if(_loc2_)
               {
                  addr24:
                  §2!;§ = null;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
