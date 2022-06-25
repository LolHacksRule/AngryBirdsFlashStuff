package §9!!§
{
   import § $§.§-!Q§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §85§ extends GoogleAnalyticsTracker
   {
      
      private static const DEBUG_MODE:Boolean;
      
      private static const CATEGORY_POWERUP_USED:String = "powerup-used";
      
      private static const CATEGORY_LEVEL_POWERUP_USED:String = "level-powerup-used";
      
      private static const CATEGORY_POWERUP_LEVEL_COMPLETED:String;
      
      private static const CATEGORY_LEVEL_POWERUP_COMPLETED:String;
      
      private static const CATEGORY_FRAMERATE:String = "framerate";
      
      private static const CATEGORY_EXTERNAL_PAUSE:String = "external-pause";
      
      private static const CATEGORY_GIFT:String = "gift";
      
      private static const CATEGORY_SHOP:String = "shop";
      
      private static const CATEGORY_BRAG:String = "brag";
      
      private static const CATEGORY_INVITE:String = "invite";
      
      private static const CATEGORY_AVATAR:String = "avatar";
      
      private static const CATEGORY_WARNING:String = "warning";
      
      private static const CATEGORY_USER_STATISTICS:String = "user-statistics";
      
      private static const CATEGORY_ERROR:String = "error";
      
      private static const ACTION_EXTERNAL_PAUSED:String = "paused";
      
      private static const ACTION_EXTERNAL_RESUMED:String = "resumed";
      
      private static const ACTION_GIFT_CLAIMED:String = "gift-claimed";
      
      private static const ACTION_CAMPAIGN_GIFT_CLAIMED:String = "campaign-gift-claimed";
      
      private static const ACTION_SHOP_OPEN:String = "opened";
      
      private static const ACTION_SHOP_PRODUCT_SELECTED:String = "product-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_SELECTED:String = "product-buy-selected";
      
      private static const ACTION_SHOP_PRODUCT_BUY_COMPLETED:String = "product-buy-completed";
      
      private static const ACTION_BRAG_SHOWN:String = "brag-shown";
      
      private static const ACTION_BRAG_CLICKED:String = "brag-clicked";
      
      private static const ACTION_INVITE_FRIEND_CLICKED:String = "friend-clicked";
      
      private static const ACTION_INVITE_GENERIC_CLICKED:String = "generic-clicked";
      
      private static const ACTION_AVATAR_OPEN:String = "opened";
      
      private static const ACTION_AVATAR_SET:String = "set";
      
      private static const ACTION_AVATAR_PRODUCT_SET:String = "product-set";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_SELECTED:String = "product-buy-selected";
      
      private static const ACTION_AVATAR_PRODUCT_BUY_COMPLETED:String = "product-buy-completed";
      
      private static const ACTION_AVATAR_SHARE_CLICKED:String = "share-clicked";
      
      private static const ACTION_AVATAR_SHARE_COMPLETED:String = "share-completed";
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String;
      
      private static const ACTION_WARNING_DOWNLOAD_FAILED:String = "download-failed";
      
      private static const ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED:String = "3rd-party-cookies-missing";
      
      private static const ACTION_WARNING_INVALID_LEVEL:String = "invalid-level";
      
      private static const ACTION_WARNING_FLASHVAR_MISSING:String = "flash-var-missing";
      
      private static const ACTION_USER_STATISTIC_FRIEND_COUNT:String = "friend-count";
      
      private static const ACTION_ADVERTISEMENT_CLICK:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array;
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array;
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array;
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var sLevelsReportedFPS:Array;
      
      private static var sGiftsClaimed:int = 0;
      
      private static var sExternalPauses:int = 0;
      
      private static var sExternalPauseStart:int = 0;
      
      private static var sPreviousPowerupUseTime:int = 0;
      
      {
         var DEBUG_MODE:Boolean = false;
         var CATEGORY_POWERUP_USED:Boolean = true;
         if(!DEBUG_MODE)
         {
            loop0:
            while(true)
            {
               DEBUG_MODE = AngryBirdsFP11.DEBUG_MODE_ENABLED;
               while(true)
               {
                  while(true)
                  {
                     CATEGORY_POWERUP_USED = "powerup-used";
                     while(true)
                     {
                        while(true)
                        {
                           CATEGORY_LEVEL_POWERUP_USED = "level-powerup-used";
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(§§findproperty(CATEGORY_POWERUP_LEVEL_COMPLETED));
                                 §§push("powerup-");
                                 if(!(DEBUG_MODE && §85§))
                                 {
                                    §§push(§§pop() + §9k§);
                                 }
                                 §§pop().CATEGORY_POWERUP_LEVEL_COMPLETED = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       CATEGORY_LEVEL_POWERUP_COMPLETED = §9k§ + "-powerup";
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             CATEGORY_FRAMERATE = "framerate";
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   CATEGORY_EXTERNAL_PAUSE = "external-pause";
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         CATEGORY_GIFT = "gift";
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               CATEGORY_SHOP = "shop";
                                                               continue loop0;
                                                               addr521:
                                                               if(!(CATEGORY_POWERUP_USED || §85§))
                                                               {
                                                                  continue;
                                                               }
                                                               ACTION_WARNING_FLASHVAR_MISSING = "flash-var-missing";
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!DEBUG_MODE)
                                                                     {
                                                                        if(CATEGORY_POWERUP_USED)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        while(!(DEBUG_MODE && DEBUG_MODE))
                                                                        {
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              ACTION_SHOP_PRODUCT_BUY_SELECTED = "product-buy-selected";
                                                                              addr778:
                                                                              while(!DEBUG_MODE)
                                                                              {
                                                                                 continue loop42;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr823);
                                                                           §§goto(addr788);
                                                                        }
                                                                        addr788:
                                                                     }
                                                                     break;
                                                                     if(!(CATEGORY_POWERUP_USED || CATEGORY_POWERUP_USED))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr267);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     ACTION_INVITE_FRIEND_CLICKED = "friend-clicked";
                                                                     §§goto(addr730);
                                                                  }
                                                                  while(CATEGORY_POWERUP_USED || DEBUG_MODE)
                                                                  {
                                                                     §§goto(addr423);
                                                                  }
                                                               }
                                                            }
                                                            if(DEBUG_MODE && DEBUG_MODE)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr569);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(CATEGORY_POWERUP_USED || §85§))
                                       {
                                          continue;
                                       }
                                       §§goto(addr433);
                                    }
                                 }
                                 if(DEBUG_MODE && §85§)
                                 {
                                    continue;
                                 }
                                 §§goto(addr42);
                              }
                              while(!(DEBUG_MODE && CATEGORY_POWERUP_USED))
                              {
                                 CATEGORY_INVITE = "invite";
                                 §§goto(addr904);
                              }
                           }
                           addr922:
                           while(CATEGORY_POWERUP_USED || DEBUG_MODE)
                           {
                              CATEGORY_BRAG = "brag";
                              §§goto(addr919);
                           }
                        }
                     }
                  }
                  while(CATEGORY_POWERUP_USED || CATEGORY_POWERUP_USED)
                  {
                     §§goto(addr798);
                     §§goto(addr471);
                  }
               }
            }
         }
         §§goto(addr433);
      }
      
      public function §85§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         while(true)
         {
            while(!_loc1_)
            {
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §4l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §85§)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               if(Math.random() <= 0.1)
               {
                  while(true)
                  {
                     addr110:
                     while(true)
                     {
                        sSample10Percent = true;
                        addr102:
                        while(true)
                        {
                           addr97:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr109:
               }
               loop4:
               while(Math.random() <= 0.01)
               {
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr109);
                     do
                     {
                        sSample1Percent = true;
                        while(!_loc2_)
                        {
                        }
                     }
                     while(_loc1_);
                     
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break loop4;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr97);
               }
               return;
            }
         }
         §§goto(addr97);
      }
      
      public static function §#!j§(errorID:int, time:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc5_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     trace("Client error: " + errorID);
                     continue loop1;
                     addr80:
                     if(!(_loc5_ && §85§))
                     {
                        loop6:
                        while(true)
                        {
                           §,!=§(GoogleAnalyticsTracker.ACTION_APPLICATION_CRASH,errorID.toString(),time);
                           while(_loc5_ && urlLoader)
                           {
                           }
                           if(_loc4_ || urlLoader)
                           {
                              continue loop2;
                           }
                           addr78:
                           while(!_loc5_)
                           {
                              §§goto(addr80);
                              continue loop6;
                           }
                           continue loop1;
                        }
                        continue loop2;
                        addr55:
                     }
                  }
               }
            }
            if(_loc5_ && errorID)
            {
               continue;
            }
            if(false)
            {
               §§goto(addr55);
            }
            var urlLoader:URLLoader = new URLLoader();
            if(_loc5_)
            {
            }
            urlLoader.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/clienterror/" + errorID));
            addr154:
            if(_loc4_)
            {
               if(!_loc4_)
               {
                  §§goto(addr154);
               }
               return;
            }
            addr158:
            §§goto(addr158);
         }
      }
      
      public static function §,!=§(action:String, label:String = null, value:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc5_ && §85§)
         {
         }
         while(true)
         {
            loop1:
            for(; !(_loc5_ && action); if(_loc5_ && §85§)
            {
               continue;
            },if(false)
            {
               §§goto(addr54);
            },§§push(§3"§(action,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)),if(_loc6_)
            {
               §§push(§§pop());
            },var trackingFunction:* = §§pop(),if(!_loc5_)
            {
               GoogleAnalyticsTracker.trackSampledEvent(trackingFunction,§@$§,action,label,value);
               addr120:
            },if(_loc6_)
            {
               if(!_loc6_)
               {
                  §§goto(addr120);
               }
               return;
            },addr118:,§§goto(addr118))
            {
               loop2:
               while(true)
               {
                  addr54:
                  while(true)
                  {
                     while(!_loc6_)
                     {
                     }
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function §=i§(powerupType:String, level:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || powerupType)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               addr69:
               loop1:
               while(true)
               {
                  addr54:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               addr45:
               if(!(_loc5_ || time))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr54);
               }
               §§goto(addr72);
            }
         }
         while(true)
         {
            if(!(_loc5_ || time))
            {
               continue;
            }
            if(_loc5_ || level)
            {
               §§goto(addr45);
            }
            §§goto(addr69);
         }
         addr72:
         §§push(§4C§());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var time:* = §§pop();
         if(_loc5_ || powerupType)
         {
            while(true)
            {
               §`!V§(CATEGORY_POWERUP_USED,powerupType,level,0);
            }
            addr145:
         }
         loop5:
         do
         {
            while(!_loc4_)
            {
               §`!V§(CATEGORY_LEVEL_POWERUP_USED,level,powerupType,0);
               while(!_loc4_)
               {
                  if(!(_loc4_ && §85§))
                  {
                     continue loop5;
                  }
               }
            }
            §§goto(addr145);
         }
         while(!(_loc5_ || time));
         
      }
      
      public static function §2e§(powerupsUsed:Array, level:String, score:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var action:String = null;
         if(_loc5_)
         {
            while(true)
            {
               loop1:
               for(; !(_loc6_ && §85§); while(!(_loc6_ && score))
               {
                  §§push(§9!7§(powerupsUsed));
                  if(_loc5_ || §85§)
                  {
                     §§push(§§pop());
                  }
                  §§goto(addr153);
               })
               {
                  while(true)
                  {
                     addr183:
                     addr26:
                     while(enabled)
                     {
                        while(true)
                        {
                           addr180:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     return;
                     loop11:
                     for(; !(_loc6_ && powerupsUsed); if(!(_loc5_ || score))
                     {
                        continue;
                     },if(_loc6_)
                     {
                        §§goto(addr133);
                     },§§goto(addr26))
                     {
                        §`!V§(CATEGORY_POWERUP_LEVEL_COMPLETED,action,level,score);
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §`!V§(CATEGORY_LEVEL_POWERUP_COMPLETED,level,action,score);
                                 continue;
                              }
                              §§goto(addr183);
                           }
                           if(_loc5_ || §85§)
                           {
                              continue loop11;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      public static function §3!d§(frameRate:int, levelId:String, isSoftware:Boolean, isFullScreen:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || frameRate)
         {
         }
         var reportType:String = null;
         if(_loc7_ || isSoftware)
         {
            loop0:
            while(true)
            {
               do
               {
                  continue loop0;
               }
               while(_loc8_ && frameRate);
               
               return;
            }
         }
         §§goto(addr72);
      }
      
      public static function §6!G§(id:String, count:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && §85§))
         {
            if(_loc6_)
            {
               while(_loc6_)
               {
                  if(_loc6_ || §85§)
                  {
                     if(false)
                     {
                        continue;
                     }
                     addr130:
                     var _loc3_:*;
                     §§push((_loc3_ = §§findproperty(sGiftsClaimed)).sGiftsClaimed);
                     if(_loc6_ || §85§)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc4_:* = §§pop();
                     if(_loc6_ || id)
                     {
                        _loc3_.sGiftsClaimed = _loc4_;
                     }
                     if(_loc6_ || §85§)
                     {
                        break;
                     }
                     while(true)
                     {
                        §`!V§(CATEGORY_GIFT,ACTION_GIFT_CLAIMED,id,count);
                        §§goto(addr128);
                     }
                  }
                  addr128:
                  §§goto(addr117);
               }
               §§goto(addr130);
            }
            addr117:
            while(true)
            {
               if(_loc6_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     break;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr128);
      }
      
      public static function §8!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §85§)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §`!V§(CATEGORY_GIFT,ACTION_CAMPAIGN_GIFT_CLAIMED,null,0);
               §§goto(addr80);
            }
         }
         addr80:
         while(true)
         {
            if(!(_loc1_ && §85§))
            {
               if(_loc2_ || §85§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §^!R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc3_)
            {
               addr31:
               var _loc1_:*;
               §§push((_loc1_ = §§findproperty(sExternalPauses)).sExternalPauses);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  _loc1_.sExternalPauses = _loc2_;
               }
               if(!_loc3_)
               {
                  while(true)
                  {
                     sExternalPauseStart = §4C§();
                  }
                  addr118:
               }
               loop4:
               while(true)
               {
                  addr101:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop4;
                     }
                     if(_loc4_ || §85§)
                     {
                        break;
                     }
                     §§goto(addr118);
                     continue loop4;
                  }
               }
            }
            while(true)
            {
               §`!V§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_PAUSED,sExternalPauses.toString(),sExternalPauseStart);
               while(!(_loc3_ && §85§))
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               §§goto(addr101);
               §§goto(addr103);
            }
         }
         §§goto(addr31);
      }
      
      public static function §;e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §`!V§(CATEGORY_EXTERNAL_PAUSE,ACTION_EXTERNAL_RESUMED,"",§4C§(sExternalPauseStart));
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(!(_loc1_ || _loc2_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §#!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(DEBUG_MODE);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §'3§(productType:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && §85§)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               do
               {
                  §§push(DEBUG_MODE);
                  if(!(_loc3_ && §85§))
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
                  do
                  {
                     §`!V§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_SELECTED,productType,0);
                     while(!_loc2_)
                     {
                     }
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(_loc3_);
               
               return;
            }
         }
         §§goto(addr55);
      }
      
      public static function §8M§(product:String, count:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!(_loc4_ && §85§))
                  {
                     while(true)
                     {
                        §§push(DEBUG_MODE);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!(_loc3_ || product))
                        {
                           do
                           {
                              §`!V§(CATEGORY_SHOP,ACTION_SHOP_PRODUCT_BUY_SELECTED,product,count,false);
                              while(_loc4_)
                              {
                              }
                           }
                           while(!(_loc3_ || count));
                           
                           break;
                        }
                        addr95:
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public static function §!!$§(product:String, count:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || §85§)
         {
            while(true)
            {
               while(!(_loc3_ && _loc3_))
               {
                  loop2:
                  while(true)
                  {
                     §§push(DEBUG_MODE);
                     if(!(_loc3_ && §85§))
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr104);
      }
      
      public static function §8!0§(position:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && §85§)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(true)
            {
            }
            addr87:
         }
         while(true)
         {
            §`!V§(CATEGORY_BRAG,ACTION_BRAG_SHOWN,position,0);
            for(; _loc3_; if(!(_loc2_ && _loc3_))
            {
               return;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr87);
            }
         }
      }
      
      public static function §&!0§(position:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || position)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               §`!V§(CATEGORY_BRAG,ACTION_BRAG_CLICKED,position,0);
               while(!_loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc3_);
         
      }
      
      public static function §9Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               §`!V§(CATEGORY_INVITE,ACTION_INVITE_FRIEND_CLICKED,null,0);
               while(!_loc1_)
               {
                  if(_loc2_ || §85§)
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §'!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §`!V§(CATEGORY_INVITE,ACTION_INVITE_GENERIC_CLICKED,null,0);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public static function §return§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && §85§)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         do
         {
            §`!V§(CATEGORY_AVATAR,ACTION_AVATAR_OPEN,null,0);
            while(_loc2_ && §85§)
            {
            }
         }
         while(_loc2_);
         
      }
      
      public static function §0!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               §`!V§(CATEGORY_AVATAR,ACTION_AVATAR_SET,null,0);
               while(_loc1_ || §85§)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      public static function §2f§(product:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && product)
         {
         }
         if(_loc3_ || §85§)
         {
            while(true)
            {
               while(_loc3_ || _loc3_)
               {
                  §`!V§(CATEGORY_AVATAR,ACTION_AVATAR_PRODUCT_SET,product,0);
                  while(!(_loc2_ && §85§))
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function §&6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         do
         {
            §`!V§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_CLICKED,null,0);
            while(_loc1_ && §85§)
            {
            }
         }
         while(_loc1_ && §85§);
         
      }
      
      public static function §-!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && §85§)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         while(true)
         {
            §`!V§(CATEGORY_AVATAR,ACTION_AVATAR_SHARE_COMPLETED,null,0);
            while(_loc1_)
            {
               if(_loc1_ || §85§)
               {
                  return;
               }
            }
         }
      }
      
      public static function §+5§(product:String, priceCredits:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr116:
         }
         loop1:
         while(true)
         {
            do
            {
               §§push(DEBUG_MODE);
               if(_loc4_ || _loc3_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               do
               {
                  continue loop1;
               }
               while(_loc3_ && priceCredits);
               
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
      }
      
      public static function §[!I§(product:String, priceCredits:int = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || priceCredits)
         {
            while(true)
            {
            }
            addr111:
         }
         loop1:
         while(true)
         {
            addr106:
            while(true)
            {
               §§push(DEBUG_MODE);
               if(!(_loc3_ && priceCredits))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               continue loop1;
            }
            addr29:
            return;
         }
      }
      
      public static function §true §(fileName:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_ && _loc3_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               §`!V§(CATEGORY_WARNING,ACTION_WARNING_DOWNLOAD_FAILED,fileName,0);
               while(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_);
         
      }
      
      public static function §0+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            do
            {
               §`!V§(CATEGORY_WARNING,ACTION_WARNING_3RD_PARTY_COOKIES_DISABLED,null,0);
               while(_loc1_ && _loc2_)
               {
               }
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §<!d§(levelId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(levelId);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        §§push(levelId);
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop().length == 0)
                           {
                              loop3:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push("[empty]");
                                    if(_loc3_ || §85§)
                                    {
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(_loc3_ || levelId)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop2;
                                          addr140:
                                       }
                                       while(true)
                                       {
                                          addr162:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       addr161:
                                       while(true)
                                       {
                                          levelId = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             addr43:
                                             loop5:
                                             while(true)
                                             {
                                                §`!V§(CATEGORY_WARNING,ACTION_WARNING_INVALID_LEVEL,levelId,0);
                                                addr53:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr155:
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr160:
                                 }
                                 §§goto(addr161);
                              }
                           }
                           §§goto(addr43);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr160);
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      public static function §"!V§(variable:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(_loc2_ || §85§)
               {
                  §`!V§(CATEGORY_WARNING,ACTION_WARNING_FLASHVAR_MISSING,variable,0);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public static function §%>§(count:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && §85§))
         {
            while(true)
            {
               loop1:
               while(!_loc2_)
               {
                  §`!V§(CATEGORY_USER_STATISTICS,ACTION_USER_STATISTIC_FRIEND_COUNT,count.toString(),count);
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function §"!,§(url:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            do
            {
               do
               {
                  §`!V§(CATEGORY_USER_STATISTICS,ACTION_ADVERTISEMENT_CLICK,url,0);
                  while(_loc2_ && url)
                  {
                  }
               }
               while(!(_loc3_ || url));
               
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §6!U§(errorDescription:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               §`!V§(CATEGORY_ERROR,errorDescription,"",0,false);
               while(!(_loc2_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private static function §`!V§(category:String, action:String, label:String, value:int, sampling:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var trackingFunction:* = null;
         if(!(_loc7_ && category))
         {
            loop0:
            while(true)
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
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(enabled)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(!_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§[%§);
                                       loop9:
                                       while(true)
                                       {
                                          trackingFunction = §§pop();
                                          while(true)
                                          {
                                             loop11:
                                             while(!(_loc7_ && label))
                                             {
                                                if(!sampling)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      trackSampledEvent(trackingFunction,category,action,label,value);
                                                      addr64:
                                                      addr100:
                                                      while(!(_loc7_ && §85§))
                                                      {
                                                         addr71:
                                                         if(_loc8_ || §85§)
                                                         {
                                                            addr78:
                                                            if(!(_loc7_ && action))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && label))
                                                                  {
                                                                     addr45:
                                                                     if(_loc8_ || label)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue;
                                                                  continue;
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr133:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr78);
                                                            }
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§3"§(category,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES));
                                                               if(_loc8_ || §85§)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop());
                                                               }
                                                               trackingFunction = §§pop();
                                                               continue loop1;
                                                            }
                                                            continue loop7;
                                                            §§goto(addr71);
                                                         }
                                                         continue loop3;
                                                      }
                                                      while(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§goto(addr64);
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr133);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      private static function §3"§(type:String, sample100Percent:Array, sample1Percent:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || sample1Percent)
         {
         }
         if(!(_loc5_ && §85§))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(sample1Percent);
                  addr126:
                  loop2:
                  while(true)
                  {
                     §§push(type);
                     addr127:
                     while(§§pop().indexOf(§§pop()) < 0)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               return TRACKING_FUNCTION_1_PERCENT;
            }
            addr149:
         }
         while(true)
         {
            §§push(sample100Percent);
            if(_loc4_ || sample100Percent)
            {
               §§push(type);
               if(_loc4_)
               {
                  if(§§pop().indexOf(§§pop()) >= 0)
                  {
                     break;
                  }
                  if(_loc4_ || §85§)
                  {
                     if(_loc4_)
                     {
                        return TRACKING_FUNCTION_10_PERCENT;
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr130);
               }
               §§goto(addr127);
            }
            §§goto(addr126);
         }
         return §[%§;
      }
      
      private static function §9!7§(originalData:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var powerup:String = null;
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc7_)
                  {
                     while(!(_loc7_ && result))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            loop5:
            for(; !_loc7_; while(!(_loc7_ && originalData))
            {
               §§goto(addr101);
            })
            {
               §§push(originalData);
               while(true)
               {
                  §§push(§§pop() == null);
                  addr87:
                  addr101:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr88:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push("");
                                 if(_loc7_ && result)
                                 {
                                 }
                                 var result:* = §§pop();
                                 if(!_loc8_)
                                 {
                                 }
                                 var sortedData:Array = originalData.concat();
                                 if(_loc8_)
                                 {
                                    addr166:
                                    sortedData.sort();
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr166);
                                    }
                                    addr174:
                                    §§goto(addr174);
                                 }
                                 addr164:
                                 if(false)
                                 {
                                    §§goto(addr166);
                                 }
                              }
                              if(!(_loc8_ || originalData))
                              {
                                 break;
                              }
                              if(_loc8_ || §85§)
                              {
                                 break;
                              }
                              continue loop5;
                              var _loc5_:int = 0;
                              var _loc6_:* = sortedData;
                              addr259:
                              if(§§hasnext(_loc6_,_loc5_))
                              {
                                 addr257:
                                 powerup = §§nextvalue(_loc5_,_loc6_);
                                 addr241:
                                 if(result.length > 0)
                                 {
                                    if(!_loc8_)
                                    {
                                    }
                                    addr225:
                                    §§push(result);
                                    §§push("-");
                                    if(_loc8_ || result)
                                    {
                                       §§push(§§pop() + powerup);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc7_)
                                    {
                                       result = §§pop();
                                       addr191:
                                       §§goto(addr259);
                                       addr238:
                                    }
                                    §§goto(addr241);
                                    addr247:
                                 }
                                 addr258:
                                 addr250:
                                 §§push(powerup);
                                 if(_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          addr203:
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             result = §§pop();
                                             addr206:
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr203);
                              }
                              if(!_loc8_)
                              {
                              }
                              return result;
                           }
                           return null;
                           addr65:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop5;
                        }
                     }
                  }
                  §§push(originalData);
                  if(!(_loc8_ || result))
                  {
                     continue;
                  }
                  §§push(§§pop().length == 0);
                  if(!(_loc7_ && originalData))
                  {
                     if(!_loc7_)
                     {
                        addr61:
                        §§push(Boolean(§§pop()));
                        if(_loc8_)
                        {
                           if(!_loc8_)
                           {
                              §§goto(addr88);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr109);
         }
      }
      
      private static function §4C§(since:int = 0) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || §85§)
         {
         }
         while(!(_loc3_ || _loc3_))
         {
         }
         §§push(getTimer() / 1000);
         if(_loc3_ || since)
         {
            return §§pop() - since;
         }
      }
   }
}
