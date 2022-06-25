package §+!1§
{
   import §##§.Popup;
   import §%!4§.StatePopupManager;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §2!i§.§7"§;
   import §3w§.§1!!§;
   import §3w§.AvatarRenderer;
   import §4!9§.§6"§;
   import §5!'§.§>Y§;
   import §5!'§.ProfilePicture;
   import §6!a§.§"!F§;
   import §6b§.FacebookImageUploader;
   import §6b§.Log;
   import §6b§.§^9§;
   import §7p§.§+!N§;
   import §9R§.CustomAvatarCache;
   import §9R§.§`y§;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import §?!G§.§8!-§;
   import §?j§.FacebookUserProgress;
   import §?t§.PopupsUIView;
   import §[!H§.§6!4§;
   import §[!H§.Avatar;
   import §[!H§.AvatarEditorTabRepeaterButton;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIRepeaterButtonRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UIRepeaterTabRovio;
   import §^B§.§1!b§;
   import §^B§.Item;
   import §^B§.§[_§;
   import §^`§.ServerIdParser;
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
      
      private static var sAvatarContainer:§6!4§;
      
      public static var sServerRoot:String;
      
      private static var sPreviousState:String;
      
      public static var sAllAvatarItems:Array;
      
      public static var sAllItemsLoader:URLLoader;
      
      public static var sAvatars:Array;
      
      private static var sFirstTimeInit:Boolean = true;
      
      {
         var sAvatorCreatorPopupBin:Boolean = false;
         var sAccessToken:Boolean = true;
         if(!sAvatorCreatorPopupBin)
         {
            loop0:
            while(true)
            {
               sAvatorCreatorPopupBin = §+]§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
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
                           loop5:
                           while(true)
                           {
                              STATE_NAME = "CreatorState";
                              while(sAccessToken)
                              {
                                 while(!sAvatorCreatorPopupBin)
                                 {
                                    SPOTS = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
                                    continue loop4;
                                    loop9:
                                    while(!(sAvatorCreatorPopupBin && AvatarCreatorPopup))
                                    {
                                       STARTUP_CHARACTER = "RedBird";
                                       loop10:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             STARTUP_CHARACTER_HAT = "NoHat";
                                             continue loop5;
                                             addr174:
                                             loop13:
                                             while(!(sAvatorCreatorPopupBin && AvatarCreatorPopup))
                                             {
                                                STARTUP_CHARACTER_SID = "10001";
                                                loop14:
                                                while(true)
                                                {
                                                   loop15:
                                                   for(; sAccessToken; while(sAccessToken || AvatarCreatorPopup)
                                                   {
                                                      §§goto(addr115);
                                                   })
                                                   {
                                                      STARTUP_CHARACTER_CATEGORY = "CategoryBirds";
                                                      while(!(sAvatorCreatorPopupBin && sAccessToken))
                                                      {
                                                         continue loop15;
                                                         while(sAccessToken || sAvatorCreatorPopupBin)
                                                         {
                                                            if(sAccessToken || sAccessToken)
                                                            {
                                                               addr81:
                                                               while(!(sAvatorCreatorPopupBin && sAvatorCreatorPopupBin))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(sAccessToken || AvatarCreatorPopup)
                                                               {
                                                                  continue loop10;
                                                                  §§goto(addr81);
                                                               }
                                                               addr81:
                                                               continue loop15;
                                                               addr115:
                                                            }
                                                            continue loop4;
                                                            addr49:
                                                            if(sAccessToken || sAccessToken)
                                                            {
                                                               sFirstTimeInit = true;
                                                               addr56:
                                                               if(sAvatorCreatorPopupBin && sAccessToken)
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(sAvatorCreatorPopupBin && sAccessToken)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(sAccessToken)
                                                                           {
                                                                              if(sAvatorCreatorPopupBin)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           §§goto(addr81);
                                                                           continue loop25;
                                                                        }
                                                                        continue loop14;
                                                                        addr59:
                                                                     }
                                                                     if(sAccessToken)
                                                                     {
                                                                        §§goto(addr49);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!sAvatorCreatorPopupBin)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr66);
                                                                        }
                                                                        addr66:
                                                                        addr78:
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!sAvatorCreatorPopupBin)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private var §1v§:StatePopupManager;
      
      private var §8F§:Item = null;
      
      private var §-M§:Boolean = false;
      
      private var §;n§:String;
      
      private var §;!0§:Array;
      
      private var §-`§:Array;
      
      private var §"p§:Boolean = false;
      
      private var § t§:Boolean = false;
      
      private var §5!M§:§6"§;
      
      private var §^a§:AvatarRenderer;
      
      private var §'F§:String;
      
      private var §>5§:String;
      
      public function AvatarCreatorPopup(currentUIView:§6"§, statePopupManager:StatePopupManager, activeTabName:String = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var character:§[_§ = null;
         if(!_loc9_)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§;!0§ = [];
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              this.§-`§ = [];
                              addr195:
                              if(!(_loc9_ && statePopupManager))
                              {
                                 loop22:
                                 for(; !_loc9_; if(!(_loc8_ || this))
                                 {
                                    continue;
                                 },addr56:,if(!(_loc9_ && activeTabName))
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop4;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr67);
                                    }
                                    var avatarCreator:§1!!§ = new §1!!§();
                                    if(!_loc9_)
                                    {
                                       addr381:
                                       if(sAvatars == null)
                                       {
                                          addr376:
                                          if(_loc8_)
                                          {
                                             addr363:
                                             if(!(_loc9_ && this))
                                             {
                                                addr349:
                                                sAvatars = [];
                                                if(_loc8_ || activeTabName)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && activeTabName))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr349);
                                                         }
                                                         var _loc6_:int = 0;
                                                         var _loc7_:* = §1!!§.§=x§().characters;
                                                         addr419:
                                                         for each(character in _loc7_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                            }
                                                            addr408:
                                                            sAvatars.push(new Avatar(character));
                                                            addr418:
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr408);
                                                                  }
                                                                  §§goto(addr419);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            addr416:
                                                            §§goto(addr416);
                                                         }
                                                         if(!(_loc9_ && activeTabName))
                                                         {
                                                            addr528:
                                                            if(sAvatarContainer == null)
                                                            {
                                                               sAvatarContainer = new §6!4§();
                                                               addr526:
                                                               addr525:
                                                               if(!(_loc9_ && activeTabName))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr478:
                                                                     if(sAllItemsLoader == null)
                                                                     {
                                                                        addr483:
                                                                        if(_loc8_ || activeTabName)
                                                                        {
                                                                           this.§`n§();
                                                                           addr501:
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 if(!(_loc9_ && currentUIView))
                                                                                 {
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       if(_loc9_ && statePopupManager)
                                                                                       {
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr501);
                                                                              }
                                                                              §§goto(addr528);
                                                                           }
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     addr431:
                                                                     return;
                                                                     addr513:
                                                                  }
                                                                  §§goto(addr525);
                                                               }
                                                               addr519:
                                                               §§goto(addr519);
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   §§goto(addr349);
                                                }
                                             }
                                             §§goto(addr376);
                                             addr379:
                                          }
                                          §§goto(addr381);
                                       }
                                       §§goto(addr528);
                                    }
                                    §§goto(addr379);
                                 },while(true)
                                 {
                                    §§goto(addr304);
                                    §§goto(addr56);
                                 })
                                 {
                                    addr179:
                                    §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked("1000-2"));
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§5!M§);
                                          if(!_loc9_)
                                          {
                                             §§push("ButtonEasterEgg2");
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   §§push(true);
                                                   if(!_loc9_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || currentUIView)
                                                         {
                                                            addr130:
                                                            if(_loc8_ || this)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr94:
                                                                     if(_loc9_ && currentUIView)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        sServerRoot = AngryBirdsFP11.SERVER_ROOT;
                                                                        continue loop24;
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           super(§^9§.§1<§(sAvatorCreatorPopupBin),currentUIView);
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              addr273:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(activeTabName));
                                                                                 addr259:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr206:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§1v§.addEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
                                                                                       addr216:
                                                                                       while(true)
                                                                                       {
                                                                                          break loop23;
                                                                                          §§goto(addr130);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr179);
                                                                                 }
                                                                                 addr146:
                                                                                 while(_loc8_ || this)
                                                                                 {
                                                                                    §§goto(addr67);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr283:
                                                                        }
                                                                        break;
                                                                        addr167:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ && currentUIView)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(this.§5!M§);
                                                                           while(true)
                                                                           {
                                                                              §§push("ButtonEasterEgg2");
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 addr143:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    addr144:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().setVisibility(§§pop());
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr67:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr286);
                                                                     }
                                                                     addr286:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && activeTabName))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr195);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr304:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§1v§ = statePopupManager;
                                                                        §§goto(addr298);
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr94);
                                                               }
                                                               §§goto(addr238);
                                                               addr184:
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         break;
                                                         if(!(_loc8_ || currentUIView))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc9_ && currentUIView))
                                                         {
                                                            continue loop22;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr167);
                                                         }
                                                         addr166:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§5!M§ = currentUIView;
                                                         §§goto(addr184);
                                                         §§goto(addr123);
                                                      }
                                                      addr123:
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr259);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc9_ && this)
               {
                  continue;
               }
               §§goto(addr206);
            }
         }
         §§goto(addr309);
      }
      
      public static function §@i§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var itemObject:Object = null;
         if(_loc6_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc5_ || AvatarCreatorPopup))
               {
               }
               if(!_loc6_)
               {
                  if(true)
                  {
                     var _loc3_:int = 0;
                     for each(itemObject in sItemsAvailable)
                     {
                        if(!_loc5_)
                        {
                        }
                        while(itemObject.itemId == itemId)
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              return true;
                           }
                        }
                     }
                     if(_loc5_ || AvatarCreatorPopup)
                     {
                     }
                  }
                  continue;
                  return false;
               }
               break;
            }
         }
      }
      
      public static function §3!`§(itemId:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || itemObject)
         {
         }
         var itemObject:Object = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  continue loop0;
               }
            }
            addr48:
         }
         while(true)
         {
            if(!_loc5_)
            {
               continue;
            }
            if(!(_loc6_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         var _loc3_:int = 0;
         loop3:
         for each(itemObject in sItemsAvailable)
         {
            if(_loc6_)
            {
            }
            loop4:
            while(true)
            {
               §§push(itemObject.itemId == itemId);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
               }
               loop5:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc5_ || itemId)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        loop7:
                        while(true)
                        {
                           §§push(!itemObject.available);
                           if(!_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop6;
                              }
                              if(!_loc5_)
                              {
                                 continue loop5;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ || itemId))
                                 {
                                    break loop7;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                        }
                        addr113:
                        return itemObject.price;
                     }
                  }
                  §§goto(addr94);
               }
            }
         }
         if(_loc6_ && itemId)
         {
         }
         return 0;
      }
      
      public static function §8]§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && AvatarCreatorPopup)
         {
         }
         var itemObject:Object = null;
         if(!(_loc6_ && AvatarCreatorPopup))
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  continue loop0;
               }
            }
            addr48:
         }
         while(true)
         {
            if(!_loc5_)
            {
               continue;
            }
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         for each(itemObject in sItemsAvailable)
         {
            if(!(_loc6_ && itemId))
            {
               while(true)
               {
                  §§push(itemObject.itemId == itemId);
                  if(!(_loc6_ && itemId))
                  {
                     §§push(Boolean(§§pop()));
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        addr167:
                        while(true)
                        {
                           §§pop();
                           §§push(!itemObject.available);
                           if(_loc5_ || itemId)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc6_ && AvatarCreatorPopup))
                           {
                              if(!_loc6_)
                              {
                                 break loop5;
                              }
                              continue loop5;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr167);
               }
               continue;
               addr170:
            }
            while(_loc6_ && itemObject)
            {
               §§goto(addr170);
            }
            return itemObject.sale;
         }
         if(_loc6_ && itemId)
         {
         }
         return false;
      }
      
      public static function §`M§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || itemId)
         {
         }
         var itemObject:Object = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && AvatarCreatorPopup))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr42);
         }
         loop4:
         for each(itemObject in sItemsAvailable)
         {
            if(_loc6_)
            {
            }
            loop5:
            while(true)
            {
               §§push(itemObject.itemId == itemId);
               if(!(_loc6_ && itemId))
               {
                  §§push(Boolean(§§pop()));
               }
               loop6:
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
                        addr148:
                        loop8:
                        while(true)
                        {
                           §§push(!itemObject.available);
                           if(!(_loc6_ && itemObject))
                           {
                              if(_loc6_)
                              {
                                 continue loop7;
                              }
                              if(_loc6_)
                              {
                                 continue loop6;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop8;
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                  }
                  §§goto(addr106);
               }
            }
         }
         if(_loc5_ || AvatarCreatorPopup)
         {
         }
         return false;
      }
      
      public static function §6M§(itemId:String) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && itemId)
         {
         }
         var itemObject:Object = null;
         if(!(_loc5_ && itemObject))
         {
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            §§goto(addr45);
         }
         for each(itemObject in sItemsAvailable)
         {
            if(!_loc6_)
            {
               return itemObject.starPrice;
            }
            addr109:
            while(itemObject.itemId == itemId)
            {
               if(!_loc6_)
               {
               }
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr109);
            }
         }
         if(_loc5_ && itemId)
         {
         }
         return 0;
      }
      
      public static function §@!§(oldStarCount:int, newStarCount:int) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var achObject:Object = null;
         if(_loc6_ && achObject)
         {
         }
         while(true)
         {
            loop1:
            while(!(_loc6_ && AvatarCreatorPopup))
            {
               loop2:
               do
               {
                  while(_loc7_)
                  {
                     if(!(_loc6_ && newStarCount))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc4_:int = 0;
               var _loc5_:* = sAchievementItems;
               loop4:
               do
               {
                  for each(achObject in _loc5_)
                  {
                     if(_loc6_ && achObject)
                     {
                        break loop4;
                     }
                     §§push(newStarCount);
                     do
                     {
                        §§push(§§pop() >= achObject.s);
                        if(!(_loc6_ && oldStarCount))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              continue;
                           }
                        }
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     while(§§pop());
                     
                  }
                  §§push("");
                  if(_loc7_ || achObject)
                  {
                  }
                  return §§pop();
               }
               while(!§§pop());
               
               return achObject.id;
            }
         }
      }
      
      private function §`n§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
                  while(!(_loc3_ || this))
                  {
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var urlReq:URLRequest = §"!F§.§=i§(sServerRoot + "/getavatarparts");
                  if(!_loc2_)
                  {
                     urlReq.method = URLRequestMethod.POST;
                     sAllItemsLoader = new URLLoader();
                     addr215:
                     addr213:
                     addr203:
                     if(_loc3_)
                     {
                        sAllItemsLoader.addEventListener(Event.COMPLETE,this.onComplete);
                        addr190:
                        if(!_loc2_)
                        {
                           addr162:
                           if(_loc3_ || this)
                           {
                              sAllItemsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
                              addr146:
                              if(_loc3_)
                              {
                                 sAllItemsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!0§);
                                 addr136:
                                 if(!(_loc2_ && this))
                                 {
                                    addr118:
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       sAllItemsLoader.load(urlReq);
                                       addr108:
                                       if(!(_loc2_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr162);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr118);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr190);
                                       addr125:
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr213);
                              }
                              addr159:
                              §§goto(addr159);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr215);
                     }
                     addr206:
                     §§goto(addr206);
                  }
                  §§goto(addr125);
               }
            }
         }
      }
      
      protected function §!0§(event:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §]!e§.§finally§();
                  while(true)
                  {
                     while(!_loc3_)
                     {
                        sAllItemsLoader = null;
                        loop4:
                        while(!(_loc3_ && _loc3_))
                        {
                           continue loop1;
                           while(_loc3_ && this)
                           {
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr92);
            }
         }
         §§goto(addr92);
      }
      
      private function §6W§(e:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §]!e§.§finally§();
                  while(true)
                  {
                     addr68:
                     while(!(_loc3_ && this))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            sAllItemsLoader = null;
            while(true)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr93);
            }
         }
      }
      
      private function onComplete(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  sAllAvatarItems = §8!-§.§9N§(e.currentTarget.data);
                  addr113:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  addr120:
                  loop4:
                  while(true)
                  {
                     this.§`e§();
                     loop5:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(_loc2_ || this)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr113);
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                           }
                           break;
                        }
                        if(!_loc3_)
                        {
                           addr94:
                           if(_loc2_ || this)
                           {
                              loop6:
                              while(!(_loc3_ && e))
                              {
                                 if(_loc2_)
                                 {
                                    this.§]e§();
                                    while(!_loc3_)
                                    {
                                       if(_loc2_ || e)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!(_loc3_ && e))
                                             {
                                                return;
                                             }
                                             addr151:
                                             addr138:
                                             addr152:
                                             this.§ t§ = true;
                                             break loop5;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§goto(addr65);
                              }
                              addr65:
                              addr165:
                           }
                           while(true)
                           {
                              §§push(this.§-M§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              continue loop4;
                              §§goto(addr94);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr138);
                        §§goto(addr151);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      private function §`e§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_)
         {
         }
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         if(_loc9_ || items)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr47:
                  while(true)
                  {
                     addr49:
                     while(!_loc8_)
                     {
                        if(!_loc9_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc9_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr47);
            }
            §§goto(addr49);
         }
         var list:Array = [];
         if(!(_loc8_ && list))
         {
            loop5:
            while(true)
            {
               loop6:
               for(§§push(this.§5!M§); §§pop(); )
               {
                  addr85:
                  loop22:
                  while(true)
                  {
                     §§push(this.§5!M§);
                     if(_loc9_ || list)
                     {
                        §§pop().getItemByName("WaitingForReply").setVisibility(false);
                        while(!_loc9_)
                        {
                        }
                        if(_loc9_)
                        {
                           if(!(_loc8_ && list))
                           {
                              if(true)
                              {
                                 break loop6;
                              }
                              continue;
                           }
                           addr106:
                           while(true)
                           {
                              break loop22;
                           }
                        }
                        break;
                     }
                     continue loop6;
                  }
                  while(true)
                  {
                     if(_loc8_)
                     {
                        continue loop5;
                     }
                     §§goto(addr85);
                  }
               }
               loop7:
               for each(item in sAllAvatarItems)
               {
                  if(_loc8_ && items)
                  {
                  }
                  loop8:
                  while(true)
                  {
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           this.§11§(item,AvatarCreatorPopup.sAchievementItems);
                           while(_loc9_)
                           {
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 break loop10;
                              }
                              if(false)
                              {
                                 continue loop10;
                              }
                              clientItem = ServerIdParser.§ 8§(item.id);
                              if(_loc9_)
                              {
                                 if(_loc9_ || list)
                                 {
                                    if(clientItem)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             §§push("itemId");
                                             if(_loc8_)
                                             {
                                             }
                                             parseObject = {
                                                §§pop():clientItem.§<!B§,
                                                "price":item.p,
                                                "available":item.a,
                                                "starPrice":item.star,
                                                "limited":item.l,
                                                "sale":item.s
                                             };
                                             if(_loc9_)
                                             {
                                                list.push(parseObject);
                                                addr254:
                                                if(_loc9_ || this)
                                                {
                                                   addr230:
                                                   trace(parseObject.itemId);
                                                   if(!(_loc8_ && list))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr228:
                                                            if(false)
                                                            {
                                                               §§goto(addr230);
                                                            }
                                                            item.a;
                                                            if(!(_loc8_ && items))
                                                            {
                                                               item.id;
                                                               addr302:
                                                               addr311:
                                                               if(_loc9_)
                                                               {
                                                                  addr288:
                                                                  item.p;
                                                                  if(_loc9_ || items)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_ || list)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     §§goto(addr288);
                                                                     addr299:
                                                                  }
                                                                  §§goto(addr311);
                                                                  addr304:
                                                               }
                                                               addr309:
                                                               §§goto(addr309);
                                                               addr274:
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   addr248:
                                                   §§goto(addr248);
                                                }
                                                addr263:
                                                §§goto(addr263);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr302);
                           }
                           continue loop8;
                        }
                     }
                  }
               }
               if(!(_loc8_ && items))
               {
                  loop12:
                  while(true)
                  {
                     addr342:
                     while(true)
                     {
                        sItemsAvailable = list;
                        continue loop12;
                     }
                  }
                  addr348:
               }
               while(true)
               {
                  if(_loc8_ && item)
                  {
                     continue;
                  }
                  if(_loc9_ || list)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr348);
                  }
                  §§goto(addr342);
               }
               items = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
               if(_loc9_)
               {
                  loop15:
                  while(true)
                  {
                     items.§%U§(null,AvatarEditorTabRepeaterButton);
                     while(true)
                     {
                        while(_loc9_)
                        {
                           if(!_loc8_)
                           {
                              this.§5!M§.§31§("Repeater_Items","Repeater_Items_Tab_0");
                              loop18:
                              while(_loc9_)
                              {
                                 while(_loc8_)
                                 {
                                    continue loop18;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop15;
                        }
                     }
                  }
               }
               §§goto(addr389);
            }
         }
         §§goto(addr106);
      }
      
      private function §11§(item:Object, achievements:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || achiev)
         {
         }
         var achiev:Object = null;
         if(_loc6_)
         {
            while(true)
            {
               while(_loc6_ || this)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc7_)
                     {
                     }
                     if(_loc6_)
                     {
                        while(false)
                        {
                           continue loop2;
                        }
                        for each(achiev in achievements)
                        {
                           if(!(_loc7_ && this))
                           {
                              while(item.id == achiev.id)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       item.p = achiev.p;
                                       while(!(_loc7_ && achievements))
                                       {
                                          if(_loc6_)
                                          {
                                             loop10:
                                             while(_loc6_ || this)
                                             {
                                                while(true)
                                                {
                                                   item.star = achiev.star;
                                                   addr107:
                                                   while(_loc6_)
                                                   {
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr102);
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc6_ || this)
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr107);
                           }
                        }
                        if(_loc7_ && item)
                        {
                        }
                        return;
                        addr37:
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      private function §!"§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(_loc7_ || containerX)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr190:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr280);
      }
      
      private function §]e§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(_loc17_ || tabs)
         {
         }
         var character:§[_§ = null;
         var avatarHolder:§6#§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§6#§ = null;
         var char:§[_§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         if(_loc17_ || tabs)
         {
            loop0:
            while(true)
            {
               addr107:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function onUiInteraction(e:§7"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            do
            {
               this.uiInteractionHandler(e.eventIndex,e.eventName,e.component);
               while(_loc2_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc3_ && e);
            
            return;
         }
      }
      
      public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         if(_loc22_)
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
         var avatarData:* = null;
         var item:String = null;
         if(_loc23_)
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
                     for(; _loc23_; do
                     {
                        while(!_loc23_)
                        {
                        }
                     }
                     while(_loc22_ && eventIndex);
                     ,if(_loc23_ || eventIndex)
                     {
                        continue loop2;
                     })
                     {
                        while(true)
                        {
                           if(component is UIComponentRovio)
                           {
                              continue loop3;
                           }
                           addr582:
                           §§push(eventName);
                           if(!_loc22_)
                           {
                              if(§§pop().toUpperCase().indexOf("OVER") > -1)
                              {
                                 if(!_loc22_)
                                 {
                                    if(!_loc22_)
                                    {
                                       if(_loc23_)
                                       {
                                          if(!(_loc22_ && this))
                                          {
                                             if(_loc23_ || eventIndex)
                                             {
                                                if(_loc23_ || this)
                                                {
                                                   §§push(eventName);
                                                   if(!_loc22_)
                                                   {
                                                      §§push(§§pop().toUpperCase().substr(4));
                                                      if(!(_loc22_ && component))
                                                      {
                                                         overString = §§pop();
                                                         if(_loc23_ || component)
                                                         {
                                                            if(_loc23_ || eventName)
                                                            {
                                                               §§push(this.§5!M§);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push((§§pop() as PopupsUIView).§!!§(overString));
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc22_)
                                                                     {
                                                                        overTabIndex = §§pop();
                                                                        if(!(_loc22_ && component))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc23_ || eventName)
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
                                                                                          addr925:
                                                                                          §§push(0);
                                                                                          if(!(_loc22_ && eventIndex))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr925:
                                                                                          outTabIndex = §§pop();
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(!(_loc22_ && this))
                                                                                             {
                                                                                                loop102:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc22_ && this))
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr891:
                                                                                                         loop95:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            repeaterIndex = §§pop();
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               if(!(_loc22_ && eventName))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop102;
                                                                                                                  }
                                                                                                                  addr2380:
                                                                                                                  §§push(0);
                                                                                                                  if(!(_loc22_ && component))
                                                                                                                  {
                                                                                                                     break loop102;
                                                                                                                  }
                                                                                                                  loop97:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop109:
                                                                                                                     switch(§§pop())
                                                                                                                     {
                                                                                                                        case 0:
                                                                                                                           addr1469:
                                                                                                                           §1!!§.§1!S§.§=p§();
                                                                                                                           this.§!!1§();
                                                                                                                           this.§6R§();
                                                                                                                           break;
                                                                                                                           addr1456:
                                                                                                                           addr1448:
                                                                                                                           addr1471:
                                                                                                                           addr1453:
                                                                                                                           addr1478:
                                                                                                                           addr1464:
                                                                                                                           addr1461:
                                                                                                                        case 1:
                                                                                                                           §§push(§1!!§.§1!S§);
                                                                                                                           if(!(_loc22_ && component))
                                                                                                                           {
                                                                                                                              §§pop().§!!Q§();
                                                                                                                              loop71:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§!!1§();
                                                                                                                                 addr1409:
                                                                                                                                 while(!(_loc23_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop71;
                                                                                                                                 }
                                                                                                                                 if(!(_loc22_ && this))
                                                                                                                                 {
                                                                                                                                    addr1402:
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       break loop109;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1456);
                                                                                                                                    addr1423:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1448);
                                                                                                                              }
                                                                                                                              addr1440:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1469);
                                                                                                                           }
                                                                                                                           §§goto(addr1469);
                                                                                                                           addr1445:
                                                                                                                        case 2:
                                                                                                                           addr1390:
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_ || component)
                                                                                                                              {
                                                                                                                                 this.§#T§();
                                                                                                                                 addr1399:
                                                                                                                                 break;
                                                                                                                                 addr1385:
                                                                                                                                 addr1380:
                                                                                                                                 addr1399:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1471);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1453);
                                                                                                                        case 3:
                                                                                                                           addr1370:
                                                                                                                           this.§5!M§.getItemByName("AvatarSharing").setVisibility(false);
                                                                                                                           break;
                                                                                                                           addr1363:
                                                                                                                           addr1369:
                                                                                                                           addr1367:
                                                                                                                           addr1368:
                                                                                                                           addr1372:
                                                                                                                           addr1377:
                                                                                                                        case 4:
                                                                                                                           loop70:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§5!M§);
                                                                                                                              if(_loc23_ || eventIndex)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push("WaitingForReply");
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       break loop70;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                    if(_loc23_ || eventIndex)
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       if(!(_loc22_ && eventIndex))
                                                                                                                                       {
                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc23_ || eventIndex)
                                                                                                                                                {
                                                                                                                                                   continue loop70;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1385);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1380);
                                                                                                                                          }
                                                                                                                                          addr1341:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1370);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1363);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1369);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1320:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1367);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1368);
                                                                                                                        case 5:
                                                                                                                           addr2021:
                                                                                                                           loop60:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc23_ || component)
                                                                                                                              {
                                                                                                                                 addr1278:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(ServerIdParser.§@!-§(this.§;!0§));
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             buyString = §§pop();
                                                                                                                                             loop46:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc22_ && eventName))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr1246:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         trace(buyString);
                                                                                                                                                         loop35:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               continue loop46;
                                                                                                                                                            }
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc22_ && eventName))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ || eventName))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              AngryBirdsFP11.§5V§.§"§();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc23_ || eventIndex))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc23_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop38:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1160:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§-`§ = [];
                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1478);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1214:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1440);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1137:
                                                                                                                                                                                 if(_loc22_ && eventIndex)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc23_ || component)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop95;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1469);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1341);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop60;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1372);
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc23_ || eventIndex))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1137);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1164);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1464);
                                                                                                                                                                  }
                                                                                                                                                                  addr1243:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1377);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                   addr1266:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1288);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr1487:
                                                                                                                                       items = §§pop().split("-");
                                                                                                                                       if(_loc23_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc22_ && eventIndex))
                                                                                                                                             {
                                                                                                                                                var _loc20_:* = 0;
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   var _loc21_:* = items;
                                                                                                                                                   if(_loc23_ || this)
                                                                                                                                                   {
                                                                                                                                                      for each(item in _loc21_)
                                                                                                                                                      {
                                                                                                                                                         loop48:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop49:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §+!N§.§>=§(item);
                                                                                                                                                               addr1550:
                                                                                                                                                               if(!(_loc22_ && this))
                                                                                                                                                               {
                                                                                                                                                                  loop52:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§-`§.push(item);
                                                                                                                                                                     addr1538:
                                                                                                                                                                     while(!(_loc22_ && component))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     loop51:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1550);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop51;
                                                                                                                                                                           }
                                                                                                                                                                           addr1564:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop49;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1579:
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         loop54:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr1852:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_ || eventIndex)
                                                                                                                                                                     {
                                                                                                                                                                        this.§6R§();
                                                                                                                                                                        loop56:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr1837:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || eventIndex)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop56;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop56;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break loop109;
                                                                                                                                                                     }
                                                                                                                                                                     loop55:
                                                                                                                                                                     for(; !_loc23_; while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§1!!§.§1!S§.§5&§());
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        avatarData = §§pop();
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     })
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop55;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc22_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        break loop54;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc22_ && component)
                                                                                                                                                                        {
                                                                                                                                                                           this.§"p§ = false;
                                                                                                                                                                           addr1978:
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1973:
                                                                                                                                                                              this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
                                                                                                                                                                              §§goto(addr1975);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr1990:
                                                                                                                                                                           addr1985:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5!M§);
                                                                                                                                                                           addr1878:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push("WaitingForReply");
                                                                                                                                                                              addr1879:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                 addr1880:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                    addr1881:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ || eventName)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().setVisibility(§§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1874:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§!E§("");
                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1890:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1973);
                                                                                                                                                                     }
                                                                                                                                                                     ExternalInterfaceHandler.§>!2§("placeOrder",buyString);
                                                                                                                                                                     addr2004:
                                                                                                                                                                     addr1898:
                                                                                                                                                                  }
                                                                                                                                                                  addr1993:
                                                                                                                                                                  break loop109;
                                                                                                                                                                  addr1993:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1890);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         this.§!E§(avatarData);
                                                                                                                                                         addr1934:
                                                                                                                                                         if(_loc23_ || eventIndex)
                                                                                                                                                         {
                                                                                                                                                            this.§6R§();
                                                                                                                                                            addr1918:
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               break loop109;
                                                                                                                                                               addr1913:
                                                                                                                                                            }
                                                                                                                                                            addr1928:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            ExternalInterfaceHandler.addCallback("purchaseComplete",this.§%=§);
                                                                                                                                                            addr2013:
                                                                                                                                                            §§goto(addr2004);
                                                                                                                                                            addr2015:
                                                                                                                                                            addr2013:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1993);
                                                                                                                                                         addr1944:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1582:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2015);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1564);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1579);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1582);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             this.§"p§ = true;
                                                                                                                                             addr1910:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1898);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2013);
                                                                                                                                       addr1255:
                                                                                                                                    }
                                                                                                                                    break loop60;
                                                                                                                                 }
                                                                                                                                 addr1278:
                                                                                                                              }
                                                                                                                              §§goto(addr1402);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc20_ = §§pop();
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push("UNEQUIP_ALL");
                                                                                                                                 if(_loc23_ || eventIndex)
                                                                                                                                 {
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_);
                                                                                                                                       if(!(_loc22_ && eventIndex))
                                                                                                                                       {
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc22_ && component))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr2374:
                                                                                                                                                §§push(12);
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   addr2377:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr2379:
                                                                                                                                             continue loop97;
                                                                                                                                          }
                                                                                                                                          §§push("RANDOMIZE_AVATAR");
                                                                                                                                          if(!(_loc22_ && eventIndex))
                                                                                                                                          {
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc20_);
                                                                                                                                                if(!(_loc22_ && component))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc22_ && eventName)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr2108:
                                                                                                                                                         §§push(2);
                                                                                                                                                         if(_loc22_ && component)
                                                                                                                                                         {
                                                                                                                                                            addr2313:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2379);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("SHARE_WALL_AVATAR");
                                                                                                                                                      if(_loc23_ || eventIndex)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                            if(_loc23_ || eventIndex)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr2108);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr2305:
                                                                                                                                                                     §§push(9);
                                                                                                                                                                     if(_loc22_ && component)
                                                                                                                                                                     {
                                                                                                                                                                        addr2371:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2379);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push("CANCEL_SHARE");
                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr2125:
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr2128:
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(3);
                                                                                                                                                                                 if(!(_loc22_ && eventName))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr2379);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr2313);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr2186:
                                                                                                                                                                                 §§push(5);
                                                                                                                                                                                 if(!(_loc22_ && eventName))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2194:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2225:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2379);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2379);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push("SHARE_AVATAR");
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2149:
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2155:
                                                                                                                                                                                             §§push(4);
                                                                                                                                                                                             if(!(_loc22_ && eventName))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2379);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2194);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2269:
                                                                                                                                                                                             §§push(8);
                                                                                                                                                                                             if(_loc22_ && eventIndex)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2339:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2379);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2379);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push("BUY_THESE");
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc22_ && component))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr2175:
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_ || eventIndex)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr2186);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2368:
                                                                                                                                                                                                         §§push(11);
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr2371);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr2377);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2379);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push("SET_AVATAR");
                                                                                                                                                                                                      if(!(_loc22_ && eventIndex))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2203:
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                            if(_loc23_ || eventIndex)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2214:
                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(6);
                                                                                                                                                                                                                     if(_loc23_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr2225);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2379);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr2269);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("SET_PROFILE");
                                                                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr2229:
                                                                                                                                                                                                                     if(_loc23_ || component)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        if(!(_loc22_ && component))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2245:
                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(7);
                                                                                                                                                                                                                                 if(_loc22_ && component)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2379);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr2368);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push("CLOSE_AVATAR");
                                                                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2266:
                                                                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2269);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2305);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push("EASTER_EGG_2");
                                                                                                                                                                                                                                          if(!_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc22_ && component))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                if(_loc23_ || eventName)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr2360:
                                                                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc23_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2368);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2374);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2374);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2379);
                                                                                                                                                                                                                                                      §§push(12);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2379);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2374);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr2325:
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr2328:
                                                                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc22_ && eventIndex))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(10);
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr2339);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2379);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2368);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push("SCROLL_LEFT");
                                                                                                                                                                                                                                                   if(_loc23_ || eventName)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2359:
                                                                                                                                                                                                                                                      §§goto(addr2360);
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      addr2358:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2359);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2379);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2360);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2322:
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2325);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2359);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2379);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc22_ && eventName))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2305);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2374);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push("SCROLL_RIGHT");
                                                                                                                                                                                                                                       if(!(_loc22_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2322);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2325);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2374);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2358);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2359);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2379);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2359);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2379);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2360);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2229);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2325);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2214);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2359);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2175);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2245);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2322);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2149);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2245);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2229);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2128);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2379);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2328);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2203);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2266);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2125);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2203);
                                                                                                                                          §§goto(addr2374);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2245);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2203);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2359);
                                                                                                                              }
                                                                                                                              §§goto(addr2155);
                                                                                                                              §§goto(addr1278);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr2021:
                                                                                                                        case 6:
                                                                                                                           §§goto(addr1990);
                                                                                                                        case 7:
                                                                                                                           §§goto(addr1910);
                                                                                                                        case 8:
                                                                                                                           addr1827:
                                                                                                                           if(_loc23_ || component)
                                                                                                                           {
                                                                                                                              this.§1v§.removeEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
                                                                                                                              addr1815:
                                                                                                                              if(_loc23_ || component)
                                                                                                                              {
                                                                                                                                 addr1802:
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    this.deActivate();
                                                                                                                                    addr1792:
                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                    {
                                                                                                                                       addr1778:
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1928);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1837);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1966);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1993);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1978);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1985);
                                                                                                                              }
                                                                                                                              §§goto(addr1978);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1910);
                                                                                                                           }
                                                                                                                        case 9:
                                                                                                                           addr1773:
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push(this.§5!M§);
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || eventIndex)
                                                                                                                                 {
                                                                                                                                    §§push("ButtonEasterEgg2");
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc22_ && component))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || eventName)
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                   addr1766:
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      addr1714:
                                                                                                                                                      if(!(_loc22_ && eventIndex))
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-2");
                                                                                                                                                            addr1707:
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr1687:
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc22_ && eventIndex))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1918);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1869);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1913);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1874);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1792);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1778);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1802);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1881);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1973);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1880);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1973);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1879);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1973);
                                                                                                                              }
                                                                                                                              §§goto(addr1878);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1827);
                                                                                                                           }
                                                                                                                        case 10:
                                                                                                                           addr1677:
                                                                                                                           if(_loc23_ || component)
                                                                                                                           {
                                                                                                                              this.§6R§();
                                                                                                                              addr1665:
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 addr1646:
                                                                                                                                 if(!(_loc22_ && component))
                                                                                                                                 {
                                                                                                                                    if(_loc23_ || eventName)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1815);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1707);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1934);
                                                                                                                           }
                                                                                                                           §§goto(addr2013);
                                                                                                                        case 11:
                                                                                                                           while(!(_loc22_ && eventName))
                                                                                                                           {
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || eventName)
                                                                                                                                 {
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc22_ && this))
                                                                                                                                       {
                                                                                                                                          loop73:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§6R§();
                                                                                                                                             while(_loc23_)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc23_ || eventName))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      break loop73;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc22_ && eventName))
                                                                                                                                                      {
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            break loop109;
                                                                                                                                                         }
                                                                                                                                                         continue loop73;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1766);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1714);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1677);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1646);
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1893);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1852);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1773);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1687);
                                                                                                                           }
                                                                                                                           §§goto(addr1665);
                                                                                                                     }
                                                                                                                     §§goto(addr2382);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1423);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               §§push(buyString);
                                                                                                               if(!(_loc23_ || eventIndex))
                                                                                                               {
                                                                                                                  §§goto(addr2021);
                                                                                                               }
                                                                                                               §§goto(addr1487);
                                                                                                            }
                                                                                                            §§goto(addr1160);
                                                                                                         }
                                                                                                         addr891:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr891);
                                                                                                }
                                                                                                addr1025:
                                                                                                _loc20_ = §§pop();
                                                                                                if(!(_loc22_ && eventName))
                                                                                                {
                                                                                                   addr1033:
                                                                                                   _loc21_ = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§;
                                                                                                   loop96:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc21_,_loc20_));
                                                                                                      addr1127:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         outRepeaterButton = §§nextvalue(_loc20_,_loc21_);
                                                                                                         if(!(_loc22_ && eventIndex))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(repeaterIndex);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() != outTabIndex)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc22_ && component)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1123);
                                                                                                         continue loop96;
                                                                                                      }
                                                                                                      addr1128:
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   §§goto(addr2021);
                                                                                                   §§push(eventName);
                                                                                                   addr1472:
                                                                                                }
                                                                                                §§goto(addr1399);
                                                                                             }
                                                                                             §§goto(addr1469);
                                                                                          }
                                                                                          §§goto(addr1402);
                                                                                       }
                                                                                       loop44:
                                                                                       for(; _loc23_; if(!(_loc22_ && eventName))
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr1246))
                                                                                       {
                                                                                          §§push(eventName);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop().toUpperCase().substr(3));
                                                                                             if(_loc23_ || this)
                                                                                             {
                                                                                                if(_loc23_ || component)
                                                                                                {
                                                                                                   addr961:
                                                                                                   outString = §§pop();
                                                                                                   if(!(_loc22_ && eventName))
                                                                                                   {
                                                                                                      if(_loc23_ || eventIndex)
                                                                                                      {
                                                                                                         §§push(this.§5!M§);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push((§§pop() as PopupsUIView).§!!§(outString));
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr917:
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc23_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr925);
                                                                                                               }
                                                                                                               §§goto(addr2380);
                                                                                                            }
                                                                                                            §§goto(addr1025);
                                                                                                         }
                                                                                                         §§goto(addr1320);
                                                                                                         addr938:
                                                                                                      }
                                                                                                      §§goto(addr1399);
                                                                                                      addr969:
                                                                                                   }
                                                                                                   §§goto(addr1469);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr992:
                                                                                                   for(; §§pop().toUpperCase().indexOf("OUT") > -1; return)
                                                                                                   {
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         if(_loc23_ || component)
                                                                                                         {
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                            §§goto(addr1355);
                                                                                                         }
                                                                                                         §§goto(addr1469);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr1278);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1472);
                                                                                                   addr992:
                                                                                                }
                                                                                                §§goto(addr1278);
                                                                                             }
                                                                                             §§goto(addr2021);
                                                                                          }
                                                                                          §§goto(addr1255);
                                                                                       }
                                                                                       §§goto(addr1292);
                                                                                    }
                                                                                    §§goto(addr1278);
                                                                                 }
                                                                                 §§goto(addr891);
                                                                              }
                                                                              break;
                                                                           }
                                                                           _loc20_ = §§pop();
                                                                           if(_loc23_ || component)
                                                                           {
                                                                              _loc21_ = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§;
                                                                              loop77:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc21_,_loc20_));
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc23_ || component)
                                                                                       {
                                                                                          if(_loc23_ || component)
                                                                                          {
                                                                                             addr864:
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                if(!(_loc22_ && component))
                                                                                                {
                                                                                                   addr991:
                                                                                                   §§goto(addr992);
                                                                                                   §§push(eventName);
                                                                                                }
                                                                                                §§goto(addr1243);
                                                                                                addr867:
                                                                                             }
                                                                                             §§goto(addr1399);
                                                                                          }
                                                                                          §§goto(addr1033);
                                                                                       }
                                                                                       §§goto(addr1128);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       overRepeaterButton = §§nextvalue(_loc20_,_loc21_);
                                                                                       if(!(_loc22_ && eventName))
                                                                                       {
                                                                                          loop78:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(repeaterIndex);
                                                                                             loop79:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == overTabIndex)
                                                                                                {
                                                                                                   (overRepeaterButton as AvatarEditorTabRepeaterButton).§6N§();
                                                                                                   continue loop78;
                                                                                                }
                                                                                                loop82:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(repeaterIndex);
                                                                                                   if(_loc23_ || eventName)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc23_ || eventName)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   if(!(_loc23_ || eventIndex))
                                                                                                   {
                                                                                                      continue loop79;
                                                                                                   }
                                                                                                   repeaterIndex = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         if(!(_loc23_ || component))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop78;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop82;
                                                                                                   }
                                                                                                }
                                                                                                continue loop77;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr841);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1127);
                                                                           }
                                                                           §§goto(addr864);
                                                                        }
                                                                        §§goto(addr1188);
                                                                     }
                                                                     §§goto(addr917);
                                                                  }
                                                                  §§goto(addr925);
                                                               }
                                                               §§goto(addr1370);
                                                            }
                                                            §§goto(addr1214);
                                                         }
                                                         §§goto(addr1231);
                                                      }
                                                   }
                                                   §§goto(addr961);
                                                }
                                                §§goto(addr969);
                                                addr698:
                                             }
                                             §§goto(addr1266);
                                          }
                                          §§goto(addr867);
                                       }
                                       §§goto(addr1469);
                                    }
                                    §§goto(addr698);
                                 }
                                 §§goto(addr938);
                              }
                              §§goto(addr991);
                           }
                           §§goto(addr992);
                        }
                     }
                     continue loop1;
                     if(_loc22_ && eventIndex)
                     {
                        continue;
                     }
                     if(_loc22_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        if(false)
                        {
                           §§goto(addr96);
                        }
                        else
                        {
                           component2 = component as UIComponentRovio;
                           if(_loc23_)
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
                                          loop11:
                                          while(true)
                                          {
                                             §§push(component2.mParentContainer);
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop() is UIRepeaterTabRovio)
                                                {
                                                   while(true)
                                                   {
                                                      addr324:
                                                      while(!_loc22_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop11;
                                                   }
                                                   addr323:
                                                }
                                                else
                                                {
                                                   §§goto(addr582);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr582);
                                    while(true)
                                    {
                                       §§push(eventName);
                                       if(_loc23_ || this)
                                       {
                                          §§push(§§pop().substr("CATEGORY".length));
                                       }
                                       if(!(_loc23_ || this))
                                       {
                                          break;
                                       }
                                       categoryName = §§pop();
                                       §§goto(addr229);
                                    }
                                 }
                                 if(_loc22_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr203);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr582);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §7t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               §+!N§.§5U§();
            }
            addr141:
         }
         while(true)
         {
            loop2:
            for(; _loc2_; if(!(_loc2_ || _loc2_))
            {
               continue;
            },§§goto(addr85))
            {
               AngryBirdsFP11.§5V§.§"§();
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
                     addr94:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop2;
                        }
                        continue loop4;
                        addr68:
                        if(_loc2_ || this)
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
            }
            §§goto(addr141);
         }
      }
      
      private function permissionRequestComplete(success:String) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || success)
         {
         }
         var bigAvatar:AvatarRenderer = null;
         var imageSize:* = 0;
         var bmd:BitmapData = null;
         var mat:Matrix = null;
         var scale:* = NaN;
         var window:UIComponentRovio = null;
         var i:* = 0;
         var postBitmap:Bitmap = null;
         var displayObject:DisplayObject = null;
         if(_loc12_ || success)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §+!N§.§&![§();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        ExternalInterfaceHandler.§in§("permissionRequestComplete",this.permissionRequestComplete);
                        addr161:
                        if(_loc11_ && success)
                        {
                           continue;
                        }
                        if(!_loc12_)
                        {
                           continue loop1;
                        }
                        loop21:
                        while(_loc12_)
                        {
                           §§push(this.§5!M§);
                           loop22:
                           while(true)
                           {
                              §§push("AvatarSharing");
                              loop23:
                              while(_loc12_)
                              {
                                 §§push(§§pop().getItemByName(§§pop()));
                                 loop24:
                                 while(true)
                                 {
                                    §§push(true);
                                    loop25:
                                    while(_loc12_ || bigAvatar)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc12_)
                                          {
                                             if(!_loc11_)
                                             {
                                                loop27:
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      continue loop26;
                                                   }
                                                   addr112:
                                                   if(!(_loc11_ && bigAvatar))
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§5!M§);
                                                                     if(_loc12_)
                                                                     {
                                                                        addr76:
                                                                        if(!(_loc11_ && imageSize))
                                                                        {
                                                                           §§push("ShareAvatarWindow");
                                                                           if(!_loc12_)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(true);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              §§pop().setVisibility(§§pop());
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop27;
                                                                                 addr107:
                                                                                 if(!(_loc12_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    bigAvatar = new AvatarRenderer();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       bigAvatar.§+!<§();
                                                                                       addr278:
                                                                                       addr299:
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr262:
                                                                                             §§push(173);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             imageSize = §§pop();
                                                                                             if(!(_loc11_ && success))
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr262);
                                                                                                   }
                                                                                                   bmd = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,imageSize);
                                                                                                   if(_loc12_ || this)
                                                                                                   {
                                                                                                   }
                                                                                                   mat = new Matrix();
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      addr391:
                                                                                                      §§push(imageSize / 100);
                                                                                                      if(!(_loc11_ && imageSize))
                                                                                                      {
                                                                                                         §§push(§§pop() / 2);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr387:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         scale = §§pop();
                                                                                                         addr364:
                                                                                                         if(!(_loc11_ && success))
                                                                                                         {
                                                                                                            addr341:
                                                                                                            mat.scale(scale,scale);
                                                                                                            if(!(_loc11_ && success))
                                                                                                            {
                                                                                                               if(!(_loc11_ && success))
                                                                                                               {
                                                                                                                  if(!(_loc11_ && imageSize))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr341);
                                                                                                                     }
                                                                                                                     window = this.§5!M§.getItemByName("ShareAvatarWindow");
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        i = int(window.mClip.numChildren - 1);
                                                                                                                        addr426:
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           §§goto(addr426);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr407:
                                                                                                                     if(i > 0)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr407);
                                                                                                                              }
                                                                                                                              displayObject = window.mClip.getChildAt(i);
                                                                                                                              if(_loc12_ || bigAvatar)
                                                                                                                              {
                                                                                                                                 addr496:
                                                                                                                                 if(displayObject is Bitmap)
                                                                                                                                 {
                                                                                                                                    displayObject.parent.removeChild(displayObject);
                                                                                                                                    addr493:
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       addr468:
                                                                                                                                       if(!(_loc11_ && success))
                                                                                                                                       {
                                                                                                                                          addr441:
                                                                                                                                          §§push(i);
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          i = §§pop();
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             if(_loc12_ || imageSize)
                                                                                                                                             {
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr468);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr407);
                                                                                                                                                }
                                                                                                                                                §§goto(addr496);
                                                                                                                                             }
                                                                                                                                             §§goto(addr493);
                                                                                                                                          }
                                                                                                                                          §§goto(addr468);
                                                                                                                                          addr477:
                                                                                                                                       }
                                                                                                                                       §§goto(addr493);
                                                                                                                                    }
                                                                                                                                    addr494:
                                                                                                                                    §§goto(addr494);
                                                                                                                                 }
                                                                                                                                 §§goto(addr441);
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr508:
                                                                                                                        postBitmap = new Bitmap(bmd,"auto",true);
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           postBitmap.x = 110;
                                                                                                                           addr575:
                                                                                                                           if(!(_loc11_ && imageSize))
                                                                                                                           {
                                                                                                                              postBitmap.y = 52;
                                                                                                                              addr570:
                                                                                                                              if(_loc12_ || success)
                                                                                                                              {
                                                                                                                                 window.mClip.addChildAt(postBitmap,1);
                                                                                                                                 addr543:
                                                                                                                                 if(!(_loc11_ && success))
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || success)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr543);
                                                                                                                                          }
                                                                                                                                          §§goto(addr599);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                                 addr545:
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                              §§goto(addr575);
                                                                                                                           }
                                                                                                                           addr584:
                                                                                                                           §§goto(addr584);
                                                                                                                        }
                                                                                                                        §§goto(addr543);
                                                                                                                     }
                                                                                                                     if(_loc12_ || imageSize)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr508);
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                               §§goto(addr391);
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         addr389:
                                                                                                         §§goto(addr389);
                                                                                                      }
                                                                                                      §§goto(addr387);
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                                addr275:
                                                                                             }
                                                                                             §§goto(addr278);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       addr287:
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       break loop29;
                                                                                    }
                                                                                    addr183:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_ || success)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§goto(addr161);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr201:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr204:
                                                                                          }
                                                                                       }
                                                                                       addr191:
                                                                                       addr213:
                                                                                       while(_loc12_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr183);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(success != "true")
                                                                                          {
                                                                                             trace("you got to give permission man!");
                                                                                             if(_loc12_ || imageSize)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop21;
                                                                                          }
                                                                                          §§goto(addr191);
                                                                                       }
                                                                                       addr599:
                                                                                       return;
                                                                                       §§goto(addr112);
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr157:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr234:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    break loop26;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(false);
                                                                              break loop25;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push("WaitingForReply");
                                                                     break loop23;
                                                                     §§goto(addr76);
                                                                  }
                                                                  addr217:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr213);
                                                }
                                                addr222:
                                             }
                                             break;
                                          }
                                          continue loop21;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr217);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       §§goto(addr222);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr219);
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr204);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr234);
      }
      
      private function §#T§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || imageSize)
         {
         }
         if(!(_loc9_ && bigAvatar))
         {
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
                        loop4:
                        while(true)
                        {
                           while(_loc10_)
                           {
                              continue loop1;
                              addr84:
                              if(_loc9_ && imageSize)
                              {
                                 continue;
                              }
                              addr91:
                              if(_loc10_ || this)
                              {
                                 if(false)
                                 {
                                    loop22:
                                    while(true)
                                    {
                                       §§push(this.§5!M§);
                                       if(!_loc9_)
                                       {
                                          addr50:
                                          §§push("WaitingForReply");
                                          if(!(_loc9_ && this))
                                          {
                                             addr58:
                                             §§push(§§pop().getItemByName(§§pop()));
                                             if(_loc10_ || imageSize)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(true);
                                                   if(!_loc9_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      while(!_loc9_)
                                                      {
                                                         addr75:
                                                         if(!(_loc9_ && bigAvatar))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr84);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr156:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && imageSize))
                                                            {
                                                               §§push(this.§5!M§);
                                                               break loop22;
                                                            }
                                                            break;
                                                            §§goto(addr75);
                                                         }
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               addr159:
                                                               while(_loc10_ || bmd)
                                                               {
                                                                  §§push(this.§5!M§);
                                                                  while(true)
                                                                  {
                                                                     §§push("AvatarSharing");
                                                                     addr152:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                        addr153:
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           addr154:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              §§goto(addr156);
                                                                           }
                                                                        }
                                                                     }
                                                                     break loop22;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                         addr140:
                                                         §§goto(addr91);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc9_ && bigAvatar)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop22;
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                      addr73:
                                                      addr94:
                                                   }
                                                   while(_loc10_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      continue loop4;
                                                   }
                                                   §§goto(addr154);
                                                   addr124:
                                                }
                                                §§goto(addr153);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr124);
                                                §§goto(addr58);
                                             }
                                             addr123:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc9_ && imageSize))
                                             {
                                                §§goto(addr123);
                                                §§push(§§pop().getItemByName(§§pop()));
                                             }
                                             break;
                                             §§goto(addr50);
                                          }
                                          §§goto(addr152);
                                          addr115:
                                       }
                                       break;
                                    }
                                    while(_loc10_ || bmd)
                                    {
                                       §§goto(addr115);
                                       §§push("ShareAvatarWindow");
                                    }
                                    §§goto(addr151);
                                 }
                                 var bigAvatar:AvatarRenderer = new AvatarRenderer();
                                 if(_loc10_)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       addr219:
                                       while(true)
                                       {
                                          bigAvatar.§+!<§();
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!(_loc9_ && bmd))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop24;
                                          }
                                       }
                                    }
                                 }
                                 while(false)
                                 {
                                    §§goto(addr219);
                                 }
                                 §§push(500);
                                 if(_loc10_ || bigAvatar)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var imageSize:* = §§pop();
                                 if(_loc10_ || this)
                                 {
                                 }
                                 var bmd:BitmapData = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,imageSize);
                                 if(!_loc10_)
                                 {
                                 }
                                 var mat:Matrix = new Matrix();
                                 if(_loc10_ || bmd)
                                 {
                                 }
                                 §§push(imageSize / 100);
                                 if(_loc10_ || imageSize)
                                 {
                                    §§push(§§pop() / 2);
                                    if(_loc10_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var scale:* = §§pop();
                                 if(_loc10_ || imageSize)
                                 {
                                 }
                                 loop28:
                                 while(true)
                                 {
                                    addr321:
                                    addr337:
                                    while(true)
                                    {
                                       mat.scale(scale,scale);
                                       continue loop28;
                                    }
                                    addr346:
                                    var watermarkCls:Class = AssetCache.§-9§("WatermarkPlayOnFacebook");
                                    if(!_loc10_)
                                    {
                                    }
                                    var watermark:MovieClip = new watermarkCls();
                                    if(_loc10_ || bigAvatar)
                                    {
                                       loop31:
                                       while(true)
                                       {
                                          watermark.x = imageSize - watermark.width;
                                          while(true)
                                          {
                                             loop33:
                                             while(!_loc9_)
                                             {
                                                watermark.y = imageSize - watermark.height;
                                                while(!_loc9_)
                                                {
                                                   while(_loc10_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         bmd.draw(watermark,mat,null,null,null,true);
                                                         while(!_loc10_)
                                                         {
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            continue loop33;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
                                                         if(_loc10_ || bigAvatar)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         var userId:* = §§pop();
                                                         if(_loc9_ && bigAvatar)
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            FacebookImageUploader.§,C§(bmd,sAccessToken,userId,this.§@3§,this.§`m§);
                                                            while(_loc10_)
                                                            {
                                                               if(_loc10_ || this)
                                                               {
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop31;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr381);
                                    }
                                 }
                              }
                              §§goto(addr73);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               super.deActivate();
               while(_loc1_)
               {
                  while(true)
                  {
                     ExternalInterfaceHandler.§in§("purchaseComplete",this.§%=§);
                     addr112:
                     while(!_loc2_)
                     {
                     }
                  }
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            loop5:
            while(true)
            {
               this.§1v§.removeEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
               loop6:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           preClose();
                           continue;
                        }
                        continue loop5;
                     }
                     continue loop6;
                  }
                  §§goto(addr112);
               }
            }
         }
      }
      
      private function §@3§(data:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc4_)
               {
               }
               if(!_loc4_)
               {
                  if(true)
                  {
                     var str:String = data.toString();
                     if(_loc4_ && this)
                     {
                     }
                     do
                     {
                        this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
                        while(_loc4_)
                        {
                        }
                     }
                     while(_loc4_);
                     
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      private function §`m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            do
            {
               this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
               while(_loc2_ && _loc2_)
               {
               }
            }
            while(!_loc1_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               super.close();
               while(!_loc1_)
               {
                  if(_loc2_ || _loc1_)
                  {
                     return;
                     addr69:
                  }
               }
            }
         }
         while(true)
         {
            this.§-M§ = false;
            while(_loc2_)
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr69);
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var avatar:Avatar = null;
         if(_loc5_ || i)
         {
            while(true)
            {
               loop1:
               while(_loc5_ || this)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super.open(useFadeEffect);
                        while(true)
                        {
                           continue loop2;
                           addr40:
                           if(!(_loc5_ || i))
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop6:
                              while(true)
                              {
                                 §+!N§.§'X§();
                                 while(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             continue loop6;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue;
                              addr49:
                           }
                           var savedAnim:§6#§ = this.§5!M§.getItemByName("AvatarSavedAnimation") as §6#§;
                           if(!(_loc6_ && useFadeEffect))
                           {
                              savedAnim.setVisibility(false);
                              mClip.x = (mClip.stage.stageWidth - 750) / 2;
                              addr249:
                              addr251:
                              addr240:
                              if(!(_loc6_ && this))
                              {
                                 mClip.y = (mClip.stage.stageHeight - 525) / 2;
                                 addr215:
                                 if(_loc5_)
                                 {
                                    addr192:
                                    if(this.§ t§)
                                    {
                                       addr179:
                                       if(_loc5_ || i)
                                       {
                                          addr187:
                                          if(_loc5_)
                                          {
                                             this.§ t§ = false;
                                             addr167:
                                             if(_loc5_ || this)
                                             {
                                                addr153:
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && useFadeEffect))
                                                   {
                                                      addr139:
                                                      this.§`e§();
                                                      if(!(_loc6_ && useFadeEffect))
                                                      {
                                                         if(_loc5_ || savedAnim)
                                                         {
                                                            if(!(_loc6_ && useFadeEffect))
                                                            {
                                                               if(_loc5_ || useFadeEffect)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr139);
                                                                     }
                                                                     addr252:
                                                                     var i:* = Number(0);
                                                                     addr319:
                                                                     if(i < sAvatars.length)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              avatar = sAvatars[i];
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 avatar.hide();
                                                                                 addr309:
                                                                                 if(_loc5_ || useFadeEffect)
                                                                                 {
                                                                                    addr302:
                                                                                    addr304:
                                                                                    §§push(i);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr289:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       i = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || savedAnim)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 addr318:
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           addr360:
                                                                           §§push(this.§-M§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           addr402:
                                                                           if(§§pop())
                                                                           {
                                                                              addr367:
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 addr375:
                                                                                 if(_loc5_ || i)
                                                                                 {
                                                                                    this.§]e§();
                                                                                    addr353:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc6_ && useFadeEffect)
                                                                                             {
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                          §§push(sAvatarContainer);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().§!!=§(STARTUP_CHARACTER,STARTUP_CHARACTER_SID,STARTUP_CHARACTER_CATEGORY,sAvatars);
                                                                                             addr385:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             addr418:
                                                                                             §§goto(addr418);
                                                                                          }
                                                                                          addr425:
                                                                                          if(§§pop().§4&§ == null)
                                                                                          {
                                                                                             addr424:
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    §§goto(addr375);
                                                                                    addr382:
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           addr335:
                                                                           return;
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr425);
                                                                           §§push(sAvatarContainer);
                                                                        }
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr249);
                                             addr189:
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr240);
                              }
                              addr243:
                              §§goto(addr243);
                           }
                           §§goto(addr189);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §!!1§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && items)
         {
         }
         var categoryName:String = null;
         var item:Item = null;
         if(_loc5_ && items)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc5_)
               {
               }
               if(!(_loc6_ || i))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var items:UIRepeaterRovio = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
               if(!_loc6_)
               {
               }
               var i:Number = 0;
               while(true)
               {
                  if(i < §1!!§.§[!Y§().§,!#§.length)
                  {
                     if(_loc6_)
                     {
                        if(!(_loc5_ && i))
                        {
                           if(!(_loc5_ && i))
                           {
                              while(true)
                              {
                                 categoryName = §1!!§.§[!Y§().§,!#§[i].name;
                                 if(_loc5_ && categoryName)
                                 {
                                    break;
                                 }
                                 if(_loc5_ && categoryName)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 item = §1!!§.§1!S§.§]y§(categoryName);
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       if(item != null)
                                       {
                                          §§push(items);
                                          §§push("Repeater_Items_Tab_");
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + i);
                                          }
                                          §§push(§§pop().§9k§(§§pop()));
                                          if(_loc6_ || categoryName)
                                          {
                                             §§push(item.§<!B§);
                                             if(_loc6_)
                                             {
                                                §§pop().§9!+§(§§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   addr184:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().§9!+§(§§pop());
                                                §§goto(addr244);
                                             }
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr256);
                                       if(_loc5_ && items)
                                       {
                                          continue;
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                                 §§goto(addr257);
                              }
                           }
                           §§goto(addr284);
                        }
                        return;
                        addr306:
                     }
                     break;
                  }
                  if(_loc6_ || items)
                  {
                     addr284:
                     if(_loc6_ || categoryName)
                     {
                        this.§6R§();
                        break;
                     }
                     break;
                  }
                  §§goto(addr306);
               }
               while(true)
               {
                  if(!(_loc6_ || items))
                  {
                     continue;
                  }
                  §§goto(addr306);
               }
            }
         }
      }
      
      public function §%=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var item:String = null;
         if(_loc4_)
         {
            if(_loc4_)
            {
               addr28:
            }
            var _loc3_:* = this.§-`§;
            loop0:
            for each(item in _loc3_)
            {
               while(true)
               {
                  loop2:
                  while(_loc4_ || item)
                  {
                     do
                     {
                        §+!N§.§0!]§(item);
                        while(!(_loc4_ || _loc3_))
                        {
                        }
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
            if(_loc4_ || _loc3_)
            {
               while(true)
               {
                  this.§-`§ = [];
               }
               addr166:
            }
            loop6:
            while(true)
            {
               while(true)
               {
                  ExternalInterfaceHandler.§in§("purchaseComplete",this.§%=§);
                  continue loop6;
                  addr121:
                  loop9:
                  while(_loc4_ || item)
                  {
                     this.§`n§();
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_ || item)
                           {
                              return;
                           }
                           continue loop9;
                           continue loop9;
                        }
                     }
                     continue loop6;
                  }
               }
            }
         }
         §§goto(addr28);
      }
      
      private function §!E§(avatarData:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               addr79:
               while(true)
               {
               }
            }
            addr81:
         }
         loop2:
         while(true)
         {
            loop3:
            while(true)
            {
               this.§>5§ = this.§;n§;
               loop4:
               while(true)
               {
                  if(_loc4_)
                  {
                     continue loop2;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr46:
                     while(true)
                     {
                        this.§;n§ = avatarData;
                        continue loop3;
                     }
                     addr33:
                     continue loop4;
                     if(!(_loc5_ || urlLoader))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue loop4;
                     }
                     if(!_loc4_)
                     {
                        if(false)
                        {
                           §§goto(addr46);
                        }
                        else
                        {
                           §§push(§"!F§);
                           §§push(sServerRoot + "/saveavatar/");
                           if(_loc5_)
                           {
                              §§push(§§pop() + avatarData);
                           }
                           var urlReq:URLRequest = §§pop().§=i§(§§pop());
                           if(_loc5_ || this)
                           {
                              addr126:
                              urlReq.method = URLRequestMethod.POST;
                              addr134:
                           }
                           if(!(_loc4_ && avatarData))
                           {
                              if(_loc5_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr126);
                                 }
                                 var urlLoader:URLLoader = new URLLoader();
                                 if(_loc5_)
                                 {
                                    urlLoader.addEventListener(Event.COMPLETE,this.§]!>§);
                                    addr215:
                                    addr236:
                                    if(_loc5_ || avatarData)
                                    {
                                       if(!_loc4_)
                                       {
                                          urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§'!Y§);
                                          addr212:
                                          if(!(_loc4_ && urlReq))
                                          {
                                             urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&k§);
                                             addr168:
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   urlLoader.load(urlReq);
                                                   addr158:
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr212);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr212);
                                             }
                                             addr182:
                                             §§goto(addr182);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr236);
                                    }
                                    addr234:
                                    §§goto(addr234);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr134);
                           }
                           addr132:
                           §§goto(addr132);
                        }
                     }
                     else
                     {
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr79);
            }
         }
      }
      
      protected function §&k§(event:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
            }
            addr77:
         }
         while(true)
         {
            §]!e§.§finally§();
            for(; _loc3_ || _loc3_; if(!_loc2_)
            {
               return;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      private function §]!>§(e:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && e)
         {
         }
         var items:Array = null;
         var item:* = null;
         var savedAnim:§6#§ = null;
         if(!(_loc7_ && e))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§;n§);
                  if(!(_loc8_ || e))
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
                           loop4:
                           for(; _loc8_; while(_loc8_ || items)
                           {
                              continue loop1;
                              §§goto(addr77);
                           })
                           {
                              loop5:
                              while(true)
                              {
                                 (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString = this.§;n§;
                                 while(true)
                                 {
                                    continue loop4;
                                    addr52:
                                    if(_loc8_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr61:
                                          if(false)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                ProfilePicture.§#k§(this.§;n§);
                                                addr70:
                                                addr94:
                                                while(!(_loc7_ && this))
                                                {
                                                   if(!(_loc7_ && items))
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                addr120:
                                                while(_loc8_ || e)
                                                {
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr70);
                                                }
                                                while(_loc8_)
                                                {
                                                   §§goto(addr94);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§push(this.§;n§);
                                          break loop1;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     addr308:
                     if(this.§-M§)
                     {
                        if(!(_loc7_ && e))
                        {
                           if(!_loc7_)
                           {
                              loop33:
                              while(true)
                              {
                                 loop24:
                                 while(true)
                                 {
                                    §§push(this.§5!M§);
                                    if(_loc8_)
                                    {
                                       §§push("WaitingForReply");
                                       if(!(_loc7_ && e))
                                       {
                                          addr356:
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(_loc8_)
                                          {
                                             for(§§pop().setVisibility(false); !_loc8_; )
                                             {
                                                continue loop33;
                                             }
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(this.§5!M§);
                                                      break;
                                                   }
                                                   continue loop24;
                                                }
                                                §§goto(addr347);
                                             }
                                             addr347:
                                             addr354:
                                             §§push("AvatarSavedAnimation");
                                             break;
                                             addr349:
                                          }
                                          savedAnim = §§pop() as §6#§;
                                          if(!(_loc7_ && items))
                                          {
                                             while(true)
                                             {
                                                savedAnim.setVisibility(true);
                                                loop27:
                                                for(; _loc8_ || this; loop29:
                                                for(; _loc8_ || e; if(_loc7_ && item)
                                                {
                                                   continue;
                                                },§§goto(addr380))
                                                {
                                                   loop30:
                                                   while(_loc8_)
                                                   {
                                                      do
                                                      {
                                                         this.§6R§();
                                                         while(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop29;
                                                            }
                                                         }
                                                         continue loop30;
                                                      }
                                                      while(false);
                                                      
                                                      return;
                                                   }
                                                   §§goto(addr420);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      savedAnim.mClip.gotoAndPlay(1);
                                                      continue loop27;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr420);
                                       }
                                       break;
                                    }
                                    §§goto(addr354);
                                 }
                                 §§goto(addr356);
                              }
                              addr351:
                           }
                           §§goto(addr349);
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr436);
                  }
                  if(_loc7_ && item)
                  {
                     continue;
                  }
                  CustomAvatarCache.§=!e§(new §`y§(this.§;n§,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID),true,true);
                  §§goto(addr120);
               }
               items = §§pop().split("-");
               if(_loc8_ || items)
               {
               }
               loop13:
               for(var _loc5_:int = 0,var _loc6_:* = items; §§hasnext(_loc6_,_loc5_); )
               {
                  §§push(§§nextvalue(_loc5_,_loc6_));
                  while(true)
                  {
                     item = §§pop();
                     while(true)
                     {
                        loop16:
                        for(; !_loc7_; while(true)
                        {
                           if(_loc7_ && e)
                           {
                              continue loop16;
                           }
                           §+!N§.§5!O§(item);
                           §§goto(addr253);
                           §§goto(addr267);
                        },§§goto(addr221))
                        {
                           §§push(this.§>5§);
                           loop17:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §+!N§.§5!O§(item);
                                 for(; !(_loc7_ && e); if(!(_loc7_ && item))
                                 {
                                    if(!_loc7_)
                                    {
                                       if(false)
                                       {
                                          addr221:
                                       }
                                       continue loop13;
                                    }
                                    continue loop16;
                                 })
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc8_ || items)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       addr267:
                                       while(true)
                                       {
                                          continue loop16;
                                       }
                                       addr267:
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop17;
                                    }
                                    §§goto(addr221);
                                 }
                                 addr253:
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc7_ && e)
               {
               }
               §§goto(addr308);
            }
         }
         §§goto(addr101);
      }
      
      private function §'!Y§(e:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var savedAnim:§6#§ = null;
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(!_loc4_)
               {
                  if(this.§-M§)
                  {
                     while(true)
                     {
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              addr63:
                              addr113:
                              while(true)
                              {
                                 §§push(this.§5!M§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push("WaitingForReply");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().setVisibility(false);
                                       while(_loc3_)
                                       {
                                          if(_loc3_ || e)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    addr114:
                                    §§push(§§pop().getItemByName(§§pop()));
                                 }
                                 savedAnim = §§pop() as §6#§;
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       savedAnim.setVisibility(true);
                                    }
                                    addr167:
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             savedAnim.mClip.gotoAndPlay(1);
                                             while(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr167);
                                          }
                                          continue;
                                          addr146:
                                       }
                                       continue loop9;
                                    }
                                 }
                              }
                              §§goto(addr114);
                           }
                        }
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr63);
                           }
                           else
                           {
                              §§push(this.§5!M§);
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function § m§(itemCategory:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr103:
               while(true)
               {
                  §1!!§.§1!S§.§ m§(itemCategory);
                  continue loop0;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §+!b§(itemId:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || item)
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
               while(true)
               {
                  addr50:
                  addr41:
                  while(true)
                  {
                     addr52:
                     while(_loc9_)
                     {
                     }
                     continue loop0;
                  }
                  if(_loc10_ && currentAvatar)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr50);
                  }
                  var item:Item = §1!!§.§[!Y§().§&!i§(itemId);
                  if(_loc10_ && item)
                  {
                  }
                  var currentAvatar:Avatar = §1!!§.§1!S§;
                  if(!_loc10_)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(item));
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(Log);
                              §§push("[Warining!] Trying to select item that dosen\'t exit. Item id:");
                              if(_loc9_)
                              {
                                 §§push(§§pop() + itemId);
                              }
                              §§pop().log(§§pop());
                              if(_loc9_)
                              {
                                 §§goto(addr524);
                              }
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(item.§-!@§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "CATEGORYBIRDS");
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc10_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr185:
                                             addr134:
                                             while(true)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             if(_loc10_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc10_ && currentAvatar)
                                             {
                                                continue loop10;
                                             }
                                             §§push(!§§pop());
                                             if(_loc9_ || this)
                                             {
                                                addr156:
                                                if(_loc10_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                }
                                                addr159:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc10_ && item))
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr168:
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      addr101:
                                                      while(true)
                                                      {
                                                         while(!(_loc10_ && itemId))
                                                         {
                                                            if(_loc9_ || item)
                                                            {
                                                               if(!(_loc10_ && item))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   if(item.§-!@§.toUpperCase() == "CATEGORYBACKGROUNDS")
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc9_ || itemId)
                                                         {
                                                            sAvatarContainer.§]!;§(item.§<!B§);
                                                            addr510:
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr510);
                                                               }
                                                               addr483:
                                                               §1!!§.§1!S§.§1$§(item);
                                                               addr486:
                                                               §§goto(addr511);
                                                               addr486:
                                                               addr479:
                                                            }
                                                            break loop6;
                                                            addr451:
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr451);
                                                   }
                                                   else
                                                   {
                                                      §§push(§1!!§.§1!S§);
                                                      if(_loc9_ || currentAvatar)
                                                      {
                                                         §§pop().§1$§(item);
                                                         if(!_loc9_)
                                                         {
                                                            addr524:
                                                            break loop6;
                                                         }
                                                         if(!(_loc10_ && item))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                   }
                                                   §§goto(addr483);
                                                }
                                                §§goto(addr511);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr159);
                                       }
                                       §§goto(addr511);
                                    }
                                 }
                              }
                           }
                           §§goto(addr524);
                        }
                        this.§6R§();
                        if(_loc9_ || this)
                        {
                        }
                        §§goto(addr536);
                     }
                  }
                  §§goto(addr168);
               }
            }
         }
         while(true)
         {
            if(_loc9_)
            {
               §§goto(addr41);
            }
            §§goto(addr52);
         }
         §§goto(addr60);
      }
      
      private function §6R§() : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc20_ && totalPrice)
         {
         }
         var category:§1!b§ = null;
         var item:Item = null;
         var avatarStringArray:Array = null;
         var currentString:String = null;
         var currentStringAsArray:Array = null;
         var string:String = null;
         var categoryButton:AvatarEditorTabRepeaterButton = null;
         var activeCategoryItem:AvatarEditorTabRepeaterButton = null;
         var itemPrice:int = 0;
         if(!(_loc20_ && avatarString))
         {
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           addr112:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                     if(!(_loc19_ || this))
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
                  if(_loc20_ && changed)
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr70);
      }
   }
}
