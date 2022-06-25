package §!!V§
{
   import § +§.§`!U§;
   import § 3§.FacebookUserProgress;
   import §!!]§.§%X§;
   import §!!]§.Avatar;
   import §!!]§.AvatarEditorTabRepeaterButton;
   import §"$§.Popup;
   import §#_§.§3a§;
   import §#_§.CustomAvatarCache;
   import §&"§.ExternalInterfaceHandler;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §3!@§.ServerIdParser;
   import §5=§.§9F§;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UIRepeaterButtonRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UIRepeaterTabRovio;
   import §6v§.§5!D§;
   import §6v§.ProfilePicture;
   import §;!1§.§9u§;
   import §;!1§.StatePopupManager;
   import §<_§.§5!2§;
   import §<_§.AvatarRenderer;
   import §<u§.§<y§;
   import §<u§.FacebookImageUploader;
   import §<u§.Log;
   import §=!5§.§`X§;
   import §>o§.§7b§;
   import §]B§.PopupsUIView;
   import §]_§.§%1§;
   import §]_§.§,v§;
   import §]_§.Item;
   import §^!7§.§+!I§;
   import com.rovio.assets.AssetCache;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class AvatarCreatorPopup extends Popup
   {
      
      private static var sAvatorCreatorPopupBin:Class;
      
      public static var sAccessToken:String;
      
      private static var sAchievementItems:Array;
      
      public static const STATE_NAME:String = "CreatorState";
      
      public static const SPOTS:Array;
      
      public static const STARTUP_CHARACTER:String = "RedBird";
      
      public static const STARTUP_CHARACTER_HAT:String = "NoHat";
      
      public static const STARTUP_CHARACTER_SID:String = "10001";
      
      public static const STARTUP_CHARACTER_CATEGORY:String = "CategoryBirds";
      
      public static var sItemsAvailable:Array;
      
      private static var sAvatarContainer:§%X§;
      
      public static var sServerRoot:String;
      
      private static var sPreviousState:String;
      
      public static var sAllAvatarItems:Array;
      
      public static var sAllItemsLoader:URLLoader;
      
      public static var sAvatars:Array;
      
      private static var sFirstTimeInit:Boolean = true;
      
      {
         var sAvatorCreatorPopupBin:Boolean = true;
         var sAccessToken:Boolean = false;
         if(!(sAccessToken && sAvatorCreatorPopupBin))
         {
            loop0:
            while(true)
            {
               sAvatorCreatorPopupBin = §6C§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        sAchievementItems = [{
                           "a":true,
                           "id":"B20007",
                           "p":0,
                           "star":100
                        },{
                           "a":true,
                           "id":"B20008",
                           "p":0,
                           "star":200
                        },{
                           "a":true,
                           "id":"B20009",
                           "p":0,
                           "star":400
                        }];
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              STATE_NAME = "CreatorState";
                              continue loop0;
                              loop16:
                              for(; !(sAccessToken && sAvatorCreatorPopupBin); if(sAccessToken && AvatarCreatorPopup)
                              {
                                 continue;
                              },if(!sAccessToken)
                              {
                                 §§goto(addr71);
                              },§§goto(addr170))
                              {
                                 while(true)
                                 {
                                    addr144:
                                    loop18:
                                    while(true)
                                    {
                                       addr122:
                                       while(!sAccessToken)
                                       {
                                          continue loop2;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          STARTUP_CHARACTER_HAT = "NoHat";
                                          addr177:
                                          while(!(sAccessToken && AvatarCreatorPopup))
                                          {
                                             if(sAvatorCreatorPopupBin)
                                             {
                                                if(!sAccessToken)
                                                {
                                                   while(sAvatorCreatorPopupBin)
                                                   {
                                                      STARTUP_CHARACTER_SID = "10001";
                                                      while(true)
                                                      {
                                                         addr162:
                                                         while(true)
                                                         {
                                                            STARTUP_CHARACTER_CATEGORY = "CategoryBirds";
                                                            continue loop16;
                                                         }
                                                         loop21:
                                                         while(!(sAccessToken && sAccessToken))
                                                         {
                                                            addr109:
                                                            if(sAvatorCreatorPopupBin || AvatarCreatorPopup)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(!sAccessToken)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr122);
                                                                  addr51:
                                                                  while(true)
                                                                  {
                                                                     if(sAccessToken && sAccessToken)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     if(sAccessToken)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     if(!sAccessToken)
                                                                     {
                                                                        if(!sAccessToken)
                                                                        {
                                                                           if(sAccessToken)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(sAvatorCreatorPopupBin)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     addr119:
                                                                     while(true)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               continue loop16;
                                                            }
                                                            addr196:
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                               §§goto(addr109);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                   addr170:
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                             if(!(sAvatorCreatorPopupBin || AvatarCreatorPopup))
                                             {
                                                continue;
                                             }
                                             §§goto(addr51);
                                          }
                                          while(true)
                                          {
                                             continue loop1;
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                    addr71:
                                    while(!(sAccessToken && sAvatorCreatorPopupBin))
                                    {
                                       §§goto(addr78);
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
         §§goto(addr144);
      }
      
      private var §%!<§:StatePopupManager;
      
      private var §%`§:Item = null;
      
      private var §>+§:Boolean = false;
      
      private var §=!F§:String;
      
      private var §case§:Array;
      
      private var §^!&§:Array;
      
      private var §?w§:Boolean = false;
      
      private var § !$§:Boolean = false;
      
      private var §`=§:§`X§;
      
      private var §"!a§:AvatarRenderer;
      
      private var §4!P§:String;
      
      private var §9v§:String;
      
      public function AvatarCreatorPopup(currentUIView:§`X§, statePopupManager:StatePopupManager, activeTabName:String = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_ && currentUIView)
         {
         }
         var character:§%1§ = null;
         if(_loc8_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr318:
                  while(true)
                  {
                     continue loop0;
                  }
                  loop9:
                  while(!(_loc9_ && this))
                  {
                     loop10:
                     for(; _loc8_ || currentUIView; if(_loc9_ && currentUIView)
                     {
                        continue;
                     },if(false)
                     {
                        §§goto(addr63);
                     },var avatarCreator:§5!2§ = new §5!2§(),if(_loc8_ || activeTabName)
                     {
                        addr381:
                        if(sAvatars == null)
                        {
                           if(_loc8_ || this)
                           {
                              if(_loc9_ && statePopupManager)
                              {
                                 §§goto(addr381);
                              }
                           }
                           addr356:
                           if(!_loc9_)
                           {
                              addr349:
                              sAvatars = [];
                              if(_loc8_ || activeTabName)
                              {
                                 if(!_loc9_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr349);
                                    }
                                    var _loc6_:int = 0;
                                    var _loc7_:* = §5!2§.§<o§().characters;
                                    addr429:
                                    for each(character in _loc7_)
                                    {
                                       if(_loc9_)
                                       {
                                       }
                                       addr418:
                                       sAvatars.push(new Avatar(character));
                                       addr428:
                                       if(!(_loc9_ && currentUIView))
                                       {
                                          if(_loc8_ || this)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr418);
                                             }
                                             §§goto(addr429);
                                          }
                                          §§goto(addr428);
                                       }
                                       addr426:
                                       §§goto(addr426);
                                    }
                                    if(!_loc9_)
                                    {
                                       §§goto(addr523);
                                    }
                                    §§goto(addr498);
                                 }
                                 §§goto(addr356);
                              }
                              addr353:
                              §§goto(addr353);
                           }
                           addr379:
                           §§goto(addr379);
                        }
                        addr523:
                        if(sAvatarContainer == null)
                        {
                           sAvatarContainer = new §%X§();
                           addr521:
                           if(!(_loc9_ && statePopupManager))
                           {
                              §§goto(addr501);
                           }
                           addr520:
                           §§goto(addr520);
                        }
                        addr501:
                        if(sAllItemsLoader == null)
                        {
                           addr495:
                           if(!_loc9_)
                           {
                              this.§]b§();
                              addr458:
                              if(_loc8_ || activeTabName)
                              {
                                 if(_loc8_ || activeTabName)
                                 {
                                    if(_loc8_ || activeTabName)
                                    {
                                       if(_loc8_ || activeTabName)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                §§goto(addr523);
                                             }
                                             §§goto(addr436);
                                          }
                                          §§goto(addr521);
                                       }
                                       §§goto(addr458);
                                    }
                                    §§goto(addr501);
                                 }
                              }
                              §§goto(addr495);
                              addr498:
                           }
                           §§goto(addr521);
                        }
                        addr436:
                        return;
                     },§§goto(addr349))
                     {
                        super(§<y§.§1P§(sAvatorCreatorPopupBin),currentUIView);
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              §§push(Boolean(activeTabName));
                              loop13:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop14:
                                    while(!_loc9_)
                                    {
                                       while(true)
                                       {
                                          loop32:
                                          while(true)
                                          {
                                             this.§4!P§ = activeTabName;
                                             addr217:
                                             while(true)
                                             {
                                                if(!(_loc9_ && currentUIView))
                                                {
                                                   addr224:
                                                   if(_loc8_ || currentUIView)
                                                   {
                                                      while(!_loc9_)
                                                      {
                                                      }
                                                      continue loop32;
                                                      addr210:
                                                   }
                                                   continue loop0;
                                                }
                                                addr292:
                                                loop7:
                                                while(true)
                                                {
                                                   addr287:
                                                   while(_loc8_)
                                                   {
                                                      this.§%!<§ = statePopupManager;
                                                      break loop14;
                                                   }
                                                   addr297:
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop9;
                                    addr236:
                                 }
                                 while(true)
                                 {
                                    this.§%!<§.addEventListener(§`!U§.UI_INTERACTION,this.onUiInteraction);
                                    loop16:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          this.§`=§ = currentUIView;
                                          while(true)
                                          {
                                             continue loop13;
                                             addr168:
                                             if(!(_loc8_ || currentUIView))
                                             {
                                                continue;
                                             }
                                             loop30:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr178:
                                                   if(_loc8_ || activeTabName)
                                                   {
                                                      §§push(this.§`=§);
                                                      while(true)
                                                      {
                                                         §§push("ButtonEasterEgg2");
                                                         addr124:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            addr125:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               addr126:
                                                               while(true)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  addr128:
                                                                  addr300:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || statePopupManager)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        addr166:
                                                                        while(!_loc9_)
                                                                        {
                                                                           §§goto(addr168);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop30;
                                                                  }
                                                                  addr300:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr178);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr123:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr300);
                                                   }
                                                   this.§^!&§ = [];
                                                   §§goto(addr297);
                                                }
                                                else
                                                {
                                                   §§goto(addr217);
                                                }
                                             }
                                          }
                                          addr112:
                                          loop20:
                                          while(_loc8_ || activeTabName)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                if(_loc9_ && this)
                                                {
                                                   continue loop20;
                                                }
                                                if(_loc8_)
                                                {
                                                   addr63:
                                                   while(true)
                                                   {
                                                      sServerRoot = AngryBirdsFP11.SERVER_ROOT;
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && currentUIView))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc9_ && currentUIView)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(!(_loc9_ && activeTabName))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr318);
                                                               }
                                                            }
                                                            break loop21;
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   continue loop10;
                                                   addr63:
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr210);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc9_ && activeTabName)
                           {
                              continue;
                           }
                           §§goto(addr63);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr300);
                        §§goto(addr265);
                     }
                     addr265:
                  }
               }
            }
         }
         §§goto(addr238);
      }
      
      public static function § M§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && itemId)
         {
         }
         var itemObject:Object = null;
         if(_loc6_ && itemObject)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc6_ && _loc3_)
               {
               }
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc3_:int = 0;
               var _loc4_:* = sItemsAvailable;
               loop3:
               while(true)
               {
                  for each(itemObject in _loc4_)
                  {
                     if(!(_loc5_ || itemObject))
                     {
                        break loop3;
                     }
                     if(itemObject.itemId != itemId)
                     {
                        continue loop3;
                     }
                     if(!_loc6_)
                     {
                        break loop3;
                     }
                     return true;
                     addr127:
                  }
                  if(_loc5_ || itemId)
                  {
                  }
                  return false;
               }
               §§goto(addr127);
            }
         }
      }
      
      public static function §"!e§(itemId:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var itemObject:Object = null;
         if(_loc5_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc5_)
                  {
                  }
                  if(!_loc6_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(itemObject in sItemsAvailable)
                     {
                        if(_loc5_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(itemObject.itemId == itemId);
                              if(_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(!itemObject.available);
                                          if(!(_loc6_ && itemId))
                                          {
                                             continue loop7;
                                          }
                                          addr100:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop8;
                                             }
                                             if(_loc6_)
                                             {
                                             }
                                             if(_loc5_)
                                             {
                                                return itemObject.price;
                                                addr116:
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr100);
                                 }
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                     if(_loc6_)
                     {
                     }
                     return 0;
                     addr32:
                  }
                  break;
               }
            }
         }
         §§goto(addr32);
      }
      
      public static function §&!e§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || AvatarCreatorPopup)
         {
         }
         var itemObject:Object = null;
         if(_loc5_ || itemObject)
         {
         }
         loop0:
         while(true)
         {
            addr42:
            addr54:
            while(true)
            {
               continue loop0;
            }
            addr152:
            for each(itemObject in sItemsAvailable)
            {
               if(_loc5_ || itemObject)
               {
                  loop4:
                  while(true)
                  {
                     §§push(itemObject.itemId == itemId);
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr148:
                                 while(true)
                                 {
                                    §§push(!itemObject.available);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc5_ || itemId))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              addr147:
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr147);
                  }
                  continue;
               }
               §§goto(addr148);
            }
            if(_loc5_ || itemId)
            {
            }
            return false;
         }
      }
      
      public static function §3N§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var itemObject:Object = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  continue loop0;
               }
            }
            addr44:
         }
         while(true)
         {
            if(_loc5_)
            {
               continue;
            }
            if(!(_loc5_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr44);
            }
            §§goto(addr40);
         }
         var _loc3_:int = 0;
         var _loc4_:* = sItemsAvailable;
         loop3:
         do
         {
            for each(itemObject in _loc4_)
            {
               if(_loc5_ && _loc3_)
               {
                  break loop3;
               }
               §§push(itemObject.itemId == itemId);
               if(!_loc5_)
               {
                  §§push(Boolean(§§pop()));
                  loop4:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc6_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     addr158:
                     while(true)
                     {
                        §§pop();
                        §§push(!itemObject.available);
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc6_ || itemId)
                        {
                           if(_loc6_ || AvatarCreatorPopup)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                     }
                  }
                  continue loop3;
               }
               §§goto(addr158);
            }
            if(_loc6_ || itemId)
            {
            }
            return false;
         }
         while(!§§pop());
         
         return itemObject.limited;
      }
      
      public static function §+E§(itemId:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var itemObject:Object = null;
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            addr37:
            addr59:
            while(true)
            {
               continue loop0;
            }
            addr107:
            loop3:
            for(var _loc3_:int = 0,var _loc4_:* = sItemsAvailable; §§hasnext(_loc4_,_loc3_); while(itemObject.itemId == itemId)
            {
               if(!_loc6_)
               {
                  §§goto(addr100);
               }
               §§goto(addr101);
            })
            {
               itemObject = §§nextvalue(_loc3_,_loc4_);
               if(!_loc6_)
               {
                  continue;
               }
               addr100:
               while(true)
               {
                  addr101:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        return itemObject.starPrice;
                     }
                     continue loop3;
                  }
               }
            }
            if(_loc5_ || itemId)
            {
            }
            return 0;
         }
      }
      
      public static function §-=§(oldStarCount:int, newStarCount:int) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || newStarCount)
         {
         }
         var achObject:Object = null;
         if(!_loc7_)
         {
            while(true)
            {
            }
            addr53:
         }
         while(true)
         {
            while(true)
            {
               while(!_loc6_)
               {
               }
               if(_loc7_ && oldStarCount)
               {
                  break;
               }
               if(!_loc7_)
               {
                  if(true)
                  {
                     loop4:
                     for each(achObject in sAchievementItems)
                     {
                        if(!(_loc7_ && oldStarCount))
                        {
                           loop5:
                           while(true)
                           {
                              §§push(newStarCount);
                              addr139:
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() >= achObject.s);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc7_ && achObject))
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc6_ || achObject)
                                             {
                                                if(!_loc7_)
                                                {
                                                   return achObject.id;
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                             if(!(_loc7_ && oldStarCount))
                                             {
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    addr165:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                       addr109:
                                       if(_loc7_ && AvatarCreatorPopup)
                                       {
                                          continue;
                                       }
                                       §§goto(addr117);
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(oldStarCount);
                           if(!_loc7_)
                           {
                              §§push(§§pop() < achObject.s);
                              if(!_loc7_)
                              {
                                 §§goto(addr109);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr139);
                           §§goto(addr165);
                        }
                     }
                     §§push("");
                     if(_loc6_ || oldStarCount)
                     {
                     }
                  }
                  continue;
                  return §§pop();
               }
               §§goto(addr53);
            }
         }
      }
      
      private function §]b§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            addr55:
            while(true)
            {
               addr37:
               while(true)
               {
                  this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
                  continue loop0;
               }
            }
         }
      }
      
      protected function §8U§(event:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(!(_loc2_ && this))
               {
                  §9u§.§#"§();
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        loop4:
                        do
                        {
                           sAllItemsLoader = null;
                           while(_loc3_)
                           {
                              if(!(_loc2_ && event))
                              {
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc2_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §8!3§(e:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §9u§.§#"§();
                  while(true)
                  {
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           sAllItemsLoader = null;
                           while(!(_loc3_ || this))
                           {
                           }
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private function onComplete(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || e)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  sAllAvatarItems = §7b§.§#!a§(e.currentTarget.data);
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§>+§);
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              this.§9!"§();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§,!§();
                                       loop7:
                                       while(_loc3_)
                                       {
                                          if(_loc2_ && _loc3_)
                                          {
                                             while(_loc2_)
                                             {
                                                break loop6;
                                             }
                                             return;
                                          }
                                          addr98:
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             return;
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §9!"§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc9_)
         {
         }
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         if(!_loc9_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  while(_loc9_)
                  {
                     if(_loc8_ && list)
                     {
                        continue;
                     }
                     if(!_loc9_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     var list:Array = [];
                     if(!_loc8_)
                     {
                        addr99:
                        addr111:
                        if(this.§`=§)
                        {
                           addr101:
                           if(!(_loc8_ && items))
                           {
                              addr85:
                              §§push(this.§`=§);
                              if(!_loc8_)
                              {
                                 §§pop().getItemByName("WaitingForReply").setVisibility(false);
                                 if(_loc9_)
                                 {
                                    if(!(_loc8_ && item))
                                    {
                                       if(_loc9_ || list)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr85);
                                          }
                                          addr112:
                                          var _loc6_:int = 0;
                                          var _loc7_:* = sAllAvatarItems;
                                          addr292:
                                          for each(item in _loc7_)
                                          {
                                             if(!_loc9_)
                                             {
                                             }
                                             addr143:
                                             this.§ B§(item,AvatarCreatorPopup.sAchievementItems);
                                             addr156:
                                             addr154:
                                             if(_loc9_ || items)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr143);
                                                      }
                                                      clientItem = ServerIdParser.§9_§(item.id);
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(clientItem)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push("itemId");
                                                                     if(!_loc9_)
                                                                     {
                                                                     }
                                                                     parseObject = {
                                                                        §§pop():clientItem.§7!D§,
                                                                        "price":item.p,
                                                                        "available":item.a,
                                                                        "starPrice":item.star,
                                                                        "limited":item.l,
                                                                        "sale":item.s
                                                                     };
                                                                     if(_loc9_ || list)
                                                                     {
                                                                        list.push(parseObject);
                                                                        addr244:
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr236:
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr227:
                                                                              trace(parseObject.itemId);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    addr249:
                                                                                    item.a;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       item.id;
                                                                                       addr291:
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr266:
                                                                                          item.p;
                                                                                          if(_loc9_ || item)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr279:
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr266);
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                §§goto(addr266);
                                                                                                addr279:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                          addr284:
                                                                                       }
                                                                                       addr289:
                                                                                       §§goto(addr289);
                                                                                       addr254:
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                              addr233:
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr244);
                                                                           addr246:
                                                                        }
                                                                        addr248:
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr154);
                                             }
                                             addr151:
                                             §§goto(addr151);
                                          }
                                          if(_loc8_ && items)
                                          {
                                          }
                                          addr312:
                                          sItemsAvailable = list;
                                          addr318:
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr312);
                                                }
                                                items = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
                                                if(!(_loc8_ && this))
                                                {
                                                   items.§2!,§(null,AvatarEditorTabRepeaterButton);
                                                   addr369:
                                                   addr379:
                                                   if(!_loc8_)
                                                   {
                                                      this.§`=§.§+!L§("Repeater_Items","Repeater_Items_Tab_0");
                                                      addr364:
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr369);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr364);
                                                         addr366:
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   addr381:
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr366);
                                             }
                                             §§goto(addr318);
                                          }
                                          addr316:
                                          §§goto(addr316);
                                       }
                                    }
                                    §§goto(addr101);
                                 }
                                 addr95:
                                 §§goto(addr95);
                              }
                              §§goto(addr99);
                              addr109:
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr109);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function § B§(item:Object, achievements:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         var achiev:Object = null;
         if(_loc6_ || achiev)
         {
            while(true)
            {
               loop1:
               for(; _loc6_ || this; while(true)
               {
                  while(_loc7_ && achievements)
                  {
                  }
                  if(!_loc7_)
                  {
                     if(true)
                     {
                        loop5:
                        for each(achiev in achievements)
                        {
                           if(!_loc7_)
                           {
                              do
                              {
                                 if(item.id == achiev.id)
                                 {
                                    if(!(_loc6_ || achievements))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              while(!(_loc6_ || this));
                              
                              loop7:
                              while(true)
                              {
                                 item.p = achiev.p;
                                 while(true)
                                 {
                                    loop9:
                                    for(; _loc6_ || item; if(!(_loc7_ && achiev))
                                    {
                                       while(false)
                                       {
                                          §§goto(addr102);
                                       }
                                       continue loop5;
                                       addr100:
                                    })
                                    {
                                       while(true)
                                       {
                                          item.star = achiev.star;
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || achiev)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr100);
                        }
                        if(_loc6_ || achiev)
                        {
                        }
                     }
                     continue;
                     return;
                  }
                  break;
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §'!`§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc6_ || containerX)
         {
            loop0:
            while(_loc6_ || scale)
            {
               while(true)
               {
                  while(true)
                  {
                     loop9:
                     while(!_loc7_)
                     {
                        if(_loc6_)
                        {
                           §§push(sAvatarContainer);
                           if(!(_loc7_ && displayObjectContainer))
                           {
                              §§push(Boolean(§§pop()));
                              loop10:
                              for(; §§pop(); §§push(Boolean(§§pop().parent)),if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(sAvatarContainer);
                                          while(true)
                                          {
                                             if(!§§pop().parent.contains(sAvatarContainer))
                                             {
                                                break loop10;
                                             }
                                             continue loop11;
                                             addr62:
                                             if(_loc7_ && scale)
                                             {
                                                continue;
                                             }
                                             §§pop().parent.removeChild(sAvatarContainer);
                                             if(_loc6_ || scale)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   addr49:
                                                   if(!_loc7_)
                                                   {
                                                      break loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr279);
                                          }
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 break;
                              })
                              {
                                 if(!(_loc7_ && containerX))
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§push(sAvatarContainer);
                                       if(!(_loc7_ && scale))
                                       {
                                          continue;
                                       }
                                       addr252:
                                       addr252:
                                       §§push(containerY);
                                       if(_loc6_ || this)
                                       {
                                          §§pop().y = §§pop();
                                          while(!_loc6_)
                                          {
                                          }
                                          addr261:
                                          if(_loc7_ && this)
                                          {
                                             addr281:
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc6_ || containerX)
                                                {
                                                   addr275:
                                                   §§push(sAvatarContainer);
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr252);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(containerX);
                                                      addr276:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         break loop5;
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   addr271:
                                                   addr275:
                                                }
                                                break;
                                                §§goto(addr261);
                                             }
                                             while(!_loc7_)
                                             {
                                                §§goto(addr264);
                                             }
                                             addr264:
                                             while(true)
                                             {
                                                §§goto(addr275);
                                             }
                                             addr281:
                                          }
                                          return;
                                          addr236:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr236);
                              }
                              while(true)
                              {
                                 displayObjectContainer.addChild(sAvatarContainer);
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc6_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          §§push(sAvatarContainer);
                                          if(!(_loc7_ && containerX))
                                          {
                                             §§goto(addr204);
                                          }
                                          §§goto(addr252);
                                       }
                                       §§goto(addr261);
                                    }
                                    else
                                    {
                                       §§goto(addr49);
                                    }
                                 }
                                 §§goto(addr281);
                              }
                              continue;
                           }
                           §§goto(addr275);
                        }
                        §§goto(addr281);
                     }
                  }
               }
            }
            §§goto(addr281);
         }
         §§goto(addr192);
      }
      
      private function §,!§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(_loc17_ || userId)
         {
         }
         var character:§%1§ = null;
         var avatarHolder:§=D§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§=D§ = null;
         var char:§%1§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         if(_loc17_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr89:
                     while(_loc17_ || this)
                     {
                        while(true)
                        {
                           do
                           {
                              this.§>+§ = true;
                              while(_loc17_ || tabs)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           while(false);
                           
                           var tabs:UIRepeaterRovio = this.§`=§.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
                           if(_loc17_)
                           {
                              while(true)
                              {
                                 tabs.§2!,§(null,AvatarEditorTabRepeaterButton);
                                 while(_loc17_ || tabs)
                                 {
                                    while(_loc17_ || avatarString)
                                    {
                                       §§push(sItemsAvailable);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(null);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(sAvatars);
                                                   if(!_loc17_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(null);
                                                   if(!(_loc17_ || this))
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         addr184:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                         addr187:
                                                         if(!(_loc17_ || avatarString))
                                                         {
                                                            break loop13;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var userId:* = §§pop();
                                                   if(_loc16_)
                                                   {
                                                   }
                                                   §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var avatarString:* = §§pop();
                                                   if(!_loc17_)
                                                   {
                                                   }
                                                   addr367:
                                                   addr387:
                                                   §§push(avatarString == null);
                                                   if(!_loc16_)
                                                   {
                                                      addr372:
                                                      §§push(Boolean(§§pop()));
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc17_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         addr377:
                                                         §§pop();
                                                         addr378:
                                                         if(_loc17_ || avatarString)
                                                         {
                                                            §§push(avatarString);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() == "");
                                                               if(_loc17_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr355:
                                                                        if(§§pop())
                                                                        {
                                                                           addr356:
                                                                           if(!(_loc16_ && tabs))
                                                                           {
                                                                              addr336:
                                                                              this.§?w§ = true;
                                                                              addr364:
                                                                              if(!(_loc16_ && avatarString))
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(_loc17_ || tabs)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr336);
                                                                                       }
                                                                                       addr388:
                                                                                       var profile:§5!D§ = new §5!D§(userId,false,§5!D§.SQUARE);
                                                                                       if(!(_loc16_ && userId))
                                                                                       {
                                                                                          profile.x = 13;
                                                                                          profile.y = 9;
                                                                                          addr514:
                                                                                          addr512:
                                                                                          addr507:
                                                                                       }
                                                                                       addr492:
                                                                                       addr504:
                                                                                       if(_loc17_ || tabs)
                                                                                       {
                                                                                          §§push(this.§`=§);
                                                                                          if(!(_loc16_ && avatarString))
                                                                                          {
                                                                                             §§push("SetFacebookProfileButton");
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                if(!(_loc16_ && this))
                                                                                                {
                                                                                                   §§pop().mClip.addChild(profile);
                                                                                                   addr456:
                                                                                                   addr489:
                                                                                                   if(_loc17_ || avatarString)
                                                                                                   {
                                                                                                      addr420:
                                                                                                      if(sFirstTimeInit)
                                                                                                      {
                                                                                                         addr424:
                                                                                                         if(!(_loc16_ && avatarString))
                                                                                                         {
                                                                                                            if(_loc17_ || avatarString)
                                                                                                            {
                                                                                                               if(!(_loc16_ && tabs))
                                                                                                               {
                                                                                                                  addr446:
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && tabs))
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr420);
                                                                                                                              }
                                                                                                                              §§push(this.§`=§);
                                                                                                                              if(!(_loc16_ && tabs))
                                                                                                                              {
                                                                                                                                 addr524:
                                                                                                                                 §§push("AvatarHolderClip");
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       avatarHolder = §§pop() as §=D§;
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          this.§'!`§(avatarHolder.mClip);
                                                                                                                                          addr648:
                                                                                                                                          addr657:
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr619:
                                                                                                                                             §§push(avatarString == "");
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr627:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(!(_loc16_ && tabs))
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr637:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!(_loc16_ && tabs))
                                                                                                                                                      {
                                                                                                                                                         §§push(avatarString);
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == null);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               if(_loc17_ || avatarString)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(_loc17_ || tabs)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && userId))
                                                                                                                                                               {
                                                                                                                                                                  addr609:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr551:
                                                                                                                                                                           addr616:
                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc17_ || tabs)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr551);
                                                                                                                                                                                       }
                                                                                                                                                                                       oldAvatarsItems = ServerIdParser.§,1§(avatarString);
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addedAvatar = sAvatarContainer.§#E§(oldAvatarsItems);
                                                                                                                                                                                       if(_loc17_ || userId)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §5!2§.§<R§ = addedAvatar;
                                                                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr723:
                                                                                                                                                                                                §§push(this.§`=§);
                                                                                                                                                                                                if(_loc17_ || avatarString)
                                                                                                                                                                                                {
                                                                                                                                                                                                   (§§pop() as PopupsUIView).§?E§();
                                                                                                                                                                                                   if(_loc17_ || tabs)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc16_ && userId))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         sFirstTimeInit = false;
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr918:
                                                                                                                                                                                                            §§push(this.§4!P§);
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr926:
                                                                                                                                                                                                                     if(!(_loc16_ && tabs))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1178:
                                                                                                                                                                                                                        tabIndex = (this.§`=§ as PopupsUIView).§0S§(this.§4!P§);
                                                                                                                                                                                                                        addr1181:
                                                                                                                                                                                                                        addr1179:
                                                                                                                                                                                                                        addr1167:
                                                                                                                                                                                                                        addr1171:
                                                                                                                                                                                                                        addr1177:
                                                                                                                                                                                                                        §§push(tabIndex);
                                                                                                                                                                                                                        if(!(_loc16_ && tabs))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() != -1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1139:
                                                                                                                                                                                                                                 addr1163:
                                                                                                                                                                                                                                 addr1164:
                                                                                                                                                                                                                                 §§push(this.§4!P§);
                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1135:
                                                                                                                                                                                                                                    categoryName = §§pop().substr("CATEGORY".length);
                                                                                                                                                                                                                                    addr1125:
                                                                                                                                                                                                                                    addr1136:
                                                                                                                                                                                                                                    §§push(this.§`=§);
                                                                                                                                                                                                                                    if(_loc17_ || avatarString)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().setText(categoryName,"Textfield_CategoryTitle");
                                                                                                                                                                                                                                       addr1093:
                                                                                                                                                                                                                                       addr1122:
                                                                                                                                                                                                                                       if(_loc17_ || avatarString)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§`=§);
                                                                                                                                                                                                                                             if(!(_loc16_ && userId))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push("Repeater_Items");
                                                                                                                                                                                                                                                §§push("Repeater_Items_Tab_");
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + tabIndex);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§+!L§(§§pop(),§§pop());
                                                                                                                                                                                                                                                addr1064:
                                                                                                                                                                                                                                                addr1090:
                                                                                                                                                                                                                                                if(!(_loc16_ && avatarString))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§5!2§.§]W§().§+@§.length > 0)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      tabs.§;!W§("Repeater_Tabs_Tab_0").§?!#§(§5!2§.§]W§().§+@§[tabIndex].name as String);
                                                                                                                                                                                                                                                      addr1060:
                                                                                                                                                                                                                                                      addr1061:
                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1006:
                                                                                                                                                                                                                                                         if(!(_loc16_ && tabs))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc16_ && tabs))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc16_ && userId))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr990:
                                                                                                                                                                                                                                                                  this.§4!P§ = null;
                                                                                                                                                                                                                                                                  addr994:
                                                                                                                                                                                                                                                                  if(!(_loc16_ && userId))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr969:
                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc16_ && userId))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc16_ && tabs))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr957:
                                                                                                                                                                                                                                                                                       this.§@A§();
                                                                                                                                                                                                                                                                                       addr960:
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_ || avatarString)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc16_ && tabs)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1093);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr960);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1122);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr994);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr969);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1179);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1064);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1060);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1006);
                                                                                                                                                                                                                                                                        addr1003:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1139);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1060);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1163);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1125);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1061);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1090);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr990);
                                                                                                                                                                                                                                                   addr1071:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1136);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1125);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1167);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1164);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1171);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1135);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr990);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1177);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1178);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1064);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1060);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr957);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1135);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1071);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr926);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1139);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1178);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1003);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1178);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr969);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr648);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr712:
                                                                                                                                                                                 sAvatarContainer.§3!F§("backgrounds1");
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr720:
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr710:
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr723);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr712);
                                                                                                                                                                                    addr720:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr722:
                                                                                                                                                                                 §§goto(addr722);
                                                                                                                                                                                 addr567:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr616);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr710);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr657);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr710);
                                                                                                                                                                  }
                                                                                                                                                                  this.§]S§(STARTUP_CHARACTER);
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr712);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr720);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr627);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr637);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr619);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr720);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr609);
                                                                                                                                                }
                                                                                                                                                §§goto(addr637);
                                                                                                                                             }
                                                                                                                                             §§goto(addr627);
                                                                                                                                          }
                                                                                                                                          addr659:
                                                                                                                                          §§goto(addr659);
                                                                                                                                       }
                                                                                                                                       §§goto(addr567);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr766:
                                                                                                                                       avatarHolder2 = §§pop() as §=D§;
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr785:
                                                                                                                                       this.§'!`§(avatarHolder2.mClip);
                                                                                                                                       if(!(_loc16_ && userId))
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && tabs))
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr785);
                                                                                                                                             }
                                                                                                                                             char = sAvatarContainer.§8r§.§>[§();
                                                                                                                                             if(_loc17_ || avatarString)
                                                                                                                                             {
                                                                                                                                                addr852:
                                                                                                                                                sAvatarContainer.§=W§(char.§7!D§,char.sId,char.§[L§,sAvatars,110,174);
                                                                                                                                                addr866:
                                                                                                                                             }
                                                                                                                                             addr830:
                                                                                                                                             addr864:
                                                                                                                                             addr848:
                                                                                                                                             §§push(sAvatarContainer);
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().§8r§.§]!R§();
                                                                                                                                                addr843:
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ && tabs))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr830);
                                                                                                                                                            }
                                                                                                                                                            items = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               items.§2!,§(null,AvatarEditorTabRepeaterButton);
                                                                                                                                                               addr887:
                                                                                                                                                               (this.§`=§ as PopupsUIView).§?E§();
                                                                                                                                                               addr915:
                                                                                                                                                               addr917:
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || tabs)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr885:
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr887);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr918);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr915);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr887);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr917);
                                                                                                                                                               }
                                                                                                                                                               addr907:
                                                                                                                                                               §§goto(addr907);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr885);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr866);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr864);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr843);
                                                                                                                                                }
                                                                                                                                                §§goto(addr848);
                                                                                                                                             }
                                                                                                                                             §§goto(addr852);
                                                                                                                                          }
                                                                                                                                          §§goto(addr785);
                                                                                                                                       }
                                                                                                                                       addr800:
                                                                                                                                       §§goto(addr800);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr765:
                                                                                                                                    §§goto(addr766);
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr766);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr764:
                                                                                                                                 §§goto(addr765);
                                                                                                                                 §§push("AvatarHolderClip");
                                                                                                                              }
                                                                                                                              §§goto(addr765);
                                                                                                                           }
                                                                                                                           §§goto(addr492);
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr456);
                                                                                                               }
                                                                                                               §§goto(addr514);
                                                                                                            }
                                                                                                            §§goto(addr512);
                                                                                                         }
                                                                                                         §§goto(addr489);
                                                                                                      }
                                                                                                      §§goto(addr764);
                                                                                                      §§push(this.§`=§);
                                                                                                   }
                                                                                                   §§goto(addr504);
                                                                                                }
                                                                                                §§goto(addr766);
                                                                                             }
                                                                                             §§goto(addr765);
                                                                                          }
                                                                                          §§goto(addr524);
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              addr340:
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr377);
                                                }
                                             }
                                             addr200:
                                             §§goto(addr201);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr200);
                        }
                        if(_loc16_ && tabs)
                        {
                           continue;
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function onUiInteraction(e:§`!U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               addr79:
               while(true)
               {
                  this.uiInteractionHandler(e.eventIndex,e.eventName,e.component);
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         if(_loc22_ && eventName)
         {
         }
         var component2:UIComponentRovio = null;
         var tabIndex:int = 0;
         var categoryName:* = null;
         var repeaterButton:UIRepeaterButtonRovio = null;
         var index:Number = NaN;
         var overString:* = null;
         var overTabIndex:* = 0;
         var repeaterIndex:* = 0;
         var overRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var outString:* = null;
         var outTabIndex:* = 0;
         var outRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var buyString:* = null;
         var items:Array = null;
         var avatarData:String = null;
         var item:String = null;
         if(_loc23_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  addr99:
                  loop3:
                  while(!(_loc22_ && this))
                  {
                     loop4:
                     while(component is UIComponentRovio)
                     {
                        loop5:
                        while(true)
                        {
                           if(!_loc22_)
                           {
                              while(!_loc22_)
                              {
                                 if(!_loc22_)
                                 {
                                    if(!(_loc22_ && eventIndex))
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              continue loop4;
                           }
                           component2 = component as UIComponentRovio;
                           if(!_loc22_)
                           {
                              while(true)
                              {
                                 §§push(eventName);
                                 while(true)
                                 {
                                    if(§§pop().length > 1)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(component2.mParentContainer);
                                             loop12:
                                             while(true)
                                             {
                                                if(!(§§pop() is UIRepeaterTabRovio))
                                                {
                                                   break loop4;
                                                }
                                                while(true)
                                                {
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§push(eventName);
                                    break loop4;
                                    if(_loc23_ || component)
                                    {
                                       §§push(§§pop().substr("CATEGORY".length));
                                    }
                                    if(!(_loc23_ || eventIndex))
                                    {
                                       continue;
                                    }
                                    categoryName = §§pop();
                                    §§goto(addr238);
                                 }
                              }
                           }
                           §§goto(addr175);
                        }
                     }
                     §§push(eventName);
                     if(_loc23_)
                     {
                        if(§§pop().toUpperCase().indexOf("OVER") > -1)
                        {
                           if(_loc23_ || eventIndex)
                           {
                              if(_loc23_)
                              {
                                 if(!(_loc22_ && this))
                                 {
                                    if(!_loc22_)
                                    {
                                       if(!(_loc22_ && eventName))
                                       {
                                          if(!_loc22_)
                                          {
                                             §§push(eventName);
                                             if(_loc23_)
                                             {
                                                §§push(§§pop().toUpperCase().substr(4));
                                                if(!(_loc22_ && component))
                                                {
                                                   overString = §§pop();
                                                   loop55:
                                                   for(; _loc23_ || component; if(_loc22_ && this)
                                                   {
                                                      continue;
                                                   },while(true)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc22_ && this))
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!_loc22_)
                                                         {
                                                            repeaterIndex = §§pop();
                                                            if(!_loc22_)
                                                            {
                                                               if(_loc23_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc23_)
                                                                  {
                                                                     §§goto(addr743);
                                                                  }
                                                                  §§goto(addr941);
                                                               }
                                                               §§goto(addr1257);
                                                            }
                                                            §§goto(addr1449);
                                                         }
                                                         §§goto(addr743);
                                                      }
                                                      break;
                                                   },§§goto(addr2381))
                                                   {
                                                      §§push(this.§`=§);
                                                      if(!(_loc22_ && component))
                                                      {
                                                         §§push((§§pop() as PopupsUIView).§0S§(overString));
                                                         if(_loc23_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc22_)
                                                            {
                                                               overTabIndex = §§pop();
                                                               if(_loc23_ || eventName)
                                                               {
                                                                  if(!_loc22_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr979:
                                                                  loop108:
                                                                  while(true)
                                                                  {
                                                                     if(_loc23_ || this)
                                                                     {
                                                                        §§push(this.§`=§);
                                                                        if(_loc23_)
                                                                        {
                                                                           addr929:
                                                                           §§push((§§pop() as PopupsUIView).§0S§(outString));
                                                                           if(!(_loc22_ && eventName))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc23_ || component)
                                                                                 {
                                                                                    outTabIndex = §§pop();
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       if(!(_loc22_ && eventName))
                                                                                       {
                                                                                          loop104:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc23_ || component)
                                                                                             {
                                                                                                addr2381:
                                                                                                §§push(int(§§pop()));
                                                                                                if(_loc23_ || eventIndex)
                                                                                                {
                                                                                                }
                                                                                                loop105:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop121:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         addr1475:
                                                                                                         §5!2§.§<R§.§`Z§();
                                                                                                         loop117:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§@A§();
                                                                                                            addr1462:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§1i§();
                                                                                                               addr1457:
                                                                                                               addr1452:
                                                                                                               while(_loc22_)
                                                                                                               {
                                                                                                                  continue loop117;
                                                                                                               }
                                                                                                               break loop121;
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         addr1470:
                                                                                                         addr1484:
                                                                                                         addr1477:
                                                                                                      case 1:
                                                                                                         addr1449:
                                                                                                         §§push(§5!2§.§<R§);
                                                                                                         if(!(_loc22_ && this))
                                                                                                         {
                                                                                                            §§pop().§5#§();
                                                                                                            loop76:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1423:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc22_ && component))
                                                                                                                  {
                                                                                                                     break loop76;
                                                                                                                  }
                                                                                                                  continue loop76;
                                                                                                               }
                                                                                                            }
                                                                                                            this.§@A§();
                                                                                                            break;
                                                                                                            addr1444:
                                                                                                            addr1420:
                                                                                                         }
                                                                                                         §§goto(addr1475);
                                                                                                         break;
                                                                                                         addr1449:
                                                                                                      case 2:
                                                                                                         addr1405:
                                                                                                         if(!(_loc22_ && eventIndex))
                                                                                                         {
                                                                                                            this.§'!U§();
                                                                                                            addr1396:
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr1384:
                                                                                                                  if(_loc23_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1457);
                                                                                                               }
                                                                                                               §§goto(addr1462);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1423);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1449);
                                                                                                         }
                                                                                                         §§goto(addr1470);
                                                                                                      case 3:
                                                                                                         addr1374:
                                                                                                         this.§`=§.getItemByName("AvatarSharing").setVisibility(false);
                                                                                                         break;
                                                                                                         addr1381:
                                                                                                         addr1376:
                                                                                                         addr1373:
                                                                                                         addr1372:
                                                                                                         addr1371:
                                                                                                         addr1367:
                                                                                                      case 4:
                                                                                                         §§push(this.§`=§);
                                                                                                         if(!(_loc22_ && component))
                                                                                                         {
                                                                                                            §§push("WaitingForReply");
                                                                                                            if(!(_loc22_ && component))
                                                                                                            {
                                                                                                               §§push(§§pop().getItemByName(§§pop()));
                                                                                                               if(_loc23_ || eventName)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           if(_loc22_ && component)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           this.§5H§();
                                                                                                                           loop94:
                                                                                                                           for(; !_loc22_; while(true)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 break loop121;
                                                                                                                              }
                                                                                                                              continue loop94;
                                                                                                                           })
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1484);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1381);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr1376);
                                                                                                                     }
                                                                                                                     §§goto(addr1477);
                                                                                                                     addr1359:
                                                                                                                  }
                                                                                                                  §§goto(addr1374);
                                                                                                               }
                                                                                                               §§goto(addr1373);
                                                                                                            }
                                                                                                            §§goto(addr1372);
                                                                                                         }
                                                                                                         §§goto(addr1371);
                                                                                                         addr1364:
                                                                                                      case 5:
                                                                                                         loop75:
                                                                                                         while(_loc23_ || eventIndex)
                                                                                                         {
                                                                                                            §§push(ServerIdParser.§?T§(this.§case§));
                                                                                                            if(!(_loc22_ && eventName))
                                                                                                            {
                                                                                                               addr1274:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     buyString = §§pop();
                                                                                                                     if(_loc23_ || component)
                                                                                                                     {
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        trace(buyString);
                                                                                                                        loop113:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop114:
                                                                                                                           while(!(_loc22_ && this))
                                                                                                                           {
                                                                                                                              AngryBirdsFP11.§'t§.§?]§();
                                                                                                                              loop115:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc22_ && eventName))
                                                                                                                                 {
                                                                                                                                    continue loop113;
                                                                                                                                 }
                                                                                                                                 continue loop114;
                                                                                                                                 addr1241:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc23_ || component)
                                                                                                                                    {
                                                                                                                                       if(_loc22_ && eventIndex)
                                                                                                                                       {
                                                                                                                                          continue loop75;
                                                                                                                                       }
                                                                                                                                       if(_loc23_ || eventName)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§^!&§ = [];
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc22_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc22_ && component))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1396);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1367);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1364);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1374);
                                                                                                                                       continue loop75;
                                                                                                                                    }
                                                                                                                                    continue loop115;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop113;
                                                                                                                           }
                                                                                                                           §§goto(addr1462);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1359);
                                                                                                                     }
                                                                                                                     §§goto(addr1475);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1405);
                                                                                                               addr1274:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               var _loc20_:* = §§pop();
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push("UNEQUIP_ALL");
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     if(!(_loc22_ && component))
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(!(_loc22_ && component))
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc22_ && this)
                                                                                                                                 {
                                                                                                                                    addr2133:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr2375:
                                                                                                                                 §§push(12);
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    addr2378:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr2380:
                                                                                                                              continue loop105;
                                                                                                                           }
                                                                                                                           §§push("RANDOMIZE_AVATAR");
                                                                                                                           if(!(_loc22_ && this))
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_);
                                                                                                                                 if(!(_loc22_ && eventIndex))
                                                                                                                                 {
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc23_ || eventIndex)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr2364:
                                                                                                                                          §§push(11);
                                                                                                                                          if(_loc23_ || eventIndex)
                                                                                                                                          {
                                                                                                                                             addr2372:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2380);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push("SHARE_WALL_AVATAR");
                                                                                                                                       if(_loc23_ || eventName)
                                                                                                                                       {
                                                                                                                                          if(!(_loc22_ && eventIndex))
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_);
                                                                                                                                             if(!(_loc22_ && component))
                                                                                                                                             {
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      if(_loc23_ || eventName)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr2265:
                                                                                                                                                      §§push(8);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2380);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push("CANCEL_SHARE");
                                                                                                                                                   if(!(_loc22_ && component))
                                                                                                                                                   {
                                                                                                                                                      addr2116:
                                                                                                                                                      if(_loc23_ || eventIndex)
                                                                                                                                                      {
                                                                                                                                                         addr2124:
                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr2127:
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(3);
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr2133);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr2221:
                                                                                                                                                                     §§goto(addr2380);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr2177:
                                                                                                                                                                  §§push(5);
                                                                                                                                                                  if(!(_loc23_ || eventIndex))
                                                                                                                                                                  {
                                                                                                                                                                     addr2247:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2380);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2380);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push("SHARE_AVATAR");
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr2140:
                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(4);
                                                                                                                                                                              if(_loc22_ && component)
                                                                                                                                                                              {
                                                                                                                                                                                 addr2304:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2380);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr2244:
                                                                                                                                                                              §§push(7);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr2247);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr2372);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2380);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push("BUY_THESE");
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr2158:
                                                                                                                                                                              if(_loc23_ || eventIndex)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc22_ && component))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2177);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2375);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("SET_AVATAR");
                                                                                                                                                                                       if(!(_loc22_ && component))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                             if(_loc23_ || eventIndex)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             addr2241:
                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr2244);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr2265);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("CLOSE_AVATAR");
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2251:
                                                                                                                                                                                                   if(!(_loc22_ && eventName))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2262:
                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc22_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr2265);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2296:
                                                                                                                                                                                                               §§push(9);
                                                                                                                                                                                                               if(!(_loc22_ && component))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2304);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2378);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2380);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push("EASTER_EGG_2");
                                                                                                                                                                                                            if(!(_loc22_ && component))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2277:
                                                                                                                                                                                                               if(!(_loc22_ && eventName))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr2285:
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc23_ || component)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2296);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2375);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push("SCROLL_RIGHT");
                                                                                                                                                                                                                        if(!(_loc22_ && eventName))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2313:
                                                                                                                                                                                                                           if(_loc22_ && eventName)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr2361:
                                                                                                                                                                                                                           if(§§pop() === _loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2364);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2375);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2375);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2380);
                                                                                                                                                                                                                                 §§push(12);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2380);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2375);
                                                                                                                                                                                                                           addr2359:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2375);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2361);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2285);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2361);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2277);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                if(_loc23_ || component)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2332:
                                                                                                                                                                                                         §§push(10);
                                                                                                                                                                                                         if(_loc22_ && eventIndex)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2380);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr2364);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push("SCROLL_LEFT");
                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr2359);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2361);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2380);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2361);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2380);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2277);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2361);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2375);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc22_ && eventIndex))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2213:
                                                                                                                                                                                       §§push(6);
                                                                                                                                                                                       if(_loc23_ || eventIndex)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2221);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr2378);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2332);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2380);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("SET_PROFILE");
                                                                                                                                                                                    if(_loc23_ || eventName)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2230:
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          if(_loc23_ || eventName)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr2241);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2361);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2251);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2313);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2313);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2230);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2262);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2285);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2158);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2313);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2140);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr2127);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2313);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2230);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr2262);
                                                                                                                              }
                                                                                                                              §§goto(addr2158);
                                                                                                                           }
                                                                                                                           §§goto(addr2116);
                                                                                                                           §§goto(addr2375);
                                                                                                                        }
                                                                                                                        §§goto(addr2241);
                                                                                                                     }
                                                                                                                     §§goto(addr2277);
                                                                                                                  }
                                                                                                                  §§goto(addr2124);
                                                                                                               }
                                                                                                               §§goto(addr2213);
                                                                                                            }
                                                                                                            break loop121;
                                                                                                         }
                                                                                                         §§goto(addr1452);
                                                                                                      case 6:
                                                                                                         §§goto(addr1976);
                                                                                                      case 7:
                                                                                                         §§goto(addr1898);
                                                                                                      case 8:
                                                                                                         §§goto(addr1840);
                                                                                                      case 9:
                                                                                                         §§goto(addr1772);
                                                                                                      case 10:
                                                                                                         §§goto(addr1680);
                                                                                                      case 11:
                                                                                                         §§goto(addr1631);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                addr2381:
                                                                                             }
                                                                                             repeaterIndex = §§pop();
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc22_ && eventName))
                                                                                                   {
                                                                                                      if(!(_loc23_ || eventIndex))
                                                                                                      {
                                                                                                         continue loop108;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop104;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      if(!(_loc22_ && this))
                                                                                                      {
                                                                                                         addr1042:
                                                                                                         _loc20_ = §§pop();
                                                                                                         if(!(_loc22_ && eventName))
                                                                                                         {
                                                                                                            var _loc21_:* = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§]6§;
                                                                                                            loop107:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc21_,_loc20_));
                                                                                                               addr1139:
                                                                                                               addr1141:
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  outRepeaterButton = §§nextvalue(_loc20_,_loc21_);
                                                                                                                  if(!(_loc22_ && eventName))
                                                                                                                  {
                                                                                                                     loop66:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(repeaterIndex);
                                                                                                                        loop67:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() == outTabIndex)
                                                                                                                           {
                                                                                                                              loop68:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr1133:
                                                                                                                                 while(!_loc22_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       (outRepeaterButton as AvatarEditorTabRepeaterButton).§`m§();
                                                                                                                                       addr1125:
                                                                                                                                       while(!_loc23_)
                                                                                                                                       {
                                                                                                                                          continue loop68;
                                                                                                                                       }
                                                                                                                                       addr1117:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop66;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop70:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(repeaterIndex);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 continue loop67;
                                                                                                                              }
                                                                                                                              addr1098:
                                                                                                                              repeaterIndex = int(§§pop());
                                                                                                                              for(; _loc23_ || component; if(!_loc23_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },if(!_loc22_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop70;
                                                                                                                                 }
                                                                                                                                 continue loop107;
                                                                                                                              },§§goto(addr1117))
                                                                                                                              {
                                                                                                                                 if(!(_loc22_ && component))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1133);
                                                                                                                              }
                                                                                                                              §§goto(addr1125);
                                                                                                                           }
                                                                                                                           continue loop107;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1135);
                                                                                                                  continue loop107;
                                                                                                               }
                                                                                                               addr1141:
                                                                                                               if(_loc23_ || component)
                                                                                                               {
                                                                                                                  §§goto(addr2007);
                                                                                                                  §§push(eventName);
                                                                                                                  addr1149:
                                                                                                                  addr1478:
                                                                                                               }
                                                                                                               §§goto(addr1374);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1141);
                                                                                                      }
                                                                                                      §§goto(addr2381);
                                                                                                   }
                                                                                                   §§goto(addr1452);
                                                                                                }
                                                                                                addr913:
                                                                                             }
                                                                                             §§goto(addr1475);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1444);
                                                                                    }
                                                                                    §§goto(addr1452);
                                                                                 }
                                                                                 §§goto(addr929);
                                                                              }
                                                                              addr941:
                                                                           }
                                                                           §§goto(addr2381);
                                                                        }
                                                                        §§goto(addr1374);
                                                                     }
                                                                     §§goto(addr1149);
                                                                  }
                                                               }
                                                               §§goto(addr913);
                                                            }
                                                            else
                                                            {
                                                               addr743:
                                                               _loc20_ = §§pop();
                                                               if(_loc23_)
                                                               {
                                                                  _loc21_ = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§]6§;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc21_,_loc20_));
                                                                     if(_loc23_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc22_)
                                                                           {
                                                                              if(!_loc22_)
                                                                              {
                                                                                 if(!(_loc22_ && this))
                                                                                 {
                                                                                    break loop55;
                                                                                 }
                                                                                 §§goto(addr891);
                                                                              }
                                                                           }
                                                                           §§goto(addr1141);
                                                                        }
                                                                        else
                                                                        {
                                                                           overRepeaterButton = §§nextvalue(_loc20_,_loc21_);
                                                                           if(!(_loc22_ && component))
                                                                           {
                                                                              loop57:
                                                                              while(true)
                                                                              {
                                                                                 §§push(repeaterIndex);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != overTabIndex)
                                                                                    {
                                                                                       if(_loc22_ && this)
                                                                                       {
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          (overRepeaterButton as AvatarEditorTabRepeaterButton).§`m§();
                                                                                          addr841:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr854:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       (overRepeaterButton as AvatarEditorTabRepeaterButton).§^f§();
                                                                                       while(true)
                                                                                       {
                                                                                          loop61:
                                                                                          while(_loc23_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc22_ && this))
                                                                                                {
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop57;
                                                                                                }
                                                                                                continue loop61;
                                                                                             }
                                                                                             §§goto(addr841);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr785);
                                                                                    if(_loc22_ && eventIndex)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    repeaterIndex = §§pop();
                                                                                    §§goto(addr806);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr841);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr1139);
                                                               }
                                                            }
                                                            §§goto(addr1141);
                                                         }
                                                         §§goto(addr1042);
                                                      }
                                                      §§goto(addr1374);
                                                   }
                                                   if(!(_loc22_ && this))
                                                   {
                                                      addr1001:
                                                      §§push(eventName);
                                                      if(!_loc22_)
                                                      {
                                                         if(§§pop().toUpperCase().indexOf("OUT") > -1)
                                                         {
                                                            if(_loc23_ || this)
                                                            {
                                                               if(_loc23_ || this)
                                                               {
                                                                  loop118:
                                                                  while(_loc23_ || component)
                                                                  {
                                                                     while(_loc23_)
                                                                     {
                                                                        if(_loc22_)
                                                                        {
                                                                           continue loop118;
                                                                        }
                                                                        §§push(eventName);
                                                                        if(_loc23_ || component)
                                                                        {
                                                                           addr972:
                                                                           §§push(§§pop().toUpperCase().substr(3));
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr978:
                                                                              outString = §§pop();
                                                                              §§goto(addr979);
                                                                           }
                                                                           §§goto(addr1274);
                                                                        }
                                                                        §§goto(addr2007);
                                                                     }
                                                                     §§goto(addr1315);
                                                                  }
                                                                  §§goto(addr1166);
                                                               }
                                                            }
                                                            §§goto(addr1241);
                                                         }
                                                         §§goto(addr1478);
                                                      }
                                                      §§goto(addr1274);
                                                   }
                                                   §§goto(addr1420);
                                                   addr874:
                                                }
                                                §§goto(addr978);
                                             }
                                             §§goto(addr972);
                                          }
                                          §§goto(addr874);
                                       }
                                       §§goto(addr1374);
                                    }
                                    §§goto(addr996);
                                 }
                                 §§goto(addr1374);
                              }
                              §§goto(addr1257);
                           }
                           §§goto(addr1475);
                        }
                        §§goto(addr1001);
                     }
                     §§goto(addr972);
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §5H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               §9F§.§0`§();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     AngryBirdsFP11.§'t§.§?]§();
                     loop3:
                     while(true)
                     {
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
                              while(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    while(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          ExternalInterfaceHandler.§`F§("askForPublishStreamPermission");
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                    addr58:
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc2_)
            {
               continue;
            }
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr58);
         }
      }
      
      private function permissionRequestComplete(success:String) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || bigAvatar)
         {
         }
         var bigAvatar:AvatarRenderer = null;
         var imageSize:int = 0;
         var bmd:BitmapData = null;
         var mat:Matrix = null;
         var scale:Number = NaN;
         var window:UIComponentRovio = null;
         var i:int = 0;
         var postBitmap:Bitmap = null;
         var displayObject:DisplayObject = null;
         if(!_loc12_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §9F§.§+5§();
                  loop2:
                  for(; _loc11_; if(_loc12_ && this)
                  {
                     continue;
                  },§§goto(addr168))
                  {
                     loop3:
                     while(true)
                     {
                        ExternalInterfaceHandler.§>!X§("permissionRequestComplete",this.permissionRequestComplete);
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§`=§);
                              loop6:
                              while(true)
                              {
                                 §§push("WaitingForReply");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(false);
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          loop10:
                                          while(!_loc12_)
                                          {
                                             while(true)
                                             {
                                                if(success != "true")
                                                {
                                                   trace("you got to give permission man!");
                                                   if(!(_loc12_ && imageSize))
                                                   {
                                                      break;
                                                   }
                                                }
                                                while(_loc11_ || success)
                                                {
                                                   while(_loc11_ || this)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop10;
                                                addr170:
                                                if(_loc12_ && bigAvatar)
                                                {
                                                   continue;
                                                }
                                                loop18:
                                                while(_loc11_ || success)
                                                {
                                                   while(true)
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               loop22:
                                                               while(!_loc12_)
                                                               {
                                                                  §§push(this.§`=§);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push("AvatarSharing");
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                        loop25:
                                                                        while(_loc11_)
                                                                        {
                                                                           §§push(true);
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr137:
                                                                              while(_loc11_)
                                                                              {
                                                                                 while(_loc11_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§`=§);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push("ShareAvatarWindow");
                                                                                          if(!(_loc12_ && imageSize))
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop6;
                                                                                    if(!(_loc11_ || imageSize))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr168:
                                                                                    while(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr180);
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr180);
                                                   §§goto(addr158);
                                                }
                                                addr158:
                                             }
                                             return;
                                          }
                                          continue loop4;
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
         }
         while(true)
         {
            §§goto(addr210);
         }
      }
      
      private function §'!U§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc9_ && bigAvatar)
         {
         }
         if(!_loc9_)
         {
            while(true)
            {
               addr139:
               if(!(_loc10_ || this))
               {
                  continue;
               }
               loop20:
               while(true)
               {
                  if(!(_loc9_ && this))
                  {
                     addr101:
                     if(_loc10_ || bigAvatar)
                     {
                        if(_loc10_)
                        {
                           if(!_loc9_)
                           {
                              loop21:
                              while(true)
                              {
                                 §§push(this.§`=§);
                                 if(_loc10_ || bigAvatar)
                                 {
                                    addr54:
                                    §§push("WaitingForReply");
                                    if(_loc10_ || bmd)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(!_loc9_)
                                       {
                                          addr65:
                                          §§push(true);
                                          if(!(_loc9_ && this))
                                          {
                                             if(_loc10_ || this)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                continue loop20;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   addr149:
                                                   addr198:
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!(_loc10_ || bigAvatar))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§`=§);
                                                      while(_loc10_ || imageSize)
                                                      {
                                                         §§push("ShareAvatarWindow");
                                                         while(_loc10_ || imageSize)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            while(_loc10_)
                                                            {
                                                               §§push(false);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§goto(addr54);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                         continue loop21;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr163);
                                                         §§goto(addr116);
                                                      }
                                                      addr116:
                                                   }
                                                   while(true)
                                                   {
                                                      addr195:
                                                      while(true)
                                                      {
                                                         addr192:
                                                         while(true)
                                                         {
                                                            break loop21;
                                                         }
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             addr137:
                                             while(!_loc9_)
                                             {
                                                §§goto(addr139);
                                             }
                                             §§goto(addr149);
                                             §§goto(addr65);
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr116);
                              }
                              while(true)
                              {
                                 addr33:
                                 if(!(_loc10_ || imageSize))
                                 {
                                    continue;
                                 }
                                 if(_loc10_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr44);
                                    }
                                    else
                                    {
                                       var bigAvatar:AvatarRenderer = new AvatarRenderer();
                                       if(_loc10_ || bigAvatar)
                                       {
                                          addr236:
                                          bigAvatar.§4<§();
                                          addr242:
                                          if(_loc10_)
                                          {
                                             if(!(_loc9_ && bigAvatar))
                                             {
                                                addr234:
                                                if(false)
                                                {
                                                   §§goto(addr236);
                                                }
                                                §§push(500);
                                                if(_loc10_ || this)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                var imageSize:* = §§pop();
                                                if(_loc10_ || imageSize)
                                                {
                                                }
                                                var bmd:BitmapData = bigAvatar.render(§5!2§.§<R§.§9"§(),null,imageSize);
                                                if(_loc9_ && this)
                                                {
                                                }
                                                var mat:Matrix = new Matrix();
                                                if(_loc9_)
                                                {
                                                }
                                                §§push(imageSize / 100);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() / 2);
                                                   if(_loc10_ || bmd)
                                                   {
                                                      addr300:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var scale:* = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      addr316:
                                                      mat.scale(scale,scale);
                                                      if(_loc10_ || bmd)
                                                      {
                                                         if(!(_loc9_ && bmd))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr316);
                                                            }
                                                            var watermarkCls:Class = AssetCache.§%p§("WatermarkPlayOnFacebook");
                                                            if(!_loc10_)
                                                            {
                                                            }
                                                            var watermark:MovieClip = new watermarkCls();
                                                            if(_loc10_ || imageSize)
                                                            {
                                                               watermark.x = imageSize - watermark.width;
                                                               watermark.y = imageSize - watermark.height;
                                                               addr393:
                                                               addr406:
                                                               addr398:
                                                               if(!_loc9_)
                                                               {
                                                                  addr378:
                                                                  if(!(_loc9_ && bmd))
                                                                  {
                                                                     addr361:
                                                                     bmd.draw(watermark,mat,null,null,null,true);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr359:
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 var userId:* = §§pop();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    FacebookImageUploader.§-3§(bmd,sAccessToken,userId,this.§"^§,this.§"H§);
                                                                                    addr460:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          §§goto(addr460);
                                                                                       }
                                                                                       return;
                                                                                       addr462:
                                                                                    }
                                                                                    addr464:
                                                                                    §§goto(addr464);
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               addr408:
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr316);
                                                         addr329:
                                                      }
                                                      addr331:
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr242);
                                          }
                                          addr240:
                                          §§goto(addr240);
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              addr44:
                           }
                           while(true)
                           {
                              addr183:
                              while(true)
                              {
                                 break loop20;
                              }
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr162);
                        §§goto(addr101);
                     }
                     addr170:
                  }
                  §§goto(addr137);
               }
               while(_loc10_ || bmd)
               {
                  §§goto(addr170);
               }
               §§goto(addr183);
            }
         }
         §§goto(addr198);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super.deActivate();
               addr140:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §"^§(data:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || str)
         {
         }
         if(_loc3_ || this)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc3_)
               {
               }
               if(_loc4_)
               {
                  break;
               }
               if(true)
               {
                  var str:String = data.toString();
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
                        §§goto(addr97);
                     }
                  }
                  addr97:
               }
               continue;
               while(true)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop3;
                  }
               }
               return;
            }
         }
      }
      
      private function §"H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         while(true)
         {
            this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
            while(!(_loc1_ && this))
            {
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               super.close();
               loop1:
               while(!(_loc1_ && this))
               {
                  do
                  {
                     this.§>+§ = false;
                     while(_loc2_ || _loc2_)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        §§goto(addr57);
                     }
                     continue loop1;
                  }
                  while(!_loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && useFadeEffect)
         {
         }
         var avatar:Avatar = null;
         if(_loc5_ || useFadeEffect)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc5_ || savedAnim)
                  {
                     loop3:
                     while(true)
                     {
                        super.open(useFadeEffect);
                        while(true)
                        {
                           loop5:
                           while(!(_loc6_ && this))
                           {
                              while(true)
                              {
                                 §9F§.§7!0§();
                                 addr54:
                                 while(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §@A§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var categoryName:String = null;
         var item:Item = null;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr41);
         }
         var items:UIRepeaterRovio = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         if(_loc5_)
         {
         }
         var i:* = Number(0);
         loop4:
         while(true)
         {
            if(i >= §5!2§.§]W§().§+@§.length)
            {
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               if(_loc5_)
               {
                  break;
               }
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     addr82:
                     addr114:
                     while(true)
                     {
                        categoryName = §5!2§.§]W§().§+@§[i].name;
                        addr92:
                        while(!_loc5_)
                        {
                           continue loop5;
                        }
                        continue loop6;
                     }
                     item = §5!2§.§<R§.§3`§(categoryName);
                     if(!_loc5_)
                     {
                        addr234:
                        if(item == null)
                        {
                           addr224:
                           addr223:
                           §§push(items);
                           §§push("Repeater_Items_Tab_");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + i);
                           }
                           §§pop().§;!W§(§§pop()).§?!#§(categoryName);
                           addr124:
                           addr231:
                           addr232:
                           addr226:
                           §§push(i);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc5_ && categoryName))
                              {
                                 addr146:
                                 §§push(Number(§§pop()));
                              }
                              i = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 if(_loc6_ || i)
                                 {
                                    if(_loc6_ || i)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && items))
                                          {
                                             if(true)
                                             {
                                                continue loop4;
                                             }
                                             addr182:
                                             if(_loc6_ || items)
                                             {
                                                addr189:
                                                §§goto(addr124);
                                             }
                                             §§goto(addr234);
                                             addr180:
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr226);
                                 }
                                 addr214:
                                 §§goto(addr180);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr146);
                        }
                        §§push(items);
                        §§push("Repeater_Items_Tab_");
                        if(!_loc5_)
                        {
                           §§push(§§pop() + i);
                        }
                        §§push(§§pop().§;!W§(§§pop()));
                        if(_loc6_ || categoryName)
                        {
                           §§push(item.§7!D§);
                           if(_loc6_)
                           {
                              §§pop().§?!#§(§§pop());
                              §§goto(addr214);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr189);
                  }
               }
            }
            return;
         }
         if(!(_loc5_ && items))
         {
            §§goto(addr262);
         }
         §§goto(addr280);
      }
      
      public function §",§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || item)
         {
         }
         var item:String = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!_loc4_)
            {
               addr39:
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§^!&§;
            loop0:
            for each(item in _loc3_)
            {
               while(true)
               {
                  loop2:
                  while(!(_loc4_ && item))
                  {
                     loop3:
                     do
                     {
                        §9F§.§-!<§(item);
                        while(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
            if(!(_loc4_ && _loc3_))
            {
               while(true)
               {
                  this.§^!&§ = [];
                  while(_loc5_)
                  {
                     loop10:
                     while(_loc5_ || this)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        addr110:
                        if(_loc5_)
                        {
                           addr112:
                           if(!(_loc5_ || _loc2_))
                           {
                              loop8:
                              while(true)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§]b§();
                                       continue loop10;
                                       §§goto(addr110);
                                    }
                                    continue;
                                    addr144:
                                 }
                                 else
                                 {
                                    addr163:
                                 }
                                 while(true)
                                 {
                                    ExternalInterfaceHandler.§>!X§("purchaseComplete",this.§",§);
                                    continue loop8;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr144);
                     }
                  }
               }
            }
            §§goto(addr163);
         }
         §§goto(addr39);
      }
      
      private function §;o§(avatarData:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
         }
         if(_loc5_ && this)
         {
         }
         loop0:
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
                     this.§9v§ = this.§=!F§;
                     loop4:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              break;
                              addr46:
                           }
                           while(true)
                           {
                              this.§=!F§ = avatarData;
                              addr50:
                              while(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           addr37:
                           if(!(_loc4_ || urlReq))
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr46);
                           }
                           else
                           {
                              §§push(§+!I§);
                              §§push(sServerRoot + "/saveavatar/");
                              if(_loc4_)
                              {
                                 §§push(§§pop() + avatarData);
                              }
                              var urlReq:URLRequest = §§pop().§[O§(§§pop());
                              if(!_loc5_)
                              {
                                 addr125:
                                 urlReq.method = URLRequestMethod.POST;
                                 addr133:
                              }
                              if(_loc4_)
                              {
                                 if(_loc4_ || urlReq)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr125);
                                    }
                                    var urlLoader:URLLoader = new URLLoader();
                                    if(!(_loc5_ && urlLoader))
                                    {
                                       urlLoader.addEventListener(Event.COMPLETE,this.§2a§);
                                       addr243:
                                       if(!(_loc5_ && urlReq))
                                       {
                                          urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§ N§);
                                          urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!§);
                                          urlLoader.load(urlReq);
                                          addr223:
                                          addr203:
                                          addr200:
                                          if(_loc4_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr243);
                                          }
                                          addr190:
                                          §§goto(addr190);
                                          addr233:
                                       }
                                       addr245:
                                       §§goto(addr245);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr133);
                              }
                              addr131:
                              §§goto(addr131);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function §?!§(event:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               do
               {
                  §9u§.§#"§();
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      private function §2a§(e:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && items)
         {
         }
         var items:Array = null;
         var item:* = null;
         var savedAnim:§=D§ = null;
         if(_loc7_ || items)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§=!F§);
                  if(_loc8_)
                  {
                     break;
                  }
                  if(§§pop() != null)
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              addr129:
                              while(true)
                              {
                                 (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString = this.§=!F§;
                                 addr126:
                                 while(true)
                                 {
                                    addr108:
                                    while(_loc7_ || e)
                                    {
                                    }
                                    continue loop3;
                                 }
                              }
                              addr61:
                              if(!(_loc7_ || item))
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              if(_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(false)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             ProfilePicture.§ !"§(this.§=!F§);
                                             addr59:
                                             addr103:
                                             while(!_loc8_)
                                             {
                                                §§goto(addr61);
                                             }
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break loop11;
                                                }
                                                break;
                                             }
                                             §§goto(addr126);
                                          }
                                          while(_loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr108);
                                          addr73:
                                          addr52:
                                       }
                                       §§push(this.§=!F§);
                                       break loop1;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr59);
                           }
                        }
                     }
                  }
                  else
                  {
                     addr267:
                     if(this.§>+§)
                     {
                        if(!_loc8_)
                        {
                           if(_loc7_)
                           {
                              loop30:
                              while(true)
                              {
                                 loop31:
                                 while(true)
                                 {
                                    §§push(this.§`=§);
                                    if(_loc7_ || items)
                                    {
                                       §§push("WaitingForReply");
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(_loc7_)
                                          {
                                             §§pop().setVisibility(false);
                                             while(true)
                                             {
                                                if(_loc7_ || items)
                                                {
                                                   if(_loc7_ || item)
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(this.§`=§);
                                                         break loop31;
                                                      }
                                                      continue loop31;
                                                   }
                                                   continue loop30;
                                                }
                                             }
                                             addr319:
                                             §§push(§§pop().getItemByName(§§pop()));
                                             addr313:
                                          }
                                          savedAnim = §§pop() as §=D§;
                                          if(!(_loc8_ && this))
                                          {
                                             while(true)
                                             {
                                                savedAnim.setVisibility(true);
                                                loop23:
                                                for(; _loc7_ || this; while(_loc7_ || items)
                                                {
                                                   §§goto(addr367);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      savedAnim.mClip.gotoAndPlay(1);
                                                      continue loop23;
                                                      loop28:
                                                      while(_loc7_ || e)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop28;
                                                            }
                                                            addr342:
                                                            if(_loc7_ || items)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                               addr367:
                                                            }
                                                            while(true)
                                                            {
                                                               this.§1i§();
                                                               continue loop28;
                                                            }
                                                         }
                                                         return;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr319);
                                    }
                                    break;
                                 }
                                 §§goto(addr319);
                              }
                              addr315:
                           }
                           §§goto(addr313);
                        }
                        §§goto(addr315);
                     }
                     §§goto(addr410);
                  }
               }
               items = §§pop().split("-");
               if(!_loc7_)
               {
               }
               loop13:
               for(var _loc5_:int = 0,var _loc6_:* = items; §§hasnext(_loc6_,_loc5_); )
               {
                  §§push(§§nextvalue(_loc5_,_loc6_));
                  while(true)
                  {
                     item = §§pop();
                     loop15:
                     while(true)
                     {
                        loop16:
                        while(true)
                        {
                           §§push(this.§9v§);
                           loop17:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §9F§.§61§(item);
                                 while(!_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    if(_loc7_ || item)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop17;
                                                }
                                                §9F§.§61§(item);
                                             }
                                             continue loop17;
                                             addr238:
                                          }
                                          if(!(_loc7_ || item))
                                          {
                                             addr247:
                                             continue loop17;
                                          }
                                          if(_loc8_ && e)
                                          {
                                             continue loop15;
                                          }
                                          if(true)
                                          {
                                          }
                                          addr203:
                                          continue loop13;
                                       }
                                    }
                                    §§goto(addr241);
                                 }
                                 continue loop16;
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                     if(!(_loc7_ || this))
                     {
                        continue;
                     }
                     if(§§pop().indexOf(item) == -1)
                     {
                        §§goto(addr238);
                     }
                     §§goto(addr203);
                  }
               }
               if(!_loc7_)
               {
               }
               §§goto(addr267);
            }
         }
         while(true)
         {
            CustomAvatarCache.§[h§(new §3a§(this.§=!F§,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID),true,true);
            §§goto(addr103);
         }
      }
      
      private function § N§(e:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         var savedAnim:§=D§ = null;
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(this.§>+§)
               {
                  while(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
               addr183:
               return;
            }
         }
         while(true)
         {
            §§goto(addr88);
         }
      }
      
      public function §0H§(itemCategory:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc2_ && itemCategory)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §5!2§.§<R§.§0H§(itemCategory);
               while(true)
               {
                  while(!_loc2_)
                  {
                     continue loop0;
                     while(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || this)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §]S§(itemId:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var nextBird:Avatar = null;
         var currentBG:Object = null;
         var oldItem:Item = null;
         if(_loc9_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     addr40:
                     while(true)
                     {
                        if(_loc9_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §1i§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(!_loc19_)
         {
         }
         var category:§,v§ = null;
         var item:Item = null;
         var avatarStringArray:Array = null;
         var currentString:String = null;
         var currentStringAsArray:Array = null;
         var string:String = null;
         var categoryButton:AvatarEditorTabRepeaterButton = null;
         var activeCategoryItem:AvatarEditorTabRepeaterButton = null;
         var itemPrice:* = 0;
         if(!(_loc20_ && avatarString))
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
                     while(true)
                     {
                        while(true)
                        {
                           addr103:
                           while(_loc19_)
                           {
                              if(_loc19_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        addr83:
                        loop7:
                        while(!(_loc20_ && this))
                        {
                           while(true)
                           {
                              addr64:
                              while(!_loc20_)
                              {
                                 if(_loc19_ || changed)
                                 {
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              continue loop7;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc19_)
            {
               if(_loc19_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr62);
               }
               §§goto(addr103);
            }
            §§goto(addr64);
         }
         §§push(0);
         if(_loc19_ || avatarString)
         {
            §§push(int(§§pop()));
         }
         var totalPrice:* = §§pop();
         if(_loc19_ || avatarString)
         {
         }
         §§push(false);
         if(_loc19_)
         {
            §§push(Boolean(§§pop()));
         }
         var changed:* = §§pop();
         if(_loc20_ && this)
         {
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
         if(_loc19_ || totalPrice)
         {
            §§push(§§pop());
         }
         var avatarString:* = §§pop();
         if(!_loc20_)
         {
            loop11:
            while(true)
            {
               §§push(avatarString);
               while(true)
               {
                  §§push(§§pop() == null);
                  if(!(_loc20_ && avatarString))
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc20_ && avatarString))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          loop19:
                                          for(; _loc19_; if(!(_loc19_ || avatarString))
                                          {
                                             continue;
                                          },if(!_loc19_)
                                          {
                                             continue loop18;
                                          },if(false)
                                          {
                                             §§goto(addr187);
                                          },§§goto(addr298),§§push(avatarString))
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                addr187:
                                                while(true)
                                                {
                                                   continue loop20;
                                                }
                                                continue loop19;
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 §§push(0);
                                 if(!_loc20_)
                                 {
                                    var _loc17_:* = §§pop();
                                    if(!(_loc20_ && this))
                                    {
                                       var _loc18_:* = §5!2§.§]W§().§+@§;
                                       loop41:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc18_,_loc17_));
                                          if(!(_loc20_ && avatarString))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc20_ && changed))
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      addr562:
                                                      if(_loc19_)
                                                      {
                                                         if(!_loc20_)
                                                         {
                                                            loop159:
                                                            while(true)
                                                            {
                                                               this.§case§ = [];
                                                               if(!(_loc20_ && changed))
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           addr604:
                                                                           _loc18_ = §5!2§.§<R§.§1!B§;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc18_,_loc17_));
                                                                              break loop41;
                                                                           }
                                                                           addr763:
                                                                        }
                                                                        addr766:
                                                                        if(_loc19_ || totalPrice)
                                                                        {
                                                                           loop64:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`=§);
                                                                              if(!(_loc20_ && totalPrice))
                                                                              {
                                                                                 §§push("Button_Share");
                                                                                 loop65:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                    loop66:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(false);
                                                                                       loop67:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().setVisibility(§§pop());
                                                                                          loop68:
                                                                                          while(true)
                                                                                          {
                                                                                             loop69:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(totalPrice);
                                                                                                addr1548:
                                                                                                loop164:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   loop104:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         §§push(this.§`=§);
                                                                                                         loop151:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("BuyTheseButton");
                                                                                                            loop132:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().getItemByName(§§pop()));
                                                                                                               loop133:
                                                                                                               while(_loc19_ || changed)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  loop134:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc19_ || totalPrice)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        continue loop69;
                                                                                                                     }
                                                                                                                     loop129:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        addr1519:
                                                                                                                        loop130:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr1406:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§?w§);
                                                                                                                              loop120:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(totalPrice);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       continue loop164;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc19_ || changed))
                                                                                                                                       {
                                                                                                                                          continue loop104;
                                                                                                                                       }
                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                       {
                                                                                                                                          §§push(this.§`=§);
                                                                                                                                          loop135:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push("SetFacebookProfileButton");
                                                                                                                                             loop136:
                                                                                                                                             while(_loc19_ || changed)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                loop137:
                                                                                                                                                while(!(_loc20_ && this))
                                                                                                                                                {
                                                                                                                                                   addr1219:
                                                                                                                                                   (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                   loop96:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      loop97:
                                                                                                                                                      for(; _loc19_; while(!(_loc20_ && changed))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr948);
                                                                                                                                                         §§push(this.§`=§);
                                                                                                                                                         §§goto(addr1048);
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(changed);
                                                                                                                                                            if(_loc20_ && changed)
                                                                                                                                                            {
                                                                                                                                                               continue loop120;
                                                                                                                                                            }
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§`=§);
                                                                                                                                                               loop138:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("SetAvatarProfileButton");
                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                           loop139:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ || totalPrice)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_ || changed)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                                                                                                                                                                                       addr1182:
                                                                                                                                                                                       while(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop97;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ || avatarString)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop96;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1470:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§`=§);
                                                                                                                                                                                             addr1462:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("Textfield_Price");
                                                                                                                                                                                                addr1463:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                   addr1464:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                      addr1465:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                                                                                                                         addr1467:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1458:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§`=§);
                                                                                                                                                                                                               addr1429:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc20_ && totalPrice))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                        addr1438:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                           addr1439:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc19_ || totalPrice))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_ && changed)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop69;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1576:
                                                                                                                                                                                                                                    addr1576:
                                                                                                                                                                                                                                    addr1545:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1536:
                                                                                                                                                                                                                                       §§push(this.§`=§);
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1528:
                                                                                                                                                                                                                                          §§push("Textfield_Price");
                                                                                                                                                                                                                                          break loop136;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop64;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    var setAvatarProfileButton:UIButtonRovio = §§pop().getItemByName(§§pop()) as UIButtonRovio;
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop70:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(setAvatarProfileButton.mClip.SetAvatarHolder.numChildren <= 0)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1599:
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(false)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§5!2§.§<R§.§9"§());
                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      var currentAvatarString:* = §§pop();
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      var avBmp:Bitmap = new Bitmap(this.§"!a§.render(currentAvatarString,null));
                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop74:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            avBmp.x = -8;
                                                                                                                                                                                                                                                            addr1700:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop78:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ && totalPrice)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop74;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop79:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  setAvatarProfileButton.mClip.SetAvatarHolder.addChild(avBmp);
                                                                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                                                                  while(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1657:
                                                                                                                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop78;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop79;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           var tab:UIRepeaterTabRovio = this.§`=§.getItemByName(this.§`=§.§-!6§("Repeater_Items")) as UIRepeaterTabRovio;
                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr2023:
                                                                                                                                                                                                                                                                              if(tab)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr2020:
                                                                                                                                                                                                                                                                                 addr2021:
                                                                                                                                                                                                                                                                                 §§push(this.§`=§);
                                                                                                                                                                                                                                                                                 §§push("Page ");
                                                                                                                                                                                                                                                                                 §§push(tab.§]Y§);
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1998:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + (§§pop() + 1).toString());
                                                                                                                                                                                                                                                                                    §§push("/");
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2012:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr2011:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + tab.§"=§);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push("Textfield_PageNumber");
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().setText(§§pop(),§§pop());
                                                                                                                                                                                                                                                                                    addr1975:
                                                                                                                                                                                                                                                                                    addr2015:
                                                                                                                                                                                                                                                                                    if(tab.§"=§ == 1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1972:
                                                                                                                                                                                                                                                                                       §§push(this.§`=§);
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1963:
                                                                                                                                                                                                                                                                                          §§pop().getItemByName("Textfield_PageNumber").setVisibility(false);
                                                                                                                                                                                                                                                                                          addr1954:
                                                                                                                                                                                                                                                                                          §§push(this.§`=§);
                                                                                                                                                                                                                                                                                          §§push("Button_Scroll1");
                                                                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1940:
                                                                                                                                                                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                   addr1944:
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1927:
                                                                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1897:
                                                                                                                                                                                                                                                                                                         §§push(this.§`=§);
                                                                                                                                                                                                                                                                                                         §§push("Button_Scroll2");
                                                                                                                                                                                                                                                                                                         if(_loc19_ || changed)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1909:
                                                                                                                                                                                                                                                                                                               §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                  addr1913:
                                                                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && totalPrice))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr2020);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1718);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1975);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1972);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1940);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2020);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2012);
                                                                                                                                                                                                                                                                                                         addr1929:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1954);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2015);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1963);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1998);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1961:
                                                                                                                                                                                                                                                                                          §§goto(addr1961);
                                                                                                                                                                                                                                                                                          addr1965:
                                                                                                                                                                                                                                                                                          addr1962:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2020);
                                                                                                                                                                                                                                                                                       addr1971:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1880:
                                                                                                                                                                                                                                                                                    §§push(this.§`=§);
                                                                                                                                                                                                                                                                                    §§push("Textfield_PageNumber");
                                                                                                                                                                                                                                                                                    if(_loc19_ || avatarString)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1888:
                                                                                                                                                                                                                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1891:
                                                                                                                                                                                                                                                                                          §§pop().setVisibility(true);
                                                                                                                                                                                                                                                                                          addr1865:
                                                                                                                                                                                                                                                                                          addr1893:
                                                                                                                                                                                                                                                                                          if(_loc19_ || totalPrice)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1811:
                                                                                                                                                                                                                                                                                             §§push(this.§`=§);
                                                                                                                                                                                                                                                                                             if(_loc19_ || changed)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && changed))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && changed))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1842:
                                                                                                                                                                                                                                                                                                         §§push(§§pop().getItemByName("Button_Scroll1"));
                                                                                                                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                               addr1848:
                                                                                                                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1805:
                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§`=§);
                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push("Button_Scroll2");
                                                                                                                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc19_ || totalPrice)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc19_ || avatarString)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                                                    if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && totalPrice))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                                                                                                                                   addr1784:
                                                                                                                                                                                                                                                                                                                                                   if(_loc19_ || changed)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1971);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1718);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1965);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1913);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1784);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2023);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1927);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1865);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1805);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1842);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1962);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1940);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1888);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1842);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1963);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1880);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1842);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1811);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1848);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1944);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1893);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1909);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1891);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1972);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1963);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1897);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1880);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2021);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1909);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1897);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2011);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1718:
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1929);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop79;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop80;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  avBmp.y = -12;
                                                                                                                                                                                                                                                                  §§goto(addr1692);
                                                                                                                                                                                                                                                                  §§goto(addr1657);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1700);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1695);
                                                                                                                                                                                                                                                      addr1601:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      setAvatarProfileButton.mClip.SetAvatarHolder.removeChildAt(0);
                                                                                                                                                                                                                                                      addr1613:
                                                                                                                                                                                                                                                      addr1617:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop70;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1613);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1599);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1617);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1601);
                                                                                                                                                                                                                                    §§goto(addr1455);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1455:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1437:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1507:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                     addr1508:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ || avatarString)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1515:
                                                                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop129;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1516:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1541:
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
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1182:
                                                                                                                                                                                       addr1106:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                       addr1543:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                                                                          §§goto(addr1545);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr1116:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc20_ && changed))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop66;
                                                                                                                                                                                       }
                                                                                                                                                                                       (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                       loop85:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ && avatarString))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc20_ && changed))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr881:
                                                                                                                                                                                                   loop86:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§`=§);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ || avatarString)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop138;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc19_ || avatarString))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop135;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc20_ && changed))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().setText(PopupsUIView.§<!4§(totalPrice),"Textfield_Price");
                                                                                                                                                                                                                  loop87:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ && changed)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop96;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop88:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop87;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc20_ && this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this.§"!a§);
                                                                                                                                                                                                                        loop89:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() == null)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop90:
                                                                                                                                                                                                                              while(!(_loc20_ && totalPrice))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop91:
                                                                                                                                                                                                                                 while(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§"!a§ = new AvatarRenderer();
                                                                                                                                                                                                                                    loop92:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop85;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                       loop95:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc19_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc20_ && changed))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc20_ && changed))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr832);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1405);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr933);
                                                                                                                                                                                                                                             continue loop91;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop92;
                                                                                                                                                                                                                                          addr832:
                                                                                                                                                                                                                                          if(_loc19_ || changed)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop90;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1573:
                                                                                                                                                                                                                                                      §§push(this.§`=§);
                                                                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1507);
                                                                                                                                                                                                                                                   §§push(this.§`=§);
                                                                                                                                                                                                                                                   addr1522:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1536);
                                                                                                                                                                                                                                                addr835:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§"!a§);
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§4<§();
                                                                                                                                                                                                                                                continue loop95;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop89;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr933:
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_ || avatarString)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop86;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr944:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§`=§);
                                                                                                                                                                                                                                                   addr1377:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1413:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc19_ || changed)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc20_ && changed))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1182);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1448);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop117:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§`=§);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push("SetFacebookProfileButton");
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1241:
                                                                                                                                                                                                                                                                     if(_loc19_ || avatarString)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                        if(_loc19_ || changed)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                                                                           loop155:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc19_ || avatarString))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop130;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§`=§);
                                                                                                                                                                                                                                                                                       addr1294:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                                                                                          addr1295:
                                                                                                                                                                                                                                                                                          addr1378:
                                                                                                                                                                                                                                                                                          while(!(_loc20_ && changed))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop65;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                                                                                                      continue loop117;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1464);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1437);
                                                                                                                                                                                                                                                                                             §§goto(addr1241);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc19_ || avatarString))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop132;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                                                                                                                                                                                                                                         break loop97;
                                                                                                                                                                                                                                                                                                         addr1405:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1390:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1508);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1516);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1463);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop117;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop155;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop130;
                                                                                                                                                                                                                                                                                 addr1346:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc19_ || totalPrice)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc19_ || changed)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop159;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1467);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1458);
                                                                                                                                                                                                                                                                              §§goto(addr1467);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1264:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1545);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1295);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1545);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1429);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1231:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1413);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§`=§);
                                                                                                                                                                                                                                                                     addr1540:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1551:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1410:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1541);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1288:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1349);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1167:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1378);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1106);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop85;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop68;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1522);
                                                                                                                                                                                                                              addr1533:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1573);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc20_ && changed)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop97;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr933);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1288);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop96;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1540);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1377);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop144:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc20_ && avatarString))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc20_ && avatarString))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc19_ || totalPrice))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop151;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push("Button_Share");
                                                                                                                                                                                                                        if(_loc19_ || avatarString)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc20_ && avatarString)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop136;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop139;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc19_ || avatarString))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop137;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc20_ && totalPrice))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                                                                 if(!(_loc20_ && changed))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop134;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc20_ && changed))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                             §§goto(addr1048);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1543);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                          §§goto(addr1533);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1465);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1439);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1390);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1545);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1462);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1112:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("SetAvatarProfileButton");
                                                                                                                                                                                                                     break loop138;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop144;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1353:
                                                                                                                                                                                                            §§push("SetFacebookProfileButton");
                                                                                                                                                                                                            if(!(_loc20_ && changed))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                               break loop139;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1545);
                                                                                                                                                                                                            addr948:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1231);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr881:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1550:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1550:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1551);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr881);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1370:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1264);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1438);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1312);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           (§§pop() as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
                                                                                                                                                                           §§goto(addr1370);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1576);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1294);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1116);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1167);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1416);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1353);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1112);
                                                                                                                                                      §§goto(addr1182);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop133;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                break loop104;
                                                                                                                                                §§goto(addr1528);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1515);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1346);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1410);
                                                                                                                              }
                                                                                                                              continue loop130;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop104;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1550);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1531);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr1576);
                                                                           §§push("SetAvatarProfileButton");
                                                                        }
                                                                        §§goto(addr1189);
                                                                     }
                                                                     §§goto(addr1337);
                                                                  }
                                                                  §§goto(addr1519);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr881);
                                                            }
                                                         }
                                                         §§goto(addr1550);
                                                      }
                                                      §§goto(addr944);
                                                   }
                                                   §§goto(addr604);
                                                }
                                                addr765:
                                                §§goto(addr766);
                                             }
                                             else
                                             {
                                                category = §§nextvalue(_loc17_,_loc18_);
                                                if(!(_loc20_ && this))
                                                {
                                                   if(!_loc19_)
                                                   {
                                                   }
                                                }
                                                categoryButton = this.§`=§.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
                                                if(_loc20_ && this)
                                                {
                                                }
                                                loop42:
                                                while(true)
                                                {
                                                   addr529:
                                                   while(true)
                                                   {
                                                      categoryButton.§6!"§();
                                                      continue loop42;
                                                   }
                                                   continue loop41;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       loop45:
                                       for(; §§pop(); §§goto(addr763))
                                       {
                                          item = §§nextvalue(_loc17_,_loc18_);
                                          if(_loc20_ && this)
                                          {
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(!_loc19_)
                                                {
                                                }
                                                if(!_loc19_)
                                                {
                                                   break;
                                                }
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                activeCategoryItem = this.§`=§.getItemByName(item.category.toUpperCase()) as AvatarEditorTabRepeaterButton;
                                                if(!_loc20_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§"!e§(item.§7!D§));
                                                      loop50:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         loop51:
                                                         while(true)
                                                         {
                                                            itemPrice = §§pop();
                                                            while(true)
                                                            {
                                                               loop53:
                                                               while(true)
                                                               {
                                                                  activeCategoryItem.§-7§(item.§7!D§,itemPrice);
                                                                  loop54:
                                                                  while(true)
                                                                  {
                                                                     loop55:
                                                                     while(true)
                                                                     {
                                                                        §§push(itemPrice);
                                                                        loop56:
                                                                        while(_loc19_)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    continue loop53;
                                                                                 }
                                                                                 continue loop54;
                                                                              }
                                                                              loop61:
                                                                              while(true)
                                                                              {
                                                                                 §§push(totalPrice);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(!(_loc19_ || this))
                                                                                    {
                                                                                       continue loop56;
                                                                                    }
                                                                                    §§push(itemPrice);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§goto(addr683);
                                                                                       §§push(int(§§pop() + §§pop()));
                                                                                    }
                                                                                    §§goto(addr713);
                                                                                    continue loop56;
                                                                                 }
                                                                                 addr683:
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop51;
                                                                                 }
                                                                                 totalPrice = §§pop();
                                                                                 loop62:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc19_ || this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr703:
                                                                                    while(!_loc20_)
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          break loop62;
                                                                                       }
                                                                                       continue loop55;
                                                                                    }
                                                                                    continue loop54;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop61;
                                                                                 }
                                                                              }
                                                                              continue loop45;
                                                                           }
                                                                           continue loop53;
                                                                        }
                                                                        continue loop50;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr731);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr765);
                                    }
                                    §§goto(addr562);
                                 }
                                 §§goto(addr1548);
                                 addr265:
                              }
                           }
                        }
                        if(_loc20_ && changed)
                        {
                           continue;
                        }
                        §§goto(addr265);
                     }
                  }
                  §§goto(addr293);
               }
            }
         }
         §§goto(addr294);
      }
   }
}
