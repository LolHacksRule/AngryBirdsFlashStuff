package §%!4§
{
   import §##§.§9![§;
   import §##§.Popup;
   import §4!9§.§6"§;
   import §7p§.§+!N§;
   import §?t§.PopupsUIView;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!e§
   {
      
      protected static var sBaseView:§6"§;
      
      protected static var sState:StatePopupManager;
      
      public static var sItem:Object;
      
      public static var sCurrentPopup:Popup;
      
      public static var returnToShop:Boolean;
      
      private static var sViewWidth:Number;
      
      private static var sViewHeight:Number;
      
      {
         var sBaseView:Boolean = false;
         var sState:Boolean = true;
         if(sState)
         {
            loop0:
            while(true)
            {
               addr78:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §]!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            if(_loc2_ || this)
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §1!J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         §§push(sCurrentPopup == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(stage:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(true)
            {
            }
            addr201:
         }
         loop1:
         while(true)
         {
            §§push(sBaseView);
            while(true)
            {
               if(§§pop())
               {
                  continue loop1;
               }
               loop3:
               while(true)
               {
                  sState = new StatePopupManager();
                  loop4:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     while(true)
                     {
                        sBaseView = new PopupsUIView(sState);
                        loop6:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              §§push(sBaseView);
                              loop8:
                              while(true)
                              {
                                 §§pop().init(<xml></xml>,new MovieClip());
                                 addr142:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 stage.addChild(sBaseView.container.mClip);
                                 continue;
                              }
                              continue loop6;
                           }
                           continue loop4;
                        }
                        addr194:
                        if(!_loc2_)
                        {
                           return;
                        }
                        §§goto(addr201);
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_ || §]!e§)
                           {
                              §§goto(addr98);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function setViewSize(width:int, height:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || height)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(!(_loc3_ && §]!e§))
               {
                  loop2:
                  for(; _loc4_; if(!(_loc4_ || width))
                  {
                     continue;
                  },loop12:
                  while(_loc4_)
                  {
                     sViewHeight = height;
                     while(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop12;
                        }
                        if(_loc4_ || height)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr135);
                           }
                           §§goto(addr48);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr109);
                  },§§goto(addr65))
                  {
                     §§push(sBaseView);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              sViewWidth = width;
                              addr65:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop2;
                              addr87:
                              while(true)
                              {
                                 continue loop10;
                              }
                           }
                           return;
                           addr48:
                        }
                        if(_loc4_ || width)
                        {
                        }
                        while(true)
                        {
                           §§push(sBaseView);
                           loop5:
                           while(true)
                           {
                              §§push(width);
                              addr124:
                              while(true)
                              {
                                 §§pop().viewWidth = §§pop();
                                 addr135:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        if(_loc3_ && height)
                        {
                           continue;
                        }
                        §§push(height);
                        if(_loc4_)
                        {
                           §§pop().viewHeight = §§pop();
                           §§goto(addr109);
                        }
                        §§goto(addr124);
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public static function §?!K§(eggId:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || eggId)
         {
         }
         if(_loc4_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(_loc3_)
               {
                  §§push(sCurrentPopup);
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || eggPopup)
                        {
                        }
                        continue loop0;
                     }
                     addr97:
                     var eggPopup:EggCollectedPopup = new EggCollectedPopup(sBaseView,sState,eggId);
                     if(_loc4_ && _loc3_)
                     {
                     }
                     §"!#§(eggPopup);
                     addr138:
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr138);
                        }
                        return;
                     }
                     addr142:
                     §§goto(addr142);
                  }
                  addr32:
                  if(_loc4_ && §]!e§)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(sCurrentPopup);
                        if(_loc3_)
                        {
                           §§pop().close();
                           while(_loc3_ || §]!e§)
                           {
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                           }
                           continue loop0;
                           addr48:
                        }
                        §§goto(addr69);
                     }
                     continue;
                     addr41:
                  }
                  §§goto(addr97);
               }
            }
         }
      }
      
      public static function §6&§() : SyncingPopup
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && syncingPopup))
         {
            if(_loc2_)
            {
            }
         }
         var syncingPopup:SyncingPopup = new SyncingPopup(sBaseView,sState);
         if(!_loc2_)
         {
            while(true)
            {
               §"!#§(syncingPopup);
               §§goto(addr90);
            }
         }
         addr90:
         while(true)
         {
            if(!(_loc2_ && _loc3_))
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
         return syncingPopup;
      }
      
      public static function §3!T§(errorType:String = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && §]!e§)
         {
         }
         if(!_loc3_)
         {
            if(_loc4_ || §]!e§)
            {
               addr36:
            }
            try
            {
               §§push(§§findproperty(§"!#§));
               §§push(§§findproperty(ErrorPopup));
               §§push(sBaseView);
               §§push(sState);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(errorType);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc4_ || §]!e§)
                           {
                              addr76:
                              §§pop();
                              addr77:
                              §§push(ErrorPopup.GENERAL_ERROR);
                              if(_loc3_)
                              {
                              }
                              addr83:
                              §§pop().§"!#§(new §§pop().ErrorPopup(§§pop(),§§pop(),§§pop()));
                              if(_loc4_)
                              {
                                 loop0:
                                 while(errorType == ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §+!N§.§8!§();
                                             addr105:
                                             addr98:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             addr98:
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop0;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr83);
                           §§push(§§pop());
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr77);
            }
            catch(e:Error)
            {
               if(_loc3_ && errorType)
               {
               }
            }
            addr157:
            return;
         }
         §§goto(addr36);
      }
      
      public static function §[!R§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         try
         {
            §"!#§(new ServerUpdatedPopup(sBaseView,sState));
            if(_loc2_ && _loc2_)
            {
            }
         }
         catch(e:Error)
         {
            if(_loc3_ || _loc3_)
            {
            }
         }
      }
      
      public static function §finally§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_)
         {
         }
         try
         {
            §"!#§(new WarningPopup(sBaseView,sState));
            if(_loc2_ || _loc3_)
            {
            }
         }
         catch(e:Error)
         {
            if(_loc3_)
            {
            }
         }
      }
      
      public static function §&R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!(_loc1_ && §]!e§))
         {
            while(true)
            {
               §"!#§(new ValentinePopup(sBaseView,sState));
               while(_loc2_ || §]!e§)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function §<!5§(levelId:String, levelName:String, score:int, shareType:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && score))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(!_loc6_)
                        {
                           §"!#§(new EmbedPopup(sBaseView,sState,levelId,levelName,score,shareType));
                           loop5:
                           while(_loc5_ || levelName)
                           {
                              continue loop3;
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                        continue loop0;
                     }
                     if(!(_loc5_ || §]!e§))
                     {
                        continue;
                     }
                     §§goto(addr99);
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private static function §"!#§(popup:Popup, useFadeEffect:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(sCurrentPopup);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is ErrorPopup);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(sCurrentPopup);
                                             while(true)
                                             {
                                                §§push(§§pop() is ServerUpdatedPopup);
                                                addr410:
                                                while(_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop8;
                                                loop15:
                                                while(_loc3_ || useFadeEffect)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(sCurrentPopup);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() is WarningPopup);
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop22:
                                                                        while(!_loc4_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(sCurrentPopup);
                                                                                       addr323:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§push(§§pop() is SyncingPopup);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr410);
                                                                                 addr363:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          loop39:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc4_ && useFadeEffect))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             loop40:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(sCurrentPopup);
                                                                                                if(_loc4_ && useFadeEffect)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§pop().deActivate();
                                                                                                   loop41:
                                                                                                   while(!(_loc4_ && §]!e§))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                         {
                                                                                                            break loop39;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            sCurrentPopup = popup;
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_ && useFadeEffect)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     popup.open(useFadeEffect);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && §]!e§))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  continue loop41;
                                                                                                                  if(!(_loc3_ || useFadeEffect))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!(_loc4_ && §]!e§))
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr415);
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         if(_loc4_ && popup)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr76);
                                                                                                               }
                                                                                                               §§goto(addr366);
                                                                                                            }
                                                                                                            §§goto(addr310);
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr414);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr366);
      }
      
      private static function §%!@§(e:§9![§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && §]!e§))
         {
            while(true)
            {
               addr70:
               if(!(_loc2_ || §]!e§))
               {
                  continue;
               }
               addr77:
               if(_loc2_)
               {
                  if(!_loc2_)
                  {
                     loop3:
                     while(_loc2_)
                     {
                        sCurrentPopup = null;
                        while(!(_loc3_ && e))
                        {
                           §§goto(addr70);
                           §§goto(addr77);
                        }
                        while(true)
                        {
                           continue loop3;
                           §§goto(addr63);
                        }
                        addr63:
                     }
                     while(e.popup == sCurrentPopup)
                     {
                        §§goto(addr84);
                     }
                     addr28:
                     return;
                     addr90:
                  }
                  §§goto(addr28);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr90);
      }
   }
}
