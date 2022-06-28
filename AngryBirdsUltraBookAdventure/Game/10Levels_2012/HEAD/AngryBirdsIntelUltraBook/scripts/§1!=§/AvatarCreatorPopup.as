package §1!=§
{
   import § $§.§-!Q§;
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIRepeaterButtonRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UIRepeaterTabRovio;
   import §'!%§.§#!4§;
   import §'!%§.CustomAvatarCache;
   import §'N§.§0d§;
   import §'N§.FacebookImageUploader;
   import §'N§.Log;
   import §+R§.§3!1§;
   import §+R§.ProfilePicture;
   import §,!#§.ExternalInterfaceHandler;
   import §03§.§-s§;
   import §03§.Avatar;
   import §03§.AvatarEditorTabRepeaterButton;
   import §6!'§.PopupsUIView;
   import §8T§.FacebookUserProgress;
   import §9!!§.§85§;
   import §9v§.§4!c§;
   import §9v§.StatePopupManager;
   import §;0§.§,!P§;
   import §;0§.Item;
   import §;0§.§`!6§;
   import §>!"§.Popup;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §?!f§.§]!f§;
   import §@!H§.§-!H§;
   import §[c§.§5!?§;
   import §[c§.AvatarRenderer;
   import §[i§.§&'§;
   import §`!0§.ServerIdParser;
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
      
      private static var sAvatorCreatorPopupBin:Class = §5D§;
      
      public static var sAccessToken:String;
      
      private static var sAchievementItems:Array = [{
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
      
      public static const STATE_NAME:String = "CreatorState";
      
      public static const SPOTS:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const STARTUP_CHARACTER:String = "RedBird";
      
      public static const STARTUP_CHARACTER_HAT:String = "NoHat";
      
      public static const STARTUP_CHARACTER_SID:String = "10001";
      
      public static const STARTUP_CHARACTER_CATEGORY:String = "CategoryBirds";
      
      public static var sItemsAvailable:Array;
      
      private static var sAvatarContainer:§-s§;
      
      public static var sServerRoot:String;
      
      private static var sPreviousState:String;
      
      public static var sAllAvatarItems:Array;
      
      public static var sAllItemsLoader:URLLoader;
      
      public static var sAvatars:Array;
      
      private static var sFirstTimeInit:Boolean = true;
       
      
      private var §%!-§:StatePopupManager;
      
      private var §<!L§:Item = null;
      
      private var §5!Z§:Boolean = false;
      
      private var §?!M§:String;
      
      private var §9;§:Array;
      
      private var §+!g§:Array;
      
      private var §6M§:Boolean = false;
      
      private var §6H§:Boolean = false;
      
      private var §^,§:§-!H§;
      
      private var §^!c§:AvatarRenderer;
      
      private var §7!@§:String;
      
      private var §7o§:String;
      
      public function AvatarCreatorPopup(currentUIView:§-!H§, statePopupManager:StatePopupManager, activeTabName:String = null)
      {
         var character:§`!6§ = null;
         this.§9;§ = [];
         this.§+!g§ = [];
         this.§%!-§ = statePopupManager;
         super(§0d§.§@A§(sAvatorCreatorPopupBin),currentUIView);
         if(activeTabName)
         {
            this.§7!@§ = activeTabName;
         }
         this.§%!-§.addEventListener(§&'§.UI_INTERACTION,this.onUiInteraction);
         this.§^,§ = currentUIView;
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked("1000-2"))
         {
            this.§^,§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§^,§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         sServerRoot = AngryBirdsFP11.SERVER_ROOT;
         var avatarCreator:§5!?§ = new §5!?§();
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §5!?§.§5+§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         if(sAvatarContainer == null)
         {
            sAvatarContainer = new §-s§();
         }
         if(sAllItemsLoader == null)
         {
            this.§;!C§();
         }
      }
      
      public static function §for§(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §2!g§(itemId:String) : int
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.price;
            }
         }
         return 0;
      }
      
      public static function § !G§(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.sale;
            }
         }
         return false;
      }
      
      public static function §>z§(itemId:String) : Boolean
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId && !itemObject.available)
            {
               return itemObject.limited;
            }
         }
         return false;
      }
      
      public static function §2!4§(itemId:String) : int
      {
         var itemObject:Object = null;
         for each(itemObject in sItemsAvailable)
         {
            if(itemObject.itemId == itemId)
            {
               return itemObject.starPrice;
            }
         }
         return 0;
      }
      
      public static function §]_§(oldStarCount:int, newStarCount:int) : String
      {
         var achObject:Object = null;
         for each(achObject in sAchievementItems)
         {
            if(newStarCount >= achObject.s && oldStarCount < achObject.s)
            {
               return achObject.id;
            }
         }
         return "";
      }
      
      private function §;!C§() : void
      {
         this.§^,§.getItemByName("WaitingForReply").setVisibility(true);
         var urlReq:URLRequest = §-!Q§.§<!%§(sServerRoot + "/getavatarparts");
         urlReq.method = URLRequestMethod.POST;
         sAllItemsLoader = new URLLoader();
         sAllItemsLoader.addEventListener(Event.COMPLETE,this.onComplete);
         sAllItemsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
         sAllItemsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!K§);
         sAllItemsLoader.load(urlReq);
      }
      
      protected function §6!K§(event:SecurityErrorEvent) : void
      {
         §4!c§.§8B§();
         sAllItemsLoader = null;
      }
      
      private function §`!W§(e:IOErrorEvent) : void
      {
         §4!c§.§8B§();
         sAllItemsLoader = null;
      }
      
      private function onComplete(e:Event) : void
      {
         sAllAvatarItems = §]!f§.§ !5§(e.currentTarget.data);
         if(!this.§5!Z§)
         {
            this.§6H§ = true;
            return;
         }
         this.§&!a§();
         this.§-E§();
      }
      
      private function §&!a§() : void
      {
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         var list:Array = [];
         if(this.§^,§)
         {
            this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(item in sAllAvatarItems)
         {
            this.§[!Y§(item,AvatarCreatorPopup.sAchievementItems);
            clientItem = ServerIdParser.§5^§(item.id);
            if(clientItem)
            {
               parseObject = {
                  "itemId":clientItem.§^!,§,
                  "price":item.p,
                  "available":item.a,
                  "starPrice":item.star,
                  "limited":item.l,
                  "sale":item.s
               };
               list.push(parseObject);
               trace(parseObject.itemId);
            }
            item.a;
            item.id;
            item.p;
         }
         sItemsAvailable = list;
         items = this.§^,§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         items.§>!0§(null,AvatarEditorTabRepeaterButton);
         this.§^,§.§5n§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §[!Y§(item:Object, achievements:Array) : void
      {
         var achiev:Object = null;
         for each(achiev in achievements)
         {
            if(item.id == achiev.id)
            {
               item.p = achiev.p;
               item.star = achiev.star;
            }
         }
      }
      
      private function §^C§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
      {
         if(sAvatarContainer)
         {
            if(sAvatarContainer.parent)
            {
               if(sAvatarContainer.parent.contains(sAvatarContainer))
               {
                  sAvatarContainer.parent.removeChild(sAvatarContainer);
               }
            }
         }
         displayObjectContainer.addChild(sAvatarContainer);
         sAvatarContainer.scaleX = sAvatarContainer.scaleY = scale;
         sAvatarContainer.x = containerX;
         sAvatarContainer.y = containerY;
      }
      
      private function §-E§() : void
      {
         var character:§`!6§ = null;
         var avatarHolder:§+,§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§+,§ = null;
         var char:§`!6§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         this.§5!Z§ = true;
         var tabs:UIRepeaterRovio = this.§^,§.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         tabs.§>!0§(null,AvatarEditorTabRepeaterButton);
         if(sItemsAvailable == null)
         {
            return;
         }
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §5!?§.§5+§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         if(avatarString == null || avatarString == "")
         {
            this.§6M§ = true;
         }
         var profile:§3!1§ = new §3!1§(userId,false,§3!1§.SQUARE);
         profile.x = 13;
         profile.y = 9;
         this.§^,§.getItemByName("SetFacebookProfileButton").mClip.addChild(profile);
         if(sFirstTimeInit)
         {
            avatarHolder = this.§^,§.getItemByName("AvatarHolderClip") as §+,§;
            this.§^C§(avatarHolder.mClip);
            if(avatarString != "" && avatarString != null)
            {
               oldAvatarsItems = ServerIdParser.§9!&§(avatarString);
               addedAvatar = sAvatarContainer.§!r§(oldAvatarsItems);
               §5!?§.§'d§ = addedAvatar;
            }
            else
            {
               this.§?!$§(STARTUP_CHARACTER);
               sAvatarContainer.§2!T§("backgrounds1");
            }
            (this.§^,§ as PopupsUIView).§!E§();
            sFirstTimeInit = false;
         }
         else
         {
            avatarHolder2 = this.§^,§.getItemByName("AvatarHolderClip") as §+,§;
            this.§^C§(avatarHolder2.mClip);
            char = sAvatarContainer.§ !g§.§9!b§();
            sAvatarContainer.§5E§(char.§^!,§,char.sId,char.§`5§,sAvatars,110,174);
            sAvatarContainer.§ !g§.§;O§();
            items = this.§^,§.getItemByName("Repeater_Items") as UIRepeaterRovio;
            items.§>!0§(null,AvatarEditorTabRepeaterButton);
            (this.§^,§ as PopupsUIView).§!E§();
         }
         if(this.§7!@§)
         {
            tabIndex = (this.§^,§ as PopupsUIView).§>Y§(this.§7!@§);
            if(tabIndex != -1)
            {
               categoryName = this.§7!@§.substr("CATEGORY".length);
               this.§^,§.setText(categoryName,"Textfield_CategoryTitle");
               this.§^,§.§5n§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
               if(§5!?§.§'%§().§if§.length > 0)
               {
                  tabs.§+'§("Repeater_Tabs_Tab_0").§!>§(§5!?§.§'%§().§if§[tabIndex].name as String);
               }
            }
            this.§7!@§ = null;
         }
         this.§8!g§();
      }
      
      private function onUiInteraction(e:§&'§) : void
      {
         this.uiInteractionHandler(e.eventIndex,e.eventName,e.component);
      }
      
      public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var component2:UIComponentRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         var repeaterButton:UIRepeaterButtonRovio = null;
         var index:Number = NaN;
         var overString:String = null;
         var overTabIndex:int = 0;
         var repeaterIndex:int = 0;
         var overRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var outString:String = null;
         var outTabIndex:int = 0;
         var outRepeaterButton:AvatarEditorTabRepeaterButton = null;
         var buyString:String = null;
         var items:Array = null;
         var avatarData:String = null;
         var item:String = null;
         if(component is UIComponentRovio)
         {
            component2 = component as UIComponentRovio;
            if(eventName.length > 1)
            {
               if(component2.mParentContainer is UIRepeaterTabRovio)
               {
                  if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     tabIndex = (this.§^,§ as PopupsUIView).§>Y§(eventName);
                     if(tabIndex != -1)
                     {
                        categoryName = eventName.substr("CATEGORY".length);
                        this.§^,§.setText(categoryName,"Textfield_CategoryTitle");
                        this.§^,§.§5n§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
                        for each(repeaterButton in (component2.mParentContainer as UIRepeaterTabRovio).§ !]§)
                        {
                           (repeaterButton as AvatarEditorTabRepeaterButton).§2!A§();
                        }
                        (component as AvatarEditorTabRepeaterButton).§!6§();
                        this.§%v§();
                     }
                  }
                  else if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     index = eventName.indexOf("REMOVE_");
                     if(index == -1)
                     {
                        this.§?!$§(eventName);
                     }
                     else if(index == 0)
                     {
                        this.§;J§(eventName.substring("REMOVE_".length));
                     }
                     this.§8!g§();
                  }
               }
            }
         }
         if(eventName.toUpperCase().indexOf("OVER") > -1)
         {
            overString = eventName.toUpperCase().substr(4);
            overTabIndex = (this.§^,§ as PopupsUIView).§>Y§(overString);
            repeaterIndex = 0;
            for each(overRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§ !]§)
            {
               if(repeaterIndex != overTabIndex)
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§2!A§();
               }
               else
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§!6§();
               }
               repeaterIndex++;
            }
         }
         if(eventName.toUpperCase().indexOf("OUT") > -1)
         {
            outString = eventName.toUpperCase().substr(3);
            outTabIndex = (this.§^,§ as PopupsUIView).§>Y§(outString);
            repeaterIndex = 0;
            for each(outRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§ !]§)
            {
               if(repeaterIndex == outTabIndex)
               {
                  (outRepeaterButton as AvatarEditorTabRepeaterButton).§2!A§();
               }
               repeaterIndex++;
            }
         }
         switch(eventName)
         {
            case "UNEQUIP_ALL":
               §5!?§.§'d§.§+!A§();
               this.§8!g§();
               this.§%v§();
               break;
            case "RANDOMIZE_AVATAR":
               §5!?§.§'d§.§%Z§();
               this.§8!g§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§7[§();
               break;
            case "CANCEL_SHARE":
               this.§^,§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§^,§.getItemByName("WaitingForReply").setVisibility(true);
               this.§&$§();
               break;
            case "BUY_THESE":
               buyString = ServerIdParser.§'! §(this.§9;§);
               trace(buyString);
               AngryBirdsFP11.§8R§.§!!'§();
               this.§+!g§ = [];
               items = buyString.split("-");
               for each(item in items)
               {
                  §85§.§+5§(item);
                  this.§+!g§.push(item);
               }
               ExternalInterfaceHandler.addCallback("purchaseComplete",this.§,!Y§);
               ExternalInterfaceHandler.§!!@§("placeOrder",buyString);
               break;
            case "SET_AVATAR":
               this.§6M§ = false;
               this.§^,§.getItemByName("WaitingForReply").setVisibility(true);
               avatarData = §5!?§.§'d§.§]U§();
               this.§<q§(avatarData);
               this.§%v§();
               break;
            case "SET_PROFILE":
               this.§6M§ = true;
               this.§^,§.getItemByName("WaitingForReply").setVisibility(true);
               this.§<q§("");
               this.§%v§();
               break;
            case "CLOSE_AVATAR":
               this.§%!-§.removeEventListener(§&'§.UI_INTERACTION,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§^,§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§%v§();
               break;
            case "SCROLL_LEFT":
               this.§%v§();
         }
      }
      
      private function §&$§() : void
      {
         §85§.§&6§();
         AngryBirdsFP11.§8R§.§!!'§();
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         ExternalInterfaceHandler.§!!@§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(success:String) : void
      {
         var bigAvatar:AvatarRenderer = null;
         var imageSize:int = 0;
         var bmd:BitmapData = null;
         var mat:Matrix = null;
         var scale:Number = NaN;
         var window:UIComponentRovio = null;
         var i:int = 0;
         var postBitmap:Bitmap = null;
         var displayObject:DisplayObject = null;
         §85§.§-!I§();
         ExternalInterfaceHandler.§<!<§("permissionRequestComplete",this.permissionRequestComplete);
         this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
         if(success == "true")
         {
            this.§^,§.getItemByName("AvatarSharing").setVisibility(true);
            this.§^,§.getItemByName("ShareAvatarWindow").setVisibility(true);
            bigAvatar = new AvatarRenderer();
            bigAvatar.§ +§();
            imageSize = 173;
            bmd = bigAvatar.render(§5!?§.§'d§.§]U§(),null,imageSize);
            mat = new Matrix();
            scale = imageSize / 100 / 2;
            mat.scale(scale,scale);
            window = this.§^,§.getItemByName("ShareAvatarWindow");
            for(i = window.mClip.numChildren - 1; i > 0; )
            {
               displayObject = window.mClip.getChildAt(i);
               if(displayObject is Bitmap)
               {
                  displayObject.parent.removeChild(displayObject);
               }
               i--;
            }
            postBitmap = new Bitmap(bmd,"auto",true);
            postBitmap.x = 110;
            postBitmap.y = 52;
            window.mClip.addChildAt(postBitmap,1);
         }
         else
         {
            trace("you got to give permission man!");
         }
      }
      
      private function §7[§() : void
      {
         this.§^,§.getItemByName("AvatarSharing").setVisibility(false);
         this.§^,§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§^,§.getItemByName("WaitingForReply").setVisibility(true);
         var bigAvatar:AvatarRenderer = new AvatarRenderer();
         bigAvatar.§ +§();
         var bmd:BitmapData = bigAvatar.render(§5!?§.§'d§.§]U§(),null,500);
         var mat:Matrix = new Matrix();
         mat.scale(2.5,2.5);
         var watermarkCls:Class = AssetCache.§,!k§("WatermarkPlayOnFacebook");
         var watermark:MovieClip = new watermarkCls();
         watermark.x = 500 - watermark.width;
         watermark.y = 500 - watermark.height;
         bmd.draw(watermark,mat,null,null,null,true);
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         FacebookImageUploader.§0q§(bmd,sAccessToken,userId,this.§!R§,this.§]p§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         ExternalInterfaceHandler.§<!<§("purchaseComplete",this.§,!Y§);
         this.§%!-§.removeEventListener(§&'§.UI_INTERACTION,this.onUiInteraction);
         preClose();
      }
      
      private function §!R§(data:*) : void
      {
         var str:String = data.toString();
         this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §]p§() : void
      {
         this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§5!Z§ = false;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var avatar:Avatar = null;
         super.open(useFadeEffect);
         §85§.§return§();
         var savedAnim:§+,§ = this.§^,§.getItemByName("AvatarSavedAnimation") as §+,§;
         savedAnim.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§6H§)
         {
            this.§6H§ = false;
            this.§&!a§();
         }
         for(var i:Number = 0; i < sAvatars.length; )
         {
            avatar = sAvatars[i];
            avatar.hide();
            i++;
         }
         if(sAvatarContainer.§ !g§ == null)
         {
            sAvatarContainer.§5E§(STARTUP_CHARACTER,STARTUP_CHARACTER_SID,STARTUP_CHARACTER_CATEGORY,sAvatars);
         }
         if(!this.§5!Z§)
         {
            this.§-E§();
         }
      }
      
      public function §8!g§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var items:UIRepeaterRovio = this.§^,§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         for(var i:Number = 0; i < §5!?§.§'%§().§if§.length; i++)
         {
            categoryName = §5!?§.§'%§().§if§[i].name;
            item = §5!?§.§'d§.§?!?§(categoryName);
            if(item == null)
            {
               items.§+'§("Repeater_Items_Tab_" + i).§!>§(categoryName);
            }
            else
            {
               items.§+'§("Repeater_Items_Tab_" + i).§!>§(item.§^!,§);
            }
         }
         this.§%v§();
      }
      
      public function §,!Y§() : void
      {
         var item:String = null;
         for each(item in this.§+!g§)
         {
            §85§.§[!I§(item);
         }
         this.§+!g§ = [];
         ExternalInterfaceHandler.§<!<§("purchaseComplete",this.§,!Y§);
         this.§;!C§();
      }
      
      private function §<q§(avatarData:String) : void
      {
         this.§7o§ = this.§?!M§;
         this.§?!M§ = avatarData;
         var urlReq:URLRequest = §-!Q§.§<!%§(sServerRoot + "/saveavatar/" + avatarData);
         urlReq.method = URLRequestMethod.POST;
         var urlLoader:URLLoader = new URLLoader();
         urlLoader.addEventListener(Event.COMPLETE,this.§8!e§);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§^E§);
         urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§["§);
         urlLoader.load(urlReq);
      }
      
      protected function §["§(event:SecurityErrorEvent) : void
      {
         §4!c§.§8B§();
      }
      
      private function §8!e§(e:Event) : void
      {
         var items:Array = null;
         var item:String = null;
         var savedAnim:§+,§ = null;
         if(this.§?!M§ != null)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString = this.§?!M§;
            CustomAvatarCache.§+8§(new §#!4§(this.§?!M§,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID),true,true);
            ProfilePicture.§<!h§(this.§?!M§);
            items = this.§?!M§.split("-");
            for each(item in items)
            {
               if(this.§7o§)
               {
                  if(this.§7o§.indexOf(item) == -1)
                  {
                     §85§.§2f§(item);
                  }
               }
               else
               {
                  §85§.§2f§(item);
               }
            }
         }
         if(this.§5!Z§)
         {
            this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§^,§.getItemByName("AvatarSavedAnimation") as §+,§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
            this.§%v§();
         }
      }
      
      private function §^E§(e:IOErrorEvent) : void
      {
         var savedAnim:§+,§ = null;
         if(this.§5!Z§)
         {
            this.§^,§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§^,§.getItemByName("AvatarSavedAnimation") as §+,§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
         }
      }
      
      public function §;J§(itemCategory:String) : void
      {
         §5!?§.§'d§.§;J§(itemCategory);
         this.§%v§();
      }
      
      public function §?!$§(itemId:String) : void
      {
         var nextBird:Avatar = null;
         var currentBG:Object = null;
         var oldItem:Item = null;
         var item:Item = §5!?§.§'%§().§><§(itemId);
         var currentAvatar:Avatar = §5!?§.§'d§;
         if(item)
         {
            if(item.§`5§.toUpperCase() == "CATEGORYBIRDS" && currentAvatar.§9!b§().§^!,§ != item.§^!,§)
            {
               nextBird = sAvatarContainer.§5E§(item.§^!,§,item.sId,item.§`5§,sAvatars,110,174);
               nextBird.§+!A§();
               nextBird.§[F§(item);
               if(currentAvatar)
               {
                  for each(oldItem in currentAvatar.§3j§)
                  {
                     if(oldItem.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(oldItem.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           sAvatarContainer.§2!T§(oldItem.§^!,§);
                        }
                        nextBird.§[F§(oldItem);
                     }
                  }
               }
               currentBG = nextBird.§?!?§("CATEGORYBACKGROUNDS");
               if(currentBG == null)
               {
                  nextBird.§[F§(§5!?§.§'%§().§><§("Backgrounds1"));
               }
            }
            else if(item.§`5§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               sAvatarContainer.§2!T§(item.§^!,§);
               §5!?§.§'d§.§[F§(item);
            }
            else
            {
               §5!?§.§'d§.§[F§(item);
            }
         }
         else
         {
            Log.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + itemId);
         }
         this.§%v§();
      }
      
      private function §%v§() : void
      {
         var category:§,!P§ = null;
         var item:Item = null;
         var avatarStringArray:Array = null;
         var currentString:String = null;
         var currentStringAsArray:Array = null;
         var string:String = null;
         var categoryButton:AvatarEditorTabRepeaterButton = null;
         var activeCategoryItem:AvatarEditorTabRepeaterButton = null;
         var itemPrice:int = 0;
         var totalPrice:int = 0;
         var changed:Boolean = false;
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         if(avatarString != null && avatarString != "")
         {
            avatarStringArray = avatarString.split("-");
            currentString = §5!?§.§'d§.§]U§();
            currentStringAsArray = currentString.split("-");
            if(avatarStringArray.length != currentStringAsArray.length)
            {
               changed = true;
            }
            for each(string in currentStringAsArray)
            {
               if(avatarString.indexOf(string) == -1)
               {
                  changed = true;
               }
            }
         }
         for each(category in §5!?§.§'%§().§if§)
         {
            categoryButton = this.§^,§.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
            categoryButton.§@!U§();
         }
         this.§9;§ = [];
         for each(item in §5!?§.§'d§.§3j§)
         {
            activeCategoryItem = this.§^,§.getItemByName(item.category.toUpperCase()) as AvatarEditorTabRepeaterButton;
            itemPrice = §2!g§(item.§^!,§);
            activeCategoryItem.§+%§(item.§^!,§,itemPrice);
            if(itemPrice > 0)
            {
               this.§9;§.push(item);
            }
            totalPrice += itemPrice;
         }
         this.§^,§.getItemByName("Button_Share").setVisibility(false);
         if(totalPrice > 0)
         {
            this.§^,§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§^,§.getItemByName("Textfield_Price").setVisibility(true);
            this.§^,§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§^,§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§^,§.getItemByName("Textfield_Price").setVisibility(false);
            this.§^,§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§6M§)
         {
            (this.§^,§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§^,§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
         }
         else if(totalPrice > 0)
         {
            (this.§^,§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§^,§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§^,§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(changed)
            {
               (this.§^,§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§^,§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
               this.§^,§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§^,§.setText(PopupsUIView.§<! §(totalPrice),"Textfield_Price");
         if(this.§^!c§ == null)
         {
            this.§^!c§ = new AvatarRenderer();
            this.§^!c§.§ +§();
         }
         for(var setAvatarProfileButton:UIButtonRovio = this.§^,§.getItemByName("SetAvatarProfileButton") as UIButtonRovio; setAvatarProfileButton.mClip.SetAvatarHolder.numChildren > 0; )
         {
            setAvatarProfileButton.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var currentAvatarString:String = §5!?§.§'d§.§]U§();
         var avBmp:Bitmap = new Bitmap(this.§^!c§.render(currentAvatarString,null));
         avBmp.x = -8;
         avBmp.y = -12;
         setAvatarProfileButton.mClip.SetAvatarHolder.addChild(avBmp);
         var tab:UIRepeaterTabRovio = this.§^,§.getItemByName(this.§^,§.§"D§("Repeater_Items")) as UIRepeaterTabRovio;
         if(tab)
         {
            this.§^,§.setText("Page " + (tab.§?f§ + 1).toString() + "/" + tab.§7J§,"Textfield_PageNumber");
            if(tab.§7J§ == 1)
            {
               this.§^,§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§^,§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§^,§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§^,§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§^,§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§^,§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
