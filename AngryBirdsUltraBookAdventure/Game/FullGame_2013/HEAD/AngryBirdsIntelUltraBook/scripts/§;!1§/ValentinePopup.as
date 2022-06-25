package §;!1§
{
   import §"$§.Popup;
   import §5=§.§9F§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§[!<§;
      
      private static var sData:Object;
      
      {
         var sLoadingStarted:Boolean = false;
         var sLoader:Boolean = true;
         if(!sLoadingStarted)
         {
            while(true)
            {
               while(!sLoadingStarted)
               {
                  if(!sLoadingStarted)
                  {
                     return;
                     addr28:
                  }
               }
            }
         }
         §§goto(addr28);
      }
      
      public function ValentinePopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && currentUIView)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr106:
                  while(true)
                  {
                     super(§+q§.§%M§.Views.PopupView_Valentine[0],currentUIView);
                     addr103:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  addr69:
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr81:
                  if(_loc4_)
                  {
                     addr62:
                     while(_loc3_ || _loc3_)
                     {
                        §§goto(addr69);
                        §§goto(addr81);
                     }
                     continue loop0;
                     addr62:
                  }
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        return;
                        addr40:
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr103);
               }
            }
         }
         while(true)
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!b§);
            §§goto(addr62);
         }
         §§goto(addr40);
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               §§push(sLoadingStarted);
               if(!(_loc1_ && ValentinePopup))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               loop1:
               while(true)
               {
                  addr254:
                  while(true)
                  {
                     sLoadingStarted = true;
                     continue loop1;
                  }
               }
               if(!(_loc2_ || ValentinePopup))
               {
                  continue;
               }
               §§goto(addr104);
               §§push(sLoader);
            }
            return;
         }
         while(true)
         {
            §§goto(addr188);
         }
      }
      
      protected static function §`3§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && ValentinePopup)
         {
         }
         if(_loc2_ || ValentinePopup)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(e.type != RetryingURLLoaderErrorEvent.§6!O§)
               {
                  §9u§.§#"§();
                  loop2:
                  while(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!(_loc2_ || ValentinePopup))
                        {
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 break loop2;
                              }
                              §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                           }
                           break loop1;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                  }
                  while(!_loc3_)
                  {
                     §§goto(addr108);
                  }
                  continue;
               }
               §§goto(addr105);
            }
            return;
         }
      }
      
      private static function §5f§(e:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || onInitDataLoaded$1)
         {
         }
         if(_loc5_ || _loc3_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = e;
            while(true)
            {
               loop2:
               for(; !_loc4_; if(!(_loc5_ || _loc3_))
               {
                  continue;
               },§§goto(addr62))
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(false);
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        §§pop().§§slot[2] = §§pop();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr62:
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop4;
                           }
                           try
                           {
                              sData = JSON.parse(sLoader.data);
                              if(_loc5_)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr139:
                                    §§push(parsingFailed);
                                    if(!(_loc4_ && e))
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_ || onInitDataLoaded$1)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_ || e)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc4_ && onInitDataLoaded$1))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && e))
                                                {
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(sData.success == true);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                      addr265:
                                                      if(!§§pop())
                                                      {
                                                         §9u§.§#"§();
                                                         addr224:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr213:
                                                            sLoader = null;
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!(_loc5_ || ValentinePopup))
                                                                        {
                                                                           §9u§.§@^§();
                                                                           addr256:
                                                                           §§goto(addr213);
                                                                           addr256:
                                                                           addr267:
                                                                           addr266:
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         addr250:
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr266);
                                                      addr184:
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr184);
                           }
                           catch(e:Error)
                           {
                              var _loc3_:* = e;
                              if(_loc5_)
                              {
                                 if(_loc5_ || ValentinePopup)
                                 {
                                    §§push(onInitDataLoaded$1);
                                    §§push(true);
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    §§pop().§§slot[2] = §§pop();
                                 }
                              }
                              if(_loc4_)
                              {
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr213);
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §!b§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               this.deActivate();
               while(!_loc3_)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.deActivate();
               loop1:
               for(; _loc1_; while(!(_loc2_ && _loc1_))
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr51);
               })
               {
                  do
                  {
                     close();
                     continue loop1;
                  }
                  while(_loc2_ && _loc1_);
                  
               }
            }
         }
      }
   }
}
