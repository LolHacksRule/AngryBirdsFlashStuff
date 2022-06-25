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
         if(sAccessToken || sAvatorCreatorPopupBin)
         {
            while(true)
            {
               sAvatorCreatorPopupBin = §+]§;
               addr99:
               if(!(sAccessToken || sAccessToken))
               {
                  continue;
               }
               loop24:
               for(; sAccessToken || sAccessToken; sFirstTimeInit = true,if(sAvatorCreatorPopupBin)
               {
                  continue;
               },if(sAccessToken)
               {
                  §§goto(addr37);
               },§§goto(addr85))
               {
                  addr75:
                  if(sAccessToken || AvatarCreatorPopup)
                  {
                     continue;
                  }
                  loop20:
                  while(true)
                  {
                     do
                     {
                        break loop24;
                     }
                     while(sAvatorCreatorPopupBin && sAvatorCreatorPopupBin);
                     
                     addr44:
                     if(sAccessToken || sAvatorCreatorPopupBin)
                     {
                        addr51:
                        if(!(sAvatorCreatorPopupBin && sAccessToken))
                        {
                           addr58:
                           if(sAccessToken || sAvatorCreatorPopupBin)
                           {
                              return;
                           }
                           loop5:
                           while(true)
                           {
                              STATE_NAME = "CreatorState";
                              addr255:
                              addr310:
                              loop6:
                              while(!(sAvatorCreatorPopupBin && AvatarCreatorPopup))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    SPOTS = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
                                    while(true)
                                    {
                                       while(sAccessToken || sAvatorCreatorPopupBin)
                                       {
                                          STARTUP_CHARACTER = "RedBird";
                                          while(sAccessToken || sAccessToken)
                                          {
                                             continue loop7;
                                             loop14:
                                             for(; !(sAvatorCreatorPopupBin && AvatarCreatorPopup); while(!(sAvatorCreatorPopupBin && AvatarCreatorPopup))
                                             {
                                                continue loop20;
                                                §§goto(addr44);
                                             })
                                             {
                                                loop15:
                                                while(!(sAvatorCreatorPopupBin && AvatarCreatorPopup))
                                                {
                                                   STARTUP_CHARACTER_CATEGORY = "CategoryBirds";
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(sAvatorCreatorPopupBin && sAccessToken)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(sAvatorCreatorPopupBin)
                                                      {
                                                         break;
                                                      }
                                                      while(!sAvatorCreatorPopupBin)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                            addr85:
                                                            while(true)
                                                            {
                                                               if(sAccessToken || AvatarCreatorPopup)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               continue loop18;
                                                            }
                                                            continue loop16;
                                                         }
                                                         break loop24;
                                                      }
                                                      while(true)
                                                      {
                                                         STARTUP_CHARACTER_SID = "10001";
                                                         continue loop14;
                                                      }
                                                   }
                                                   while(!sAvatorCreatorPopupBin)
                                                   {
                                                      §§goto(addr189);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   break loop6;
                                                   §§goto(addr167);
                                                }
                                                addr167:
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(sAvatorCreatorPopupBin && AvatarCreatorPopup)
                                 {
                                    continue;
                                 }
                                 STARTUP_CHARACTER_HAT = "NoHat";
                                 §§goto(addr194);
                              }
                              addr326:
                              while(!(sAvatorCreatorPopupBin && sAvatorCreatorPopupBin))
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
                                 §§goto(addr307);
                                 §§goto(addr255);
                              }
                              while(true)
                              {
                                 §§goto(addr320);
                                 §§goto(addr310);
                              }
                           }
                        }
                        while(true)
                        {
                           if(sAccessToken || AvatarCreatorPopup)
                           {
                              §§goto(addr206);
                           }
                           §§goto(addr250);
                           §§goto(addr51);
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr125);
                     §§goto(addr75);
                  }
               }
               while(true)
               {
                  if(sAccessToken || AvatarCreatorPopup)
                  {
                     §§goto(addr85);
                  }
                  break;
                  §§goto(addr68);
               }
               addr68:
               §§goto(addr138);
            }
         }
         §§goto(addr326);
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
         if(!_loc8_)
         {
         }
         var character:§[_§ = null;
         if(!_loc9_)
         {
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
                        this.§;!0§ = [];
                        addr312:
                        while(true)
                        {
                           addr305:
                           while(_loc8_)
                           {
                              this.§-`§ = [];
                              while(true)
                              {
                                 addr297:
                                 while(true)
                                 {
                                    addr294:
                                    while(true)
                                    {
                                       this.§1v§ = statePopupManager;
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                     if(!(_loc8_ || currentUIView))
                     {
                        continue;
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         while(true)
         {
            §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked("1000-2"));
            if(_loc8_)
            {
               if(!§§pop())
               {
                  §§push(this.§5!M§);
                  if(_loc8_ || activeTabName)
                  {
                     §§push("ButtonEasterEgg2");
                     if(!_loc9_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(_loc8_ || statePopupManager)
                        {
                           §§push(true);
                           if(_loc8_ || this)
                           {
                              §§pop().setVisibility(§§pop());
                              §§goto(addr126);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr130);
               }
               §§goto(addr155);
            }
            §§goto(addr257);
         }
      }
      
      public static function §@i§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var itemObject:Object = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  continue loop0;
               }
            }
            addr43:
         }
         while(true)
         {
            if(_loc6_)
            {
               continue;
            }
            if(_loc5_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr43);
            }
            §§goto(addr39);
         }
         loop3:
         for each(itemObject in sItemsAvailable)
         {
            if(_loc6_)
            {
               return true;
            }
            addr107:
            while(true)
            {
               if(itemObject.itemId == itemId)
               {
                  continue;
               }
               continue loop3;
            }
            §§goto(addr107);
         }
         if(!_loc5_)
         {
         }
         return false;
      }
      
      public static function §3!`§(itemId:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
         }
         var itemObject:Object = null;
         if(_loc5_ || itemObject)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc6_ && itemId)
               {
               }
               if(!(_loc6_ && _loc3_))
               {
                  if(true)
                  {
                     var _loc3_:int = 0;
                     loop3:
                     for each(itemObject in sItemsAvailable)
                     {
                        if(_loc5_)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(itemObject.itemId == itemId);
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || itemObject)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   return itemObject.price;
                                                   addr135:
                                                }
                                                addr163:
                                                while(true)
                                                {
                                                   §§push(!itemObject.available);
                                                   if(_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr121:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr163);
                                       §§goto(addr104);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr135);
                     }
                     if(_loc6_)
                     {
                     }
                  }
                  continue;
                  return 0;
               }
               break;
            }
         }
      }
      
      public static function §8]§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var itemObject:Object = null;
         if(_loc5_ || itemId)
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
            addr177:
            var _loc3_:int = 0;
            loop3:
            for each(itemObject in sItemsAvailable)
            {
               if(!_loc6_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(itemObject.itemId == itemId);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 addr120:
                                 addr136:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ && itemId)
                                       {
                                          break;
                                       }
                                       if(!(_loc6_ && itemId))
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 return itemObject.sale;
                                 continue loop5;
                              }
                              continue;
                              addr119:
                           }
                        }
                        addr165:
                        while(true)
                        {
                           §§pop();
                           continue loop4;
                        }
                     }
                  }
               }
               §§goto(addr136);
            }
            if(_loc6_ && AvatarCreatorPopup)
            {
            }
            return false;
         }
      }
      
      public static function §`M§(itemId:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var itemObject:Object = null;
         if(_loc6_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc6_)
                  {
                  }
                  if(_loc6_ || itemId)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(itemObject in sItemsAvailable)
                     {
                        if(!_loc5_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(itemObject.itemId == itemId);
                              if(_loc6_ || AvatarCreatorPopup)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || itemId)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr139:
                                          while(true)
                                          {
                                             addr81:
                                             while(true)
                                             {
                                                §§push(!itemObject.available);
                                                if(!(_loc5_ && itemObject))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                       addr138:
                                    }
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc6_)
                                       {
                                          return itemObject.limited;
                                       }
                                       §§goto(addr139);
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr138);
                           }
                        }
                        else if(true)
                        {
                           continue;
                        }
                        §§goto(addr81);
                     }
                     if(!_loc6_)
                     {
                     }
                     return false;
                     addr38:
                  }
                  break;
               }
            }
         }
         §§goto(addr38);
      }
      
      public static function §6M§(itemId:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var itemObject:Object = null;
         if(_loc5_ || AvatarCreatorPopup)
         {
         }
         loop0:
         while(true)
         {
            addr42:
            addr64:
            while(true)
            {
               continue loop0;
            }
            addr122:
            for each(itemObject in sItemsAvailable)
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     addr103:
                     if(_loc5_ || itemId)
                     {
                     }
                     if(_loc5_ || itemObject)
                     {
                        return itemObject.starPrice;
                     }
                  }
                  addr120:
               }
               else if(true)
               {
                  continue;
               }
               while(itemObject.itemId == itemId)
               {
                  §§goto(addr103);
                  §§goto(addr120);
               }
            }
            if(_loc6_)
            {
            }
            return 0;
         }
      }
      
      public static function §@!§(oldStarCount:int, newStarCount:int) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var achObject:Object = null;
         if(_loc7_)
         {
            while(true)
            {
               loop1:
               for(; !(_loc6_ && achObject); while(!(_loc6_ && achObject))
               {
                  if(!(_loc7_ || AvatarCreatorPopup))
                  {
                     continue;
                  }
                  §§goto(addr36);
               })
               {
                  while(true)
                  {
                     do
                     {
                        continue loop1;
                     }
                     while(false);
                     
                     loop5:
                     for each(achObject in sAchievementItems)
                     {
                        if(!(_loc6_ && oldStarCount))
                        {
                           loop6:
                           while(true)
                           {
                              §§push(newStarCount);
                              addr155:
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() >= achObject.s);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
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
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() < achObject.s);
                                          addr122:
                                          continue loop7;
                                          if(!(_loc6_ && oldStarCount))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || oldStarCount)
                                             {
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    addr149:
                                    if(§§pop())
                                    {
                                       return achObject.id;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(oldStarCount);
                           if(!(_loc6_ && achObject))
                           {
                              §§goto(addr122);
                           }
                           §§goto(addr155);
                        }
                     }
                     §§push("");
                     if(_loc7_ || AvatarCreatorPopup)
                     {
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §`n§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && this))
         {
            while(true)
            {
               loop1:
               for(; !_loc3_; while(_loc2_ || _loc3_)
               {
               })
               {
                  while(true)
                  {
                     this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            if(!(_loc3_ && this))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr44);
            }
            §§goto(addr52);
         }
         var urlReq:URLRequest = §"!F§.§=i§(sServerRoot + "/getavatarparts");
         if(!(_loc3_ && this))
         {
            while(true)
            {
               urlReq.method = URLRequestMethod.POST;
               loop6:
               while(true)
               {
                  while(true)
                  {
                     sAllItemsLoader = new URLLoader();
                     while(!(_loc3_ && _loc2_))
                     {
                        while(_loc2_ || this)
                        {
                           continue loop6;
                        }
                     }
                  }
               }
            }
            addr244:
         }
         loop10:
         while(true)
         {
            loop11:
            while(true)
            {
               sAllItemsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
               loop12:
               for(; !_loc3_; if(_loc3_ && _loc2_)
               {
                  continue;
               },§§goto(addr137))
               {
                  while(!_loc3_)
                  {
                     sAllItemsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!0§);
                     loop14:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           loop15:
                           while(true)
                           {
                              sAllItemsLoader.load(urlReq);
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    continue loop12;
                                 }
                                 continue loop15;
                                 addr137:
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop11;
                                    }
                                    continue loop14;
                                 }
                              }
                              continue loop12;
                           }
                        }
                        else
                        {
                           §§goto(addr244);
                        }
                     }
                  }
                  continue loop10;
               }
               §§goto(addr195);
            }
         }
      }
      
      protected function §!0§(event:SecurityErrorEvent) : void
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
               loop2:
               for(; _loc2_ || _loc3_; while(_loc2_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr31);
               })
               {
                  do
                  {
                     sAllItemsLoader = null;
                     continue loop2;
                  }
                  while(!(_loc2_ || _loc3_));
                  
                  addr48:
                  if(!(_loc2_ || _loc3_))
                  {
                     while(true)
                     {
                        §]!e§.§finally§();
                        continue loop2;
                        §§goto(addr48);
                     }
                     addr96:
                  }
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §6W§(e:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §]!e§.§finally§();
                  loop2:
                  do
                  {
                     while(_loc3_)
                     {
                        sAllItemsLoader = null;
                        while(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_ || this)
                              {
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  while(!_loc3_);
                  
               }
            }
         }
      }
      
      private function onComplete(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  sAllAvatarItems = §8!-§.§9N§(e.currentTarget.data);
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§-M§);
                        if(_loc3_ || this)
                        {
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              this.§`e§();
                              while(_loc3_)
                              {
                                 while(!(_loc2_ && this))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§]e§();
                                          loop7:
                                          while(_loc3_)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                continue loop0;
                                                while(!_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             continue loop3;
                                             return;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr96:
                              if(!(_loc3_ || e))
                              {
                                 §§goto(addr96);
                                 addr122:
                              }
                              if(!(_loc3_ || e))
                              {
                                 break loop3;
                              }
                              continue loop1;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §`e§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || list)
         {
         }
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         if(_loc8_ || item)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr65:
                  while(true)
                  {
                     while(_loc9_)
                     {
                     }
                     if(_loc9_ && items)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr65);
         }
         var list:Array = [];
         if(_loc8_)
         {
            loop5:
            while(true)
            {
               §§push(this.§5!M§);
               loop6:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || list)
                     {
                        while(true)
                        {
                        }
                        addr117:
                     }
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§5!M§);
                           if(_loc9_)
                           {
                              break;
                           }
                           §§pop().getItemByName("WaitingForReply").setVisibility(false);
                           while(_loc8_)
                           {
                              if(!(_loc8_ || list))
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 continue loop5;
                              }
                              if(false)
                              {
                                 continue loop8;
                              }
                              addr121:
                              var _loc6_:int = 0;
                              var _loc7_:* = sAllAvatarItems;
                              addr321:
                              for each(item in _loc7_)
                              {
                                 if(!_loc9_)
                                 {
                                    addr170:
                                 }
                                 addr150:
                                 this.§11§(item,AvatarCreatorPopup.sAchievementItems);
                                 if(_loc8_ || items)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(!(_loc9_ && list))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr150);
                                          }
                                          clientItem = ServerIdParser.§ 8§(item.id);
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(clientItem)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                      }
                                                      addr297:
                                                      item.p;
                                                      addr306:
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr297);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         §§goto(addr297);
                                                         addr303:
                                                      }
                                                      addr318:
                                                      if(_loc8_ || items)
                                                      {
                                                         §§goto(addr318);
                                                      }
                                                      item.id;
                                                      §§goto(addr318);
                                                      addr320:
                                                   }
                                                   §§push("itemId");
                                                   if(_loc9_ && list)
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
                                                   if(!(_loc9_ && this))
                                                   {
                                                      list.push(parseObject);
                                                      addr270:
                                                      if(_loc8_)
                                                      {
                                                         addr244:
                                                         trace(parseObject.itemId);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr244);
                                                                  }
                                                                  addr273:
                                                                  item.a;
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§goto(addr270);
                                                         addr264:
                                                      }
                                                      addr272:
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr273);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr318);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr150);
                                 }
                                 addr168:
                                 §§goto(addr168);
                              }
                              if(_loc8_ || list)
                              {
                                 addr344:
                                 sItemsAvailable = list;
                                 if(_loc8_)
                                 {
                                    if(_loc8_ || items)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr344);
                                       }
                                       items = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
                                       if(!(_loc9_ && list))
                                       {
                                          items.§%U§(null,AvatarEditorTabRepeaterButton);
                                          addr420:
                                          addr418:
                                       }
                                       this.§5!M§.§31§("Repeater_Items","Repeater_Items_Tab_0");
                                       addr396:
                                       if(_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc8_ || item)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§goto(addr396);
                                                }
                                                return;
                                             }
                                             §§goto(addr420);
                                          }
                                          §§goto(addr418);
                                       }
                                       addr410:
                                       §§goto(addr410);
                                    }
                                    §§goto(addr344);
                                    addr350:
                                 }
                                 addr352:
                                 §§goto(addr352);
                              }
                              §§goto(addr350);
                           }
                           continue loop7;
                        }
                        continue loop6;
                     }
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §11§(item:Object, achievements:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && achievements)
         {
         }
         var achiev:Object = null;
         if(!(_loc7_ && achiev))
         {
            while(true)
            {
               addr47:
               if(_loc6_ || achiev)
               {
                  if(false)
                  {
                     while(true)
                     {
                        while(!(_loc6_ || achievements))
                        {
                        }
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr47);
                     }
                     while(true)
                     {
                        §§goto(addr56);
                     }
                     addr56:
                     addr61:
                  }
                  for each(achiev in achievements)
                  {
                     if(!_loc7_)
                     {
                        while(item.id == achiev.id)
                        {
                           while(!(_loc7_ && this))
                           {
                              while(true)
                              {
                                 item.p = achiev.p;
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       addr102:
                                       while(true)
                                       {
                                          item.star = achiev.star;
                                          continue loop9;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr107);
                           }
                        }
                        continue;
                     }
                     §§goto(addr100);
                  }
                  if(!_loc6_)
                  {
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §!"§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || scale)
         {
         }
         if(!_loc6_)
         {
            if(!(_loc6_ && containerX))
            {
               loop0:
               while(true)
               {
                  if(_loc7_ || containerX)
                  {
                     if(_loc7_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(sAvatarContainer);
                           if(!(_loc6_ && this))
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    addr170:
                                    §§push(sAvatarContainer);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop().parent));
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(sAvatarContainer);
                                                continue loop3;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc6_ && containerX)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc6_ && displayObjectContainer))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      while(true)
                                                      {
                                                         displayObjectContainer.addChild(sAvatarContainer);
                                                         if(!(_loc6_ && scale))
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               if(_loc7_ || scale)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr246:
                                                                  addr284:
                                                                  addr246:
                                                                  §§push(sAvatarContainer);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().scaleX = sAvatarContainer.scaleY = scale;
                                                                     if(_loc7_ || scale)
                                                                     {
                                                                        break loop6;
                                                                        addr221:
                                                                     }
                                                                     break loop6;
                                                                  }
                                                                  §§push(containerY);
                                                                  if(!(_loc6_ && containerX))
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     addr265:
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!(_loc6_ && scale))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc6_ && scale)
                                                                              {
                                                                                 §§goto(addr265);
                                                                              }
                                                                              return;
                                                                              addr235:
                                                                              addr276:
                                                                           }
                                                                           break loop6;
                                                                        }
                                                                        break loop4;
                                                                        addr285:
                                                                     }
                                                                     break loop4;
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  §§goto(addr285);
                                                               }
                                                               break loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(sAvatarContainer);
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop3;
                                                         addr117:
                                                      }
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§push(sAvatarContainer);
                                          if(_loc7_ || containerX)
                                          {
                                             §§goto(addr284);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr235);
                                    }
                                    continue;
                                 }
                                 §§goto(addr40);
                              }
                              continue loop0;
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr283);
               }
            }
            §§goto(addr235);
         }
         §§goto(addr140);
      }
      
      private function §]e§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(!_loc17_)
         {
         }
         var character:§[_§ = null;
         var avatarHolder:§6#§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§6#§ = null;
         var char:§[_§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:* = 0;
         var categoryName:String = null;
         if(_loc16_)
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
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        addr72:
                        loop5:
                        while(true)
                        {
                           this.§-M§ = true;
                           while(_loc17_)
                           {
                              if(_loc17_)
                              {
                                 if(!_loc16_)
                                 {
                                    if(!_loc17_)
                                    {
                                       break loop5;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
               if(_loc16_ && userId)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr72);
               }
               var tabs:UIRepeaterRovio = this.§5!M§.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
               if(!(_loc16_ && tabs))
               {
                  tabs.§%U§(null,AvatarEditorTabRepeaterButton);
                  addr218:
                  if(sItemsAvailable == null)
                  {
                     addr202:
                     if(!_loc17_)
                     {
                        §§goto(addr218);
                     }
                     return;
                     addr205:
                  }
                  addr169:
                  addr216:
                  addr208:
                  §§push(sAvatars);
                  if(!_loc16_)
                  {
                     §§push(null);
                     if(!(_loc16_ && this))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc17_ || userId)
                           {
                              if(!_loc16_)
                              {
                                 addr146:
                                 if(_loc17_ || tabs)
                                 {
                                    if(_loc17_ || this)
                                    {
                                       if(!(_loc16_ && avatarString))
                                       {
                                          addr132:
                                          sAvatars = [];
                                          if(_loc17_ || tabs)
                                          {
                                             if(_loc17_)
                                             {
                                                if(_loc17_ || avatarString)
                                                {
                                                   if(_loc17_ || userId)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr132);
                                                      }
                                                      var _loc14_:int = 0;
                                                      var _loc15_:* = §1!!§.§=x§().characters;
                                                      addr261:
                                                      for each(character in _loc15_)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            addr250:
                                                            sAvatars.push(new Avatar(character));
                                                            addr260:
                                                            if(_loc17_)
                                                            {
                                                               if(!(_loc16_ && tabs))
                                                               {
                                                                  addr248:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            addr258:
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      if(_loc17_ || tabs)
                                                      {
                                                         addr273:
                                                         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         var userId:* = §§pop();
                                                         if(_loc16_)
                                                         {
                                                         }
                                                         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
                                                         if(_loc17_ || this)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         var avatarString:* = §§pop();
                                                         if(_loc17_ || tabs)
                                                         {
                                                            addr392:
                                                            §§push(avatarString == null);
                                                            if(_loc17_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc16_ && userId))
                                                               {
                                                                  addr384:
                                                                  §§push(§§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr389:
                                                                     §§pop();
                                                                     addr390:
                                                                     §§push(avatarString);
                                                                     if(_loc17_ || tabs)
                                                                     {
                                                                        §§push(§§pop() == "");
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!(_loc16_ && userId))
                                                                        {
                                                                           addr364:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                              }
                                                                              addr329:
                                                                              this.§"p§ = true;
                                                                              addr369:
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!(_loc16_ && tabs))
                                                                                 {
                                                                                    if(_loc17_ || avatarString)
                                                                                    {
                                                                                       if(_loc17_ || tabs)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          addr393:
                                                                                          var profile:§>Y§ = new §>Y§(userId,false,§>Y§.SQUARE);
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             profile.x = 13;
                                                                                             addr490:
                                                                                             addr504:
                                                                                             if(_loc17_ || avatarString)
                                                                                             {
                                                                                                profile.y = 9;
                                                                                                addr480:
                                                                                                addr487:
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(this.§5!M§);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push("SetFacebookProfileButton");
                                                                                                      if(!(_loc16_ && userId))
                                                                                                      {
                                                                                                         §§push(§§pop().getItemByName(§§pop()));
                                                                                                         if(_loc17_ || avatarString)
                                                                                                         {
                                                                                                            §§pop().mClip.addChild(profile);
                                                                                                            addr440:
                                                                                                            if(!(_loc16_ && userId))
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     addr430:
                                                                                                                     if(sFirstTimeInit)
                                                                                                                     {
                                                                                                                        addr434:
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && tabs))
                                                                                                                           {
                                                                                                                              if(!(_loc16_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr430);
                                                                                                                                    }
                                                                                                                                    §§push(this.§5!M§);
                                                                                                                                    if(_loc17_ || tabs)
                                                                                                                                    {
                                                                                                                                       addr514:
                                                                                                                                       §§push("AvatarHolderClip");
                                                                                                                                       if(!(_loc16_ && tabs))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                          if(_loc17_ || userId)
                                                                                                                                          {
                                                                                                                                             addr530:
                                                                                                                                             avatarHolder = §§pop() as §6#§;
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   this.§!"§(avatarHolder.mClip);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr624:
                                                                                                                                                      §§push(avatarString == "");
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                      }
                                                                                                                                                      addr636:
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr632:
                                                                                                                                                            §§pop();
                                                                                                                                                            addr633:
                                                                                                                                                            §§push(avatarString);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() == null);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && tabs))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr632);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr582:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && userId))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc16_ && avatarString))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr549:
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc16_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr547:
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr549);
                                                                                                                                                                                       }
                                                                                                                                                                                       oldAvatarsItems = ServerIdParser.§@E§(avatarString);
                                                                                                                                                                                       if(_loc16_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addedAvatar = sAvatarContainer.§4q§(oldAvatarsItems);
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc16_ && tabs))
                                                                                                                                                                                          {
                                                                                                                                                                                             §1!!§.§1!S§ = addedAvatar;
                                                                                                                                                                                             if(_loc17_ || tabs)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr728:
                                                                                                                                                                                                §§push(this.§5!M§);
                                                                                                                                                                                                if(_loc17_ || userId)
                                                                                                                                                                                                {
                                                                                                                                                                                                   (§§pop() as PopupsUIView).§4i§();
                                                                                                                                                                                                   if(_loc17_ || avatarString)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr749:
                                                                                                                                                                                                      if(_loc17_ || avatarString)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         sFirstTimeInit = false;
                                                                                                                                                                                                         if(!(_loc16_ && tabs))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr938:
                                                                                                                                                                                                            §§push(this.§'F§);
                                                                                                                                                                                                            if(!(_loc16_ && userId))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1184:
                                                                                                                                                                                                                        addr1198:
                                                                                                                                                                                                                        §§push((this.§5!M§ as PopupsUIView).§!!§(this.§'F§));
                                                                                                                                                                                                                        if(!(_loc16_ && avatarString))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        tabIndex = §§pop();
                                                                                                                                                                                                                        addr1201:
                                                                                                                                                                                                                        addr1180:
                                                                                                                                                                                                                        addr1199:
                                                                                                                                                                                                                        §§push(tabIndex);
                                                                                                                                                                                                                        if(!(_loc16_ && avatarString))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() != -1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1174:
                                                                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1177:
                                                                                                                                                                                                                                 addr1152:
                                                                                                                                                                                                                                 §§push(this.§'F§);
                                                                                                                                                                                                                                 if(!(_loc16_ && tabs))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1148:
                                                                                                                                                                                                                                    categoryName = §§pop().substr("CATEGORY".length);
                                                                                                                                                                                                                                    addr1124:
                                                                                                                                                                                                                                    this.§5!M§.setText(categoryName,"Textfield_CategoryTitle");
                                                                                                                                                                                                                                    addr1128:
                                                                                                                                                                                                                                    addr1149:
                                                                                                                                                                                                                                    addr1133:
                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1120:
                                                                                                                                                                                                                                       §§push(this.§5!M§);
                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_ || tabs)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push("Repeater_Items");
                                                                                                                                                                                                                                             §§push("Repeater_Items_Tab_");
                                                                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + tabIndex);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§31§(§§pop(),§§pop());
                                                                                                                                                                                                                                             addr1103:
                                                                                                                                                                                                                                             if(!(_loc16_ && avatarString))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_ || tabs)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1082:
                                                                                                                                                                                                                                                   if(§1!!§.§[!Y§().§,!#§.length > 0)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1071:
                                                                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         tabs.§9k§("Repeater_Tabs_Tab_0").§9!+§(§1!!§.§[!Y§().§,!#§[tabIndex].name as String);
                                                                                                                                                                                                                                                         addr1051:
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc16_ && avatarString))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1027:
                                                                                                                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1004:
                                                                                                                                                                                                                                                                     this.§'F§ = null;
                                                                                                                                                                                                                                                                     addr1008:
                                                                                                                                                                                                                                                                     if(_loc17_ || tabs)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_ || avatarString)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1001:
                                                                                                                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr988:
                                                                                                                                                                                                                                                                                 this.§!!1§();
                                                                                                                                                                                                                                                                                 addr991:
                                                                                                                                                                                                                                                                                 if(!(_loc16_ && userId))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_ || avatarString)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1201);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                addr986:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1120);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1051);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1001);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr991);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1008);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1103);
                                                                                                                                                                                                                                                                              addr1024:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1174);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1177);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1027);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1128);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1149);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1071);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1079:
                                                                                                                                                                                                                                                         §§goto(addr1079);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1082);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1004);
                                                                                                                                                                                                                                                   addr1117:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1152);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1133);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1184);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1124);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1180);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1148);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1199);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1004);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1198);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1120);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1184);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr988);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1148);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1117);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1024);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1184);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr749);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1001);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr986);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr725:
                                                                                                                                                                                    if(!(_loc16_ && tabs))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr710:
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr712:
                                                                                                                                                                                          sAvatarContainer.§]!;§("backgrounds1");
                                                                                                                                                                                          addr718:
                                                                                                                                                                                          if(_loc17_ || avatarString)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr725);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr728);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr718);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr633);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr710);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr636);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr712);
                                                                                                                                                                        addr700:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr712);
                                                                                                                                                                  }
                                                                                                                                                                  this.§+!b§(STARTUP_CHARACTER);
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr700);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr710);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr624);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr582);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr632);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr712);
                                                                                                                                                }
                                                                                                                                                §§goto(addr710);
                                                                                                                                             }
                                                                                                                                             §§goto(addr547);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr776:
                                                                                                                                             avatarHolder2 = §§pop() as §6#§;
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr795:
                                                                                                                                             this.§!"§(avatarHolder2.mClip);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc16_ && avatarString))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr795);
                                                                                                                                                   }
                                                                                                                                                   char = sAvatarContainer.§4&§.§?D§();
                                                                                                                                                   if(!(_loc16_ && tabs))
                                                                                                                                                   {
                                                                                                                                                      addr862:
                                                                                                                                                      sAvatarContainer.§!!=§(char.§<!B§,char.sId,char.§-!@§,sAvatars,110,174);
                                                                                                                                                      addr874:
                                                                                                                                                      if(_loc17_ || avatarString)
                                                                                                                                                      {
                                                                                                                                                         addr835:
                                                                                                                                                         §§push(sAvatarContainer);
                                                                                                                                                         if(!(_loc16_ && tabs))
                                                                                                                                                         {
                                                                                                                                                            §§pop().§4&§.§1-§();
                                                                                                                                                            addr848:
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || tabs)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr835);
                                                                                                                                                                     }
                                                                                                                                                                     items = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
                                                                                                                                                                     if(!(_loc16_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        items.§%U§(null,AvatarEditorTabRepeaterButton);
                                                                                                                                                                        addr937:
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr914:
                                                                                                                                                                           (this.§5!M§ as PopupsUIView).§4i§();
                                                                                                                                                                           if(_loc17_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr914);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr938);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr937);
                                                                                                                                                                           }
                                                                                                                                                                           addr922:
                                                                                                                                                                           §§goto(addr922);
                                                                                                                                                                           addr927:
                                                                                                                                                                        }
                                                                                                                                                                        addr935:
                                                                                                                                                                        §§goto(addr935);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr927);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr874);
                                                                                                                                                            }
                                                                                                                                                            addr848:
                                                                                                                                                            §§goto(addr848);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr862);
                                                                                                                                                      }
                                                                                                                                                      addr876:
                                                                                                                                                      §§goto(addr876);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr848);
                                                                                                                                                }
                                                                                                                                                §§goto(addr795);
                                                                                                                                             }
                                                                                                                                             addr805:
                                                                                                                                             §§goto(addr805);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr775:
                                                                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr776);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr774:
                                                                                                                                       §§goto(addr775);
                                                                                                                                       §§push("AvatarHolderClip");
                                                                                                                                    }
                                                                                                                                    §§goto(addr775);
                                                                                                                                 }
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr434);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     §§goto(addr774);
                                                                                                                     §§push(this.§5!M§);
                                                                                                                     addr451:
                                                                                                                  }
                                                                                                                  §§goto(addr490);
                                                                                                               }
                                                                                                               §§goto(addr487);
                                                                                                            }
                                                                                                            addr477:
                                                                                                            §§goto(addr477);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                      §§goto(addr775);
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                §§goto(addr504);
                                                                                             }
                                                                                             addr502:
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           §§goto(addr393);
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr132);
                                             addr143:
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr208);
                                 }
                                 addr193:
                                 §§goto(addr193);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr273);
                     }
                  }
                  §§goto(addr218);
               }
               §§goto(addr143);
            }
         }
      }
      
      private function onUiInteraction(e:§7"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.uiInteractionHandler(e.eventIndex,e.eventName,e.component);
                     while(_loc3_ && e)
                     {
                     }
                     if(!(_loc3_ && e))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         if(_loc22_ || eventName)
         {
         }
         var component2:UIComponentRovio = null;
         var tabIndex:* = 0;
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
         if(_loc22_)
         {
            while(true)
            {
               addr82:
               if(!(_loc22_ || eventName))
               {
                  continue;
               }
               if(false)
               {
                  loop4:
                  while(component is UIComponentRovio)
                  {
                     if(_loc22_)
                     {
                        if(!_loc23_)
                        {
                           while(!_loc23_)
                           {
                              if(!_loc22_)
                              {
                                 continue;
                              }
                              addr75:
                              if(!(_loc23_ && component))
                              {
                                 §§goto(addr82);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr107:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr75);
                                 }
                                 addr110:
                              }
                           }
                           while(true)
                           {
                              §§goto(addr110);
                           }
                           addr102:
                           addr113:
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr102);
                  }
                  addr571:
                  §§push(eventName);
                  if(_loc22_)
                  {
                     if(§§pop().toUpperCase().indexOf("OVER") > -1)
                     {
                        if(_loc22_)
                        {
                           if(!(_loc23_ && eventIndex))
                           {
                              if(!_loc23_)
                              {
                                 if(_loc22_)
                                 {
                                    if(_loc22_ || eventIndex)
                                    {
                                       §§push(eventName);
                                       if(_loc22_ || this)
                                       {
                                          §§push(§§pop().toUpperCase().substr(4));
                                          if(_loc22_)
                                          {
                                             overString = §§pop();
                                             addr682:
                                             §§push(this.§5!M§);
                                             if(!(_loc23_ && component))
                                             {
                                                §§push((§§pop() as PopupsUIView).§!!§(overString));
                                                if(!_loc23_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc22_)
                                                   {
                                                      overTabIndex = §§pop();
                                                      if(!(_loc23_ && component))
                                                      {
                                                         if(!(_loc23_ && eventName))
                                                         {
                                                            addr601:
                                                            §§push(0);
                                                            if(_loc22_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc22_)
                                                               {
                                                                  repeaterIndex = §§pop();
                                                                  if(_loc22_ || component)
                                                                  {
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        if(!(_loc23_ && eventName))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr601);
                                                                           }
                                                                           §§push(0);
                                                                           if(!(_loc23_ && eventName))
                                                                           {
                                                                              addr713:
                                                                              var _loc20_:* = §§pop();
                                                                              if(!(_loc23_ && eventName))
                                                                              {
                                                                                 var _loc21_:* = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§;
                                                                                 addr832:
                                                                                 §§push(§§hasnext(_loc21_,_loc20_));
                                                                                 if(!(_loc23_ && eventName))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       overRepeaterButton = §§nextvalue(_loc20_,_loc21_);
                                                                                       if(_loc22_ || this)
                                                                                       {
                                                                                          addr831:
                                                                                          if(repeaterIndex != overTabIndex)
                                                                                          {
                                                                                             (overRepeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
                                                                                             addr765:
                                                                                             addr828:
                                                                                             addr829:
                                                                                             addr823:
                                                                                             §§push(repeaterIndex);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                if(_loc22_ || eventIndex)
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr779:
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   repeaterIndex = §§pop();
                                                                                                   addr781:
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      if(!(_loc23_ && component))
                                                                                                      {
                                                                                                         if(_loc22_ || component)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr765);
                                                                                                            }
                                                                                                            §§goto(addr832);
                                                                                                         }
                                                                                                         addr786:
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            if(_loc22_ || this)
                                                                                                            {
                                                                                                               §§goto(addr765);
                                                                                                            }
                                                                                                            §§goto(addr831);
                                                                                                         }
                                                                                                         §§goto(addr828);
                                                                                                      }
                                                                                                      §§goto(addr781);
                                                                                                      addr783:
                                                                                                   }
                                                                                                   addr806:
                                                                                                   if(_loc22_ || eventIndex)
                                                                                                   {
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         §§goto(addr786);
                                                                                                      }
                                                                                                      §§goto(addr829);
                                                                                                   }
                                                                                                   §§goto(addr823);
                                                                                                }
                                                                                                §§goto(addr831);
                                                                                             }
                                                                                             §§goto(addr779);
                                                                                          }
                                                                                          (overRepeaterButton as AvatarEditorTabRepeaterButton).§6N§();
                                                                                          §§goto(addr806);
                                                                                       }
                                                                                       §§goto(addr783);
                                                                                    }
                                                                                    if(!(_loc23_ && eventName))
                                                                                    {
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                addr979:
                                                                                                if(eventName.toUpperCase().indexOf("OUT") > -1)
                                                                                                {
                                                                                                   if(!(_loc23_ && component))
                                                                                                   {
                                                                                                      addr991:
                                                                                                      if(_loc22_ || eventName)
                                                                                                      {
                                                                                                         if(_loc22_ || eventName)
                                                                                                         {
                                                                                                            addr963:
                                                                                                            addr966:
                                                                                                            §§push(eventName);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop().toUpperCase().substr(3));
                                                                                                                  if(_loc22_ || component)
                                                                                                                  {
                                                                                                                     addr957:
                                                                                                                     outString = §§pop();
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        if(!(_loc23_ && this))
                                                                                                                        {
                                                                                                                           §§push(this.§5!M§);
                                                                                                                           if(_loc22_ || eventIndex)
                                                                                                                           {
                                                                                                                              addr911:
                                                                                                                              §§push((§§pop() as PopupsUIView).§!!§(outString));
                                                                                                                              if(_loc22_ || eventIndex)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    outTabIndex = §§pop();
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             addr868:
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc22_ || this)
                                                                                                                                                {
                                                                                                                                                   addr885:
                                                                                                                                                   repeaterIndex = §§pop();
                                                                                                                                                   if(!(_loc23_ && eventName))
                                                                                                                                                   {
                                                                                                                                                      if(_loc22_ || eventName)
                                                                                                                                                      {
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr868);
                                                                                                                                                            }
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               addr1007:
                                                                                                                                                               _loc20_ = §§pop();
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr1010:
                                                                                                                                                                  _loc21_ = ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§;
                                                                                                                                                                  addr1108:
                                                                                                                                                                  for each(outRepeaterButton in _loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1102:
                                                                                                                                                                        addr1107:
                                                                                                                                                                        if(repeaterIndex == outTabIndex)
                                                                                                                                                                        {
                                                                                                                                                                           (outRepeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
                                                                                                                                                                           addr1085:
                                                                                                                                                                           addr1104:
                                                                                                                                                                           if(!(_loc23_ && component))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc22_ || eventName)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1070:
                                                                                                                                                                                 if(_loc22_ || component)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1051:
                                                                                                                                                                                    §§push(repeaterIndex);
                                                                                                                                                                                    if(_loc22_ || eventName)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1065:
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          repeaterIndex = §§pop();
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc22_ || component)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc22_ || component)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1051);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1108);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1085);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1070);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1067:
                                                                                                                                                                                          §§goto(addr1067);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1102);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1065);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1107);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1104);
                                                                                                                                                                           }
                                                                                                                                                                           addr1105:
                                                                                                                                                                           §§goto(addr1105);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1051);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1085);
                                                                                                                                                                  }
                                                                                                                                                                  addr1111:
                                                                                                                                                                  if(!(_loc23_ && eventName))
                                                                                                                                                                  {
                                                                                                                                                                     addr2013:
                                                                                                                                                                     _loc20_ = eventName;
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push("UNEQUIP_ALL");
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc23_ && eventIndex))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              if(!(_loc23_ && eventName))
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc23_ && eventName))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2382:
                                                                                                                                                                                          switch(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             case 5:
                                                                                                                                                                                                addr1249:
                                                                                                                                                                                                §§push(ServerIdParser.§@!-§(this.§;!0§));
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc22_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1243:
                                                                                                                                                                                                      buyString = §§pop();
                                                                                                                                                                                                      addr1244:
                                                                                                                                                                                                      if(!(_loc23_ && component))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            trace(buyString);
                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc23_ && component))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1175:
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc22_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        AngryBirdsFP11.§5V§.§"§();
                                                                                                                                                                                                                        addr1158:
                                                                                                                                                                                                                        addr1172:
                                                                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1135:
                                                                                                                                                                                                                           this.§-`§ = [];
                                                                                                                                                                                                                           if(_loc22_ || eventName)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc22_ || component)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc22_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc22_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1135);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(buyString);
                                                                                                                                                                                                                                             if(_loc23_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr2013);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1469:
                                                                                                                                                                                                                                             items = §§pop().split("-");
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc20_ = 0;
                                                                                                                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc21_ = items;
                                                                                                                                                                                                                                                         if(!(_loc23_ && eventName))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1563:
                                                                                                                                                                                                                                                            for each(item in _loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §+!N§.§>=§(item);
                                                                                                                                                                                                                                                               addr1549:
                                                                                                                                                                                                                                                               addr1562:
                                                                                                                                                                                                                                                               if(_loc22_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1524:
                                                                                                                                                                                                                                                                  this.§-`§.push(item);
                                                                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc22_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc23_ && component))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc22_ || component)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1524);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1563);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1549);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1524);
                                                                                                                                                                                                                                                                        addr1539:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1562);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1542:
                                                                                                                                                                                                                                                                  §§goto(addr1542);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1554:
                                                                                                                                                                                                                                                               §§goto(addr1554);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1566:
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               ExternalInterfaceHandler.addCallback("purchaseComplete",this.§%=§);
                                                                                                                                                                                                                                                               ExternalInterfaceHandler.§>!2§("placeOrder",buyString);
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                               addr2007:
                                                                                                                                                                                                                                                               addr1996:
                                                                                                                                                                                                                                                               addr1985:
                                                                                                                                                                                                                                                               addr1993:
                                                                                                                                                                                                                                                               addr2005:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1967:
                                                                                                                                                                                                                                                               this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
                                                                                                                                                                                                                                                               §§push(§1!!§.§1!S§.§5&§());
                                                                                                                                                                                                                                                               if(!(_loc23_ && eventName))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               avatarData = §§pop();
                                                                                                                                                                                                                                                               this.§!E§(avatarData);
                                                                                                                                                                                                                                                               this.§6R§();
                                                                                                                                                                                                                                                               addr1960:
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                               addr1969:
                                                                                                                                                                                                                                                               addr1942:
                                                                                                                                                                                                                                                               addr1939:
                                                                                                                                                                                                                                                               addr1960:
                                                                                                                                                                                                                                                               addr1977:
                                                                                                                                                                                                                                                               addr1930:
                                                                                                                                                                                                                                                               addr1925:
                                                                                                                                                                                                                                                               addr1972:
                                                                                                                                                                                                                                                               addr1966:
                                                                                                                                                                                                                                                               addr1965:
                                                                                                                                                                                                                                                               addr1964:
                                                                                                                                                                                                                                                               addr1957:
                                                                                                                                                                                                                                                               addr1933:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1539);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1566);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1895:
                                                                                                                                                                                                                                                      if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§!E§("");
                                                                                                                                                                                                                                                         addr1867:
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1854:
                                                                                                                                                                                                                                                            if(_loc22_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§6R§();
                                                                                                                                                                                                                                                               addr1837:
                                                                                                                                                                                                                                                               if(_loc23_ && component)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1886:
                                                                                                                                                                                                                                                                  this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
                                                                                                                                                                                                                                                                  if(_loc22_ || eventIndex)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1895);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2007);
                                                                                                                                                                                                                                                                  addr1898:
                                                                                                                                                                                                                                                                  addr1885:
                                                                                                                                                                                                                                                                  addr1884:
                                                                                                                                                                                                                                                                  addr1883:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc23_ && component))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                  addr1832:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1969);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1942);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1898);
                                                                                                                                                                                                                                                         addr1903:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1939);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.deActivate();
                                                                                                                                                                                                                                                   addr1799:
                                                                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                      addr1789:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1799:
                                                                                                                                                                                                                                                   addr1817:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1960);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1799);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1365:
                                                                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             addr1360:
                                                                                                                                                                                                                                             addr1367:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1375:
                                                                                                                                                                                                                                             if(!(_loc23_ && component))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1446:
                                                                                                                                                                                                                                             if(!(_loc22_ || eventIndex))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1444:
                                                                                                                                                                                                                                                §1!!§.§1!S§.§=p§();
                                                                                                                                                                                                                                                §§goto(addr1446);
                                                                                                                                                                                                                                                addr1460:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.§!!1§();
                                                                                                                                                                                                                                             addr1436:
                                                                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1436);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.§6R§();
                                                                                                                                                                                                                                             addr1426:
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             addr1426:
                                                                                                                                                                                                                                             addr1439:
                                                                                                                                                                                                                                             addr1421:
                                                                                                                                                                                                                                             addr1431:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1252:
                                                                                                                                                                                                                                       if(_loc22_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1406:
                                                                                                                                                                                                                                       if(!(_loc22_ || this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§1!!§.§1!S§);
                                                                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().§!!Q§();
                                                                                                                                                                                                                                             §§goto(addr1406);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1444);
                                                                                                                                                                                                                                          addr1418:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1390:
                                                                                                                                                                                                                                       if(_loc22_ || eventIndex)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§!!1§();
                                                                                                                                                                                                                                          §§goto(addr1375);
                                                                                                                                                                                                                                          addr1387:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1436);
                                                                                                                                                                                                                                       addr1264:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1158);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1252);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1175);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1172);
                                                                                                                                                                                                                           addr1165:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1387);
                                                                                                                                                                                                                        addr1194:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1244);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1267:
                                                                                                                                                                                                               if(!(_loc22_ || this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1301:
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1303:
                                                                                                                                                                                                                     §§push(this.§5!M§);
                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1280:
                                                                                                                                                                                                                        §§push("WaitingForReply");
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                           if(_loc22_ || component)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(true);
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                 addr1296:
                                                                                                                                                                                                                                 §§goto(addr1267);
                                                                                                                                                                                                                                 addr1296:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1322:
                                                                                                                                                                                                                              §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                              addr1324:
                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && component))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc23_ && component))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1324);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc22_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1426);
                                                                                                                                                                                                                                       addr1345:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1439);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 this.§#T§();
                                                                                                                                                                                                                                 §§goto(addr1365);
                                                                                                                                                                                                                                 addr1372:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc23_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1321:
                                                                                                                                                                                                                                 §§goto(addr1322);
                                                                                                                                                                                                                                 §§push(this.§5!M§.getItemByName("AvatarSharing"));
                                                                                                                                                                                                                                 §§push(false);
                                                                                                                                                                                                                                 addr1357:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1390);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1321);
                                                                                                                                                                                                                     addr1303:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1421);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§7t§();
                                                                                                                                                                                                               addr1274:
                                                                                                                                                                                                               §§goto(addr1264);
                                                                                                                                                                                                               addr1274:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1249);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1360);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1296);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1469);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1243);
                                                                                                                                                                                             case 1:
                                                                                                                                                                                                §§goto(addr1418);
                                                                                                                                                                                             case 0:
                                                                                                                                                                                                §§goto(addr1460);
                                                                                                                                                                                             case 2:
                                                                                                                                                                                                §§goto(addr1372);
                                                                                                                                                                                             case 3:
                                                                                                                                                                                                §§goto(addr1322);
                                                                                                                                                                                             case 4:
                                                                                                                                                                                                §§goto(addr1301);
                                                                                                                                                                                             default:
                                                                                                                                                                                                break;
                                                                                                                                                                                             case 6:
                                                                                                                                                                                                this.§"p§ = false;
                                                                                                                                                                                                §§goto(addr1977);
                                                                                                                                                                                                addr1982:
                                                                                                                                                                                             case 7:
                                                                                                                                                                                                addr1908:
                                                                                                                                                                                                if(_loc22_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§"p§ = true;
                                                                                                                                                                                                      §§goto(addr1903);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1930);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1925);
                                                                                                                                                                                             case 8:
                                                                                                                                                                                                addr1822:
                                                                                                                                                                                                if(_loc22_ || component)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§1v§.removeEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
                                                                                                                                                                                                   addr1810:
                                                                                                                                                                                                   if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1817);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1996);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1972);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1960);
                                                                                                                                                                                             case 9:
                                                                                                                                                                                                addr1768:
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc22_ || eventIndex)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc23_ && component))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§5!M§);
                                                                                                                                                                                                            if(_loc22_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc23_ && eventName))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("ButtonEasterEgg2");
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc22_ || component)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(false);
                                                                                                                                                                                                                              if(_loc22_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && eventName))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                                    addr1761:
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1704:
                                                                                                                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-2");
                                                                                                                                                                                                                                          addr1697:
                                                                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                addr1686:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1810);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1985);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1960);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1854);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1960);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1967);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1886);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1966);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1885);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1965);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1884);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1964);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1883);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1993);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1957);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1908);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1886);
                                                                                                                                                                                             case 10:
                                                                                                                                                                                                addr1663:
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc23_ && eventName))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc22_ || eventIndex)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§6R§();
                                                                                                                                                                                                               addr1637:
                                                                                                                                                                                                               if(_loc22_ || eventName)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc22_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1630:
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1799);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1895);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1967);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1822);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1697);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1810);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2005);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1789);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1761);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1704);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1686);
                                                                                                                                                                                             case 11:
                                                                                                                                                                                                addr1616:
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc22_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1580:
                                                                                                                                                                                                         this.§6R§();
                                                                                                                                                                                                         if(_loc22_ || eventName)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc22_ || component)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc23_ && eventName))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1580);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1768);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1637);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1580);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1867);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1832);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1799);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1663);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1630);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1616);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1982);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1933);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1837);
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr2381:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr2284:
                                                                                                                                                                                       §§goto(addr2381);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2338:
                                                                                                                                                                                    §§push(10);
                                                                                                                                                                                    if(_loc22_ || component)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2356:
                                                                                                                                                                                       §§goto(addr2381);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2373:
                                                                                                                                                                                    §§goto(addr2381);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push("RANDOMIZE_AVATAR");
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc22_ || eventIndex)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                       if(_loc22_ || eventIndex)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc22_ || eventName)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr2381);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2113:
                                                                                                                                                                                                §§goto(addr2381);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr2105:
                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                             if(_loc22_ || eventName)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2113);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2381);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push("SHARE_WALL_AVATAR");
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc23_ && eventIndex))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                if(_loc22_ || component)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr2105);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr2141:
                                                                                                                                                                                                      §§push(3);
                                                                                                                                                                                                      if(_loc22_ || component)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2381);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push("CANCEL_SHARE");
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr2133:
                                                                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc22_ || eventIndex)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2141);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr2370:
                                                                                                                                                                                                               §§push(11);
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr2373);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2381);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push("SHARE_AVATAR");
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(4);
                                                                                                                                                                                                                           if(_loc22_ || eventName)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr2381);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr2253:
                                                                                                                                                                                                                           §§goto(addr2381);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr2245:
                                                                                                                                                                                                                        §§push(7);
                                                                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr2253);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2141);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push("BUY_THESE");
                                                                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2177:
                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr2180:
                                                                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(5);
                                                                                                                                                                                                                                    if(_loc22_ || eventName)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr2381);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2253);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr2297:
                                                                                                                                                                                                                                 §§push(9);
                                                                                                                                                                                                                                 if(_loc22_ || eventIndex)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr2141);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2373);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push("SET_AVATAR");
                                                                                                                                                                                                                              if(_loc22_ || component)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc22_ || eventIndex)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(6);
                                                                                                                                                                                                                                             if(_loc22_ || eventName)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr2381);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2253);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2338);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push("SET_PROFILE");
                                                                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc22_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr2234:
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             if(!(_loc23_ && eventIndex))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2245);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2370);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push("CLOSE_AVATAR");
                                                                                                                                                                                                                                                if(!(_loc23_ && component))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr2291:
                                                                                                                                                                                                                                                   if(_loc22_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2265:
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      if(_loc22_ || component)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr2362:
                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc22_ || eventIndex)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr2370);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr2376:
                                                                                                                                                                                                                                                         §§push(12);
                                                                                                                                                                                                                                                         if(_loc22_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr2105);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2381);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr2376);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2381);
                                                                                                                                                                                                                                                      §§push(12);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2294:
                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr2297);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2338);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push("SCROLL_RIGHT");
                                                                                                                                                                                                                                                      if(_loc22_ || component)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr2314:
                                                                                                                                                                                                                                                         if(_loc22_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr2322:
                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                            if(!(_loc23_ && eventName))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr2330:
                                                                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc22_ || eventName)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr2338);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2370);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push("SCROLL_LEFT");
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr2361:
                                                                                                                                                                                                                                                               §§goto(addr2362);
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2362);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2361);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2322);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2362);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2265);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2265);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2361);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(8);
                                                                                                                                                                                                                                          if(_loc22_ || component)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2284);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2356);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2370);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push("EASTER_EGG_2");
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2288:
                                                                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr2291);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2314);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2322);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2361);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2291);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2265);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2361);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2180);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2177);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2265);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2314);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2234);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2294);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2361);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2291);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2330);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2291);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2322);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2133);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2288);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2105);
                                                                                                                                                                     addr1119:
                                                                                                                                                                     addr1454:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1303);
                                                                                                                                                                  addr1110:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1111);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2382);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr963);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1274);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1119);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1007);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2382);
                                                                                                                                          }
                                                                                                                                          §§goto(addr966);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1357);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1303);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1007);
                                                                                                                           }
                                                                                                                           §§goto(addr1280);
                                                                                                                        }
                                                                                                                        §§goto(addr1367);
                                                                                                                     }
                                                                                                                     §§goto(addr1296);
                                                                                                                  }
                                                                                                                  §§goto(addr2013);
                                                                                                               }
                                                                                                               §§goto(addr979);
                                                                                                            }
                                                                                                            §§goto(addr2013);
                                                                                                         }
                                                                                                         §§goto(addr1426);
                                                                                                         addr999:
                                                                                                      }
                                                                                                      §§goto(addr1158);
                                                                                                   }
                                                                                                   §§goto(addr1303);
                                                                                                }
                                                                                                §§goto(addr1454);
                                                                                             }
                                                                                             §§goto(addr1345);
                                                                                          }
                                                                                          §§goto(addr1165);
                                                                                       }
                                                                                       §§goto(addr1010);
                                                                                    }
                                                                                    §§goto(addr1110);
                                                                                 }
                                                                                 §§goto(addr1108);
                                                                              }
                                                                              §§goto(addr1010);
                                                                           }
                                                                           §§goto(addr885);
                                                                        }
                                                                        §§goto(addr1194);
                                                                     }
                                                                     §§goto(addr682);
                                                                  }
                                                                  §§goto(addr1444);
                                                               }
                                                               §§goto(addr2382);
                                                            }
                                                            §§goto(addr713);
                                                         }
                                                         §§goto(addr1426);
                                                      }
                                                      §§goto(addr1135);
                                                   }
                                                   §§goto(addr885);
                                                }
                                                §§goto(addr2382);
                                             }
                                             §§goto(addr911);
                                          }
                                          §§goto(addr957);
                                       }
                                       §§goto(addr979);
                                    }
                                    §§goto(addr1431);
                                 }
                                 §§goto(addr1274);
                              }
                              §§goto(addr1436);
                           }
                           §§goto(addr991);
                        }
                        §§goto(addr999);
                     }
                     §§goto(addr979);
                  }
                  §§goto(addr2013);
               }
               component2 = component as UIComponentRovio;
               if(!_loc23_)
               {
                  addr333:
                  addr339:
                  if(eventName.length > 1)
                  {
                     addr337:
                     addr336:
                     if(component2.mParentContainer is UIRepeaterTabRovio)
                     {
                        addr329:
                        addr330:
                        §§push(component2.mParentContainer);
                        if(!(_loc23_ && this))
                        {
                           if(((§§pop() as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_TABS")
                           {
                              addr313:
                              if(!(_loc23_ && this))
                              {
                                 addr289:
                                 if(_loc22_)
                                 {
                                    addr263:
                                    §§push((this.§5!M§ as PopupsUIView).§!!§(eventName));
                                    if(!_loc23_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc22_ || this)
                                       {
                                          tabIndex = §§pop();
                                          addr279:
                                          if(_loc22_ || this)
                                          {
                                             addr257:
                                             if(!_loc23_)
                                             {
                                                §§push(tabIndex);
                                                if(_loc22_ || eventIndex)
                                                {
                                                   if(§§pop() != -1)
                                                   {
                                                      addr252:
                                                      addr251:
                                                      if(_loc22_)
                                                      {
                                                         addr220:
                                                         addr239:
                                                         if(!_loc23_)
                                                         {
                                                            if(!(_loc23_ && eventIndex))
                                                            {
                                                               if(_loc22_ || this)
                                                               {
                                                                  §§push(eventName);
                                                                  if(!(_loc23_ && this))
                                                                  {
                                                                     §§push(§§pop().substr("CATEGORY".length));
                                                                  }
                                                                  if(!(_loc23_ && this))
                                                                  {
                                                                     categoryName = §§pop();
                                                                     addr189:
                                                                     if(_loc22_)
                                                                     {
                                                                        if(_loc22_)
                                                                        {
                                                                           if(_loc22_)
                                                                           {
                                                                              addr180:
                                                                              §§push(this.§5!M§);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§pop().setText(categoryName,"Textfield_CategoryTitle");
                                                                                 addr186:
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          addr142:
                                                                                          §§push(this.§5!M§);
                                                                                          if(!(_loc23_ && eventName))
                                                                                          {
                                                                                             §§push("Repeater_Items");
                                                                                             §§push("Repeater_Items_Tab_");
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() + tabIndex);
                                                                                             }
                                                                                             §§pop().§31§(§§pop(),§§pop());
                                                                                             addr160:
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                if(_loc22_ || eventIndex)
                                                                                                {
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr142);
                                                                                                            }
                                                                                                            addr341:
                                                                                                            _loc20_ = 0;
                                                                                                            _loc21_ = (component2.mParentContainer as UIRepeaterTabRovio).§4!W§;
                                                                                                            addr388:
                                                                                                            for each(repeaterButton in _loc21_)
                                                                                                            {
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  (repeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
                                                                                                                  addr387:
                                                                                                               }
                                                                                                               if(!(_loc23_ && component))
                                                                                                               {
                                                                                                                  if(_loc22_ || eventName)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr378);
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               addr385:
                                                                                                               §§goto(addr385);
                                                                                                            }
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               (component as AvatarEditorTabRepeaterButton).§6N§();
                                                                                                               addr561:
                                                                                                               if(_loc22_ || this)
                                                                                                               {
                                                                                                                  this.§6R§();
                                                                                                                  addr543:
                                                                                                                  if(_loc23_ && eventIndex)
                                                                                                                  {
                                                                                                                     §§goto(addr561);
                                                                                                                  }
                                                                                                                  §§goto(addr571);
                                                                                                                  addr553:
                                                                                                               }
                                                                                                               addr570:
                                                                                                               §§goto(addr570);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr481:
                                                                                                               if(_loc22_ || this)
                                                                                                               {
                                                                                                                  this.§ m§(eventName.substring("REMOVE_".length));
                                                                                                                  addr425:
                                                                                                                  if(_loc22_ || eventIndex)
                                                                                                                  {
                                                                                                                     if(!(_loc23_ && component))
                                                                                                                     {
                                                                                                                        if(!(_loc23_ && eventIndex))
                                                                                                                        {
                                                                                                                           if(!(_loc23_ && eventName))
                                                                                                                           {
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 addr403:
                                                                                                                                 this.§!!1§();
                                                                                                                                 addr416:
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr403);
                                                                                                                                                }
                                                                                                                                                §§goto(addr571);
                                                                                                                                             }
                                                                                                                                             §§goto(addr416);
                                                                                                                                          }
                                                                                                                                          §§goto(addr403);
                                                                                                                                       }
                                                                                                                                       addr503:
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             this.§+!b§(eventName);
                                                                                                                                             §§goto(addr403);
                                                                                                                                             addr495:
                                                                                                                                          }
                                                                                                                                          addr537:
                                                                                                                                       }
                                                                                                                                       addr516:
                                                                                                                                       index = eventName.indexOf("REMOVE_");
                                                                                                                                       addr502:
                                                                                                                                       addr520:
                                                                                                                                       §§push(index);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr501:
                                                                                                                                          if(§§pop() == -1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr502);
                                                                                                                                          }
                                                                                                                                          §§push(index);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc22_ || component)
                                                                                                                                             {
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   addr472:
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc23_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr481);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr520);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr503);
                                                                                                                                                }
                                                                                                                                                §§goto(addr403);
                                                                                                                                             }
                                                                                                                                             §§goto(addr501);
                                                                                                                                          }
                                                                                                                                          §§goto(addr503);
                                                                                                                                       }
                                                                                                                                       §§goto(addr516);
                                                                                                                                       addr517:
                                                                                                                                       addr510:
                                                                                                                                    }
                                                                                                                                    §§goto(addr481);
                                                                                                                                 }
                                                                                                                                 §§goto(addr425);
                                                                                                                              }
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                           §§goto(addr517);
                                                                                                                        }
                                                                                                                        §§goto(addr510);
                                                                                                                     }
                                                                                                                     §§goto(addr495);
                                                                                                                  }
                                                                                                                  §§goto(addr472);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr543);
                                                                                                         }
                                                                                                         §§goto(addr189);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr186);
                                                                                                }
                                                                                                §§goto(addr160);
                                                                                             }
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          §§goto(addr180);
                                                                                       }
                                                                                       §§goto(addr257);
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                     addr217:
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   §§goto(addr543);
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr339);
                                          }
                                          §§goto(addr336);
                                       }
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr329);
                              }
                              §§goto(addr330);
                           }
                           if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_ITEMS")
                           {
                              §§goto(addr537);
                           }
                           §§goto(addr571);
                        }
                        §§goto(addr337);
                     }
                  }
                  §§goto(addr571);
               }
               §§goto(addr337);
            }
         }
         §§goto(addr113);
      }
      
      private function §7t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               §+!N§.§5U§();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     AngryBirdsFP11.§5V§.§"§();
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
                           continue loop3;
                           addr79:
                           loop6:
                           while(_loc1_ || _loc2_)
                           {
                              while(true)
                              {
                                 ExternalInterfaceHandler.§>!2§("askForPublishStreamPermission");
                                 addr50:
                                 while(!(_loc2_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                    if(_loc1_)
                                    {
                                       if(_loc2_ && this)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr43);
                                       continue loop6;
                                    }
                                 }
                                 continue loop3;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function permissionRequestComplete(success:String) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || imageSize)
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
         if(!(_loc12_ && success))
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
                        while(true)
                        {
                           loop5:
                           for(; _loc11_ || success; while(!(_loc12_ && success))
                           {
                              continue loop3;
                           })
                           {
                              §§push(this.§5!M§);
                              while(true)
                              {
                                 §§push("WaitingForReply");
                                 addr213:
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    addr214:
                                    while(true)
                                    {
                                       §§push(false);
                                       addr215:
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          continue loop5;
                                       }
                                    }
                                 }
                                 loop22:
                                 for(; _loc11_ || bigAvatar; while(true)
                                 {
                                    §§push(this.§5!M§);
                                    if(_loc12_ && bigAvatar)
                                    {
                                       break;
                                    }
                                    §§push("ShareAvatarWindow");
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(_loc11_)
                                       {
                                          §§goto(addr79);
                                       }
                                       else
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr117);
                                 })
                                 {
                                    §§push("AvatarSharing");
                                    while(_loc11_)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       while(!(_loc12_ && success))
                                       {
                                          §§push(true);
                                          while(_loc11_)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             loop26:
                                             while(true)
                                             {
                                                if(_loc11_ || bigAvatar)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         while(!_loc12_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               addr102:
                                                            }
                                                            else
                                                            {
                                                               while(!(_loc12_ && this))
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr161:
                                                                     while(!_loc12_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  while(_loc11_)
                                                                  {
                                                                     while(!_loc12_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               addr176:
                                                               addr195:
                                                            }
                                                         }
                                                         continue;
                                                         addr98:
                                                      }
                                                      else
                                                      {
                                                         addr158:
                                                      }
                                                      while(true)
                                                      {
                                                         break loop26;
                                                      }
                                                   }
                                                   break;
                                                }
                                                addr143:
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§5!M§);
                                                      continue loop22;
                                                   }
                                                   §§goto(addr188);
                                                   continue loop26;
                                                }
                                                continue loop3;
                                             }
                                             while(_loc11_)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr143);
                                                }
                                             }
                                             §§goto(addr161);
                                             §§push(true);
                                             if(_loc12_ && bigAvatar)
                                             {
                                                continue;
                                             }
                                             §§pop().setVisibility(§§pop());
                                             for(; !_loc12_; if(!_loc11_)
                                             {
                                                continue;
                                             },if(false)
                                             {
                                                continue loop22;
                                             },bigAvatar = new AvatarRenderer(),if(!_loc12_)
                                             {
                                                while(true)
                                                {
                                                   bigAvatar.§+!<§();
                                                   addr304:
                                                   while(_loc11_)
                                                   {
                                                   }
                                                }
                                             },loop33:
                                             while(true)
                                             {
                                                loop34:
                                                while(true)
                                                {
                                                   §§push(173);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   imageSize = §§pop();
                                                   while(_loc11_)
                                                   {
                                                      if(_loc11_ || success)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop34;
                                                            }
                                                            continue loop34;
                                                         }
                                                         continue loop33;
                                                      }
                                                   }
                                                   §§goto(addr304);
                                                }
                                                bmd = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,imageSize);
                                                if(_loc12_)
                                                {
                                                }
                                                mat = new Matrix();
                                                if(!(_loc12_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(imageSize / 100);
                                                      if(_loc11_ || imageSize)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(_loc11_ || imageSize)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      scale = §§pop();
                                                      addr357:
                                                      if(!(_loc11_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(false)
                                                      {
                                                         loop39:
                                                         while(true)
                                                         {
                                                            mat.scale(scale,scale);
                                                            while(!(_loc11_ || success))
                                                            {
                                                            }
                                                            if(_loc11_ || success)
                                                            {
                                                               addr350:
                                                               if(!(_loc11_ || success))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            addr375:
                                                            while(true)
                                                            {
                                                               continue loop39;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr375);
                                                            §§goto(addr350);
                                                         }
                                                         addr398:
                                                      }
                                                      window = this.§5!M§.getItemByName("ShareAvatarWindow");
                                                      if(_loc11_)
                                                      {
                                                         i = int(window.mClip.numChildren - 1);
                                                         addr435:
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr435);
                                                         }
                                                      }
                                                      addr418:
                                                      if(i > 0)
                                                      {
                                                         addr422:
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr418);
                                                               }
                                                               displayObject = window.mClip.getChildAt(i);
                                                               if(_loc11_ || imageSize)
                                                               {
                                                               }
                                                               addr515:
                                                               if(displayObject is Bitmap)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        displayObject.parent.removeChild(displayObject);
                                                                        addr489:
                                                                        if(_loc11_ || imageSize)
                                                                        {
                                                                           addr473:
                                                                           if(!(_loc12_ && bigAvatar))
                                                                           {
                                                                              addr450:
                                                                              §§push(i);
                                                                              if(_loc11_ || bigAvatar)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr462:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 i = §§pop();
                                                                                 if(_loc11_ || bigAvatar)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr473);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr473);
                                                                              }
                                                                              §§goto(addr462);
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        addr513:
                                                                        §§goto(addr513);
                                                                     }
                                                                     §§goto(addr515);
                                                                  }
                                                                  §§goto(addr489);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                         addr522:
                                                         postBitmap = new Bitmap(bmd,"auto",true);
                                                         if(!_loc12_)
                                                         {
                                                            postBitmap.x = 110;
                                                            addr593:
                                                         }
                                                         postBitmap.y = 52;
                                                         addr550:
                                                         addr591:
                                                         addr586:
                                                         if(!(_loc12_ && success))
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  window.mClip.addChildAt(postBitmap,1);
                                                                  if(_loc11_ || imageSize)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr550);
                                                                        }
                                                                        addr603:
                                                                        return;
                                                                     }
                                                                     §§goto(addr591);
                                                                  }
                                                                  §§goto(addr550);
                                                               }
                                                               §§goto(addr593);
                                                            }
                                                            §§goto(addr586);
                                                         }
                                                         addr583:
                                                         §§goto(addr583);
                                                         addr521:
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         §§goto(addr521);
                                                      }
                                                      §§goto(addr522);
                                                   }
                                                }
                                                §§goto(addr398);
                                             })
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr98);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr213);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      private function §#T§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || imageSize)
         {
         }
         if(!(_loc10_ && bigAvatar))
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
                           while(!_loc10_)
                           {
                              loop6:
                              while(!_loc10_)
                              {
                                 while(_loc9_)
                                 {
                                    continue loop2;
                                    loop19:
                                    for(; _loc9_ || imageSize; loop21:
                                    for(; _loc9_ || bigAvatar; for(; _loc9_ || bigAvatar; if(!_loc9_)
                                    {
                                       continue;
                                    },if(false)
                                    {
                                       §§goto(addr39);
                                    }
                                    else
                                    {
                                       var bigAvatar:AvatarRenderer = new AvatarRenderer();
                                       if(!(_loc10_ && bigAvatar))
                                       {
                                          loop24:
                                          while(true)
                                          {
                                             addr213:
                                             while(true)
                                             {
                                                bigAvatar.§+!<§();
                                                continue loop24;
                                             }
                                          }
                                       }
                                       while(false)
                                       {
                                          §§goto(addr213);
                                       }
                                       §§push(500);
                                       if(_loc9_ || bmd)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var imageSize:* = §§pop();
                                       if(_loc10_ && bigAvatar)
                                       {
                                       }
                                       var bmd:BitmapData = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,imageSize);
                                       if(_loc10_ && this)
                                       {
                                       }
                                       var mat:Matrix = new Matrix();
                                       if(_loc10_)
                                       {
                                       }
                                       §§push(imageSize / 100);
                                       if(!(_loc10_ && bmd))
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc10_ && imageSize))
                                          {
                                             addr299:
                                             §§push(Number(§§pop()));
                                          }
                                          var scale:* = §§pop();
                                          if(!(_loc10_ && this))
                                          {
                                             loop28:
                                             while(true)
                                             {
                                                addr320:
                                                while(true)
                                                {
                                                   mat.scale(scale,scale);
                                                   continue loop28;
                                                }
                                             }
                                          }
                                          while(false)
                                          {
                                             §§goto(addr320);
                                          }
                                          var watermarkCls:Class = AssetCache.§-9§("WatermarkPlayOnFacebook");
                                          if(_loc10_ && bigAvatar)
                                          {
                                          }
                                          var watermark:MovieClip = new watermarkCls();
                                          if(_loc9_)
                                          {
                                             while(true)
                                             {
                                                watermark.x = imageSize - watermark.width;
                                                addr410:
                                                loop33:
                                                while(true)
                                                {
                                                   addr402:
                                                   while(true)
                                                   {
                                                      watermark.y = imageSize - watermark.height;
                                                      addr397:
                                                      while(_loc9_)
                                                      {
                                                      }
                                                      continue loop33;
                                                   }
                                                }
                                             }
                                             addr412:
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   loop38:
                                                   while(true)
                                                   {
                                                      bmd.draw(watermark,mat,null,null,null,true);
                                                      while(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop38;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr402);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   continue;
                                                   addr370:
                                                }
                                                §§goto(addr412);
                                                §§goto(addr410);
                                             }
                                          }
                                       }
                                       §§goto(addr299);
                                    })
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr121);
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(this.§5!M§);
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          addr44:
                                          §§push("WaitingForReply");
                                          if(_loc9_ || bigAvatar)
                                          {
                                             if(!(_loc10_ && bmd))
                                             {
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(_loc9_ || bmd)
                                                {
                                                   if(_loc9_ || bigAvatar)
                                                   {
                                                      §§push(true);
                                                      if(_loc9_)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         continue loop21;
                                                      }
                                                      while(!_loc10_)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         break loop21;
                                                      }
                                                      addr107:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                      }
                                                      addr145:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         addr121:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr123:
                                                               if(!(_loc10_ && bmd))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr106:
                                                }
                                                §§goto(addr107);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr144:
                                             }
                                             §§goto(addr145);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr44);
                                             }
                                             addr105:
                                          }
                                          §§goto(addr106);
                                       }
                                       while(!_loc10_)
                                       {
                                          §§goto(addr105);
                                          §§push("ShareAvatarWindow");
                                       }
                                       while(true)
                                       {
                                          §§goto(addr144);
                                       }
                                    })
                                    {
                                       while(true)
                                       {
                                          continue loop19;
                                       }
                                    }
                                 }
                                 continue loop4;
                                 while(_loc9_ || imageSize)
                                 {
                                    §§goto(addr143);
                                    §§push(this.§5!M§);
                                    §§goto(addr123);
                                 }
                              }
                              continue loop3;
                              if(_loc10_ && this)
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr102);
                              §§push(this.§5!M§);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               super.deActivate();
               addr124:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §@3§(data:*) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && data))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc4_)
                  {
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var str:String = data.toString();
                  if(_loc4_)
                  {
                  }
                  while(true)
                  {
                     this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
                     while(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §`m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         do
         {
            this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
            while(!_loc1_)
            {
            }
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            super.close();
            addr90:
            while(true)
            {
               continue loop0;
            }
         }
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var avatar:Avatar = null;
         if(!(_loc5_ && savedAnim))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr59:
                  if(_loc5_ && savedAnim)
                  {
                     continue;
                  }
                  if(_loc6_ || savedAnim)
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     addr43:
                     if(_loc6_ || useFadeEffect)
                     {
                        if(false)
                        {
                           loop6:
                           while(true)
                           {
                              §+!N§.§'X§();
                              addr57:
                              while(!_loc5_)
                              {
                                 §§goto(addr59);
                              }
                              addr69:
                              while(_loc6_ || useFadeEffect)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§goto(addr69);
                              }
                           }
                           continue loop0;
                        }
                        var savedAnim:§6#§ = this.§5!M§.getItemByName("AvatarSavedAnimation") as §6#§;
                        if(_loc6_)
                        {
                           savedAnim.setVisibility(false);
                           addr255:
                           if(!_loc5_)
                           {
                              mClip.x = (mClip.stage.stageWidth - 750) / 2;
                              addr244:
                              if(!(_loc5_ && this))
                              {
                                 if(!(_loc5_ && savedAnim))
                                 {
                                    mClip.y = (mClip.stage.stageHeight - 525) / 2;
                                    addr197:
                                    if(_loc6_ || savedAnim)
                                    {
                                       addr184:
                                       if(this.§ t§)
                                       {
                                          this.§ t§ = false;
                                          addr180:
                                          if(_loc6_ || savedAnim)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr140:
                                                this.§`e§();
                                                if(_loc6_ || i)
                                                {
                                                   if(!(_loc5_ && i))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || savedAnim)
                                                         {
                                                            if(_loc6_ || useFadeEffect)
                                                            {
                                                               if(!(_loc5_ && savedAnim))
                                                               {
                                                                  addr138:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr140);
                                                                  }
                                                                  addr258:
                                                                  var i:* = Number(0);
                                                                  addr335:
                                                                  if(i < sAvatars.length)
                                                                  {
                                                                     if(!(_loc5_ && i))
                                                                     {
                                                                        if(_loc6_ || useFadeEffect)
                                                                        {
                                                                           avatar = sAvatars[i];
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              avatar.hide();
                                                                              addr325:
                                                                              if(!(_loc5_ && useFadeEffect))
                                                                              {
                                                                                 addr318:
                                                                                 addr320:
                                                                                 §§push(i);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr305:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    i = §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!(_loc5_ && savedAnim))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              addr334:
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                        addr375:
                                                                        if(!(_loc6_ || useFadeEffect))
                                                                        {
                                                                           addr369:
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr375);
                                                                                 }
                                                                                 addr441:
                                                                                 §§push(sAvatarContainer);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§pop().§!!=§(STARTUP_CHARACTER,STARTUP_CHARACTER_SID,STARTUP_CHARACTER_CATEGORY,sAvatars);
                                                                                    addr401:
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    addr434:
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 addr437:
                                                                                 if(§§pop().§4&§ == null)
                                                                                 {
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr376);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        addr376:
                                                                        §§push(this.§-M§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr383:
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr391:
                                                                              if(!(_loc5_ && i))
                                                                              {
                                                                                 this.§]e§();
                                                                                 §§goto(addr369);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           addr440:
                                                                           §§goto(addr441);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr437);
                                                                     §§push(sAvatarContainer);
                                                                     addr350:
                                                                  }
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr350);
                                                                     }
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                addr161:
                                                §§goto(addr161);
                                             }
                                             §§goto(addr184);
                                          }
                                          addr181:
                                          §§goto(addr181);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr244);
                                 }
                              }
                              §§goto(addr255);
                           }
                           addr257:
                           §§goto(addr257);
                        }
                        §§goto(addr138);
                     }
                     while(true)
                     {
                        continue loop0;
                        §§goto(addr43);
                     }
                  }
                  §§goto(addr57);
               }
            }
         }
         §§goto(addr95);
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
