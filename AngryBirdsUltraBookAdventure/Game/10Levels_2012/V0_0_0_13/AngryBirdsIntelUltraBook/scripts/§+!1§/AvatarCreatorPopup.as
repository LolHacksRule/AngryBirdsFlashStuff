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
      
      private static var sAvatorCreatorPopupBin:Class = §+]§;
      
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
      
      private static var sAvatarContainer:§6!4§;
      
      public static var sServerRoot:String;
      
      private static var sPreviousState:String;
      
      public static var sAllAvatarItems:Array;
      
      public static var sAllItemsLoader:URLLoader;
      
      public static var sAvatars:Array;
      
      private static var sFirstTimeInit:Boolean = true;
       
      
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
         var character:§[_§ = null;
         this.§;!0§ = [];
         this.§-`§ = [];
         this.§1v§ = statePopupManager;
         super(§^9§.§1<§(sAvatorCreatorPopupBin),currentUIView);
         if(activeTabName)
         {
            this.§'F§ = activeTabName;
         }
         this.§1v§.addEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
         this.§5!M§ = currentUIView;
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked("1000-2"))
         {
            this.§5!M§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§5!M§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         sServerRoot = AngryBirdsFP11.SERVER_ROOT;
         var avatarCreator:§1!!§ = new §1!!§();
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §1!!§.§=x§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         if(sAvatarContainer == null)
         {
            sAvatarContainer = new §6!4§();
         }
         if(sAllItemsLoader == null)
         {
            this.§`n§();
         }
      }
      
      public static function §@i§(itemId:String) : Boolean
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
      
      public static function §3!`§(itemId:String) : int
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
      
      public static function §8]§(itemId:String) : Boolean
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
      
      public static function §`M§(itemId:String) : Boolean
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
      
      public static function §6M§(itemId:String) : int
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
      
      public static function §@!§(oldStarCount:int, newStarCount:int) : String
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
      
      private function §`n§() : void
      {
         this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
         var urlReq:URLRequest = §"!F§.§=i§(sServerRoot + "/getavatarparts");
         urlReq.method = URLRequestMethod.POST;
         sAllItemsLoader = new URLLoader();
         sAllItemsLoader.addEventListener(Event.COMPLETE,this.onComplete);
         sAllItemsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
         sAllItemsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!0§);
         sAllItemsLoader.load(urlReq);
      }
      
      protected function §!0§(event:SecurityErrorEvent) : void
      {
         §]!e§.§finally§();
         sAllItemsLoader = null;
      }
      
      private function §6W§(e:IOErrorEvent) : void
      {
         §]!e§.§finally§();
         sAllItemsLoader = null;
      }
      
      private function onComplete(e:Event) : void
      {
         sAllAvatarItems = §8!-§.§9N§(e.currentTarget.data);
         if(!this.§-M§)
         {
            this.§ t§ = true;
            return;
         }
         this.§`e§();
         this.§]e§();
      }
      
      private function §`e§() : void
      {
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         var list:Array = [];
         if(this.§5!M§)
         {
            this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(item in sAllAvatarItems)
         {
            this.§11§(item,AvatarCreatorPopup.sAchievementItems);
            clientItem = ServerIdParser.§ 8§(item.id);
            if(clientItem)
            {
               parseObject = {
                  "itemId":clientItem.§<!B§,
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
         items = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         items.§%U§(null,AvatarEditorTabRepeaterButton);
         this.§5!M§.§31§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §11§(item:Object, achievements:Array) : void
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
      
      private function §!"§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
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
      
      private function §]e§() : void
      {
         var character:§[_§ = null;
         var avatarHolder:§6#§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§6#§ = null;
         var char:§[_§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         this.§-M§ = true;
         var tabs:UIRepeaterRovio = this.§5!M§.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         tabs.§%U§(null,AvatarEditorTabRepeaterButton);
         if(sItemsAvailable == null)
         {
            return;
         }
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §1!!§.§=x§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         if(avatarString == null || avatarString == "")
         {
            this.§"p§ = true;
         }
         var profile:§>Y§ = new §>Y§(userId,false,§>Y§.SQUARE);
         profile.x = 13;
         profile.y = 9;
         this.§5!M§.getItemByName("SetFacebookProfileButton").mClip.addChild(profile);
         if(sFirstTimeInit)
         {
            avatarHolder = this.§5!M§.getItemByName("AvatarHolderClip") as §6#§;
            this.§!"§(avatarHolder.mClip);
            if(avatarString != "" && avatarString != null)
            {
               oldAvatarsItems = ServerIdParser.§@E§(avatarString);
               addedAvatar = sAvatarContainer.§4q§(oldAvatarsItems);
               §1!!§.§1!S§ = addedAvatar;
            }
            else
            {
               this.§+!b§(STARTUP_CHARACTER);
               sAvatarContainer.§]!;§("backgrounds1");
            }
            (this.§5!M§ as PopupsUIView).§4i§();
            sFirstTimeInit = false;
         }
         else
         {
            avatarHolder2 = this.§5!M§.getItemByName("AvatarHolderClip") as §6#§;
            this.§!"§(avatarHolder2.mClip);
            char = sAvatarContainer.§4&§.§?D§();
            sAvatarContainer.§!!=§(char.§<!B§,char.sId,char.§-!@§,sAvatars,110,174);
            sAvatarContainer.§4&§.§1-§();
            items = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
            items.§%U§(null,AvatarEditorTabRepeaterButton);
            (this.§5!M§ as PopupsUIView).§4i§();
         }
         if(this.§'F§)
         {
            tabIndex = (this.§5!M§ as PopupsUIView).§!!§(this.§'F§);
            if(tabIndex != -1)
            {
               categoryName = this.§'F§.substr("CATEGORY".length);
               this.§5!M§.setText(categoryName,"Textfield_CategoryTitle");
               this.§5!M§.§31§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
               if(§1!!§.§[!Y§().§,!#§.length > 0)
               {
                  tabs.§9k§("Repeater_Tabs_Tab_0").§9!+§(§1!!§.§[!Y§().§,!#§[tabIndex].name as String);
               }
            }
            this.§'F§ = null;
         }
         this.§!!1§();
      }
      
      private function onUiInteraction(e:§7"§) : void
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
                     tabIndex = (this.§5!M§ as PopupsUIView).§!!§(eventName);
                     if(tabIndex != -1)
                     {
                        categoryName = eventName.substr("CATEGORY".length);
                        this.§5!M§.setText(categoryName,"Textfield_CategoryTitle");
                        this.§5!M§.§31§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
                        for each(repeaterButton in (component2.mParentContainer as UIRepeaterTabRovio).§4!W§)
                        {
                           (repeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
                        }
                        (component as AvatarEditorTabRepeaterButton).§6N§();
                        this.§6R§();
                     }
                  }
                  else if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     index = eventName.indexOf("REMOVE_");
                     if(index == -1)
                     {
                        this.§+!b§(eventName);
                     }
                     else if(index == 0)
                     {
                        this.§ m§(eventName.substring("REMOVE_".length));
                     }
                     this.§!!1§();
                  }
               }
            }
         }
         if(eventName.toUpperCase().indexOf("OVER") > -1)
         {
            overString = eventName.toUpperCase().substr(4);
            overTabIndex = (this.§5!M§ as PopupsUIView).§!!§(overString);
            repeaterIndex = 0;
            for each(overRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§)
            {
               if(repeaterIndex != overTabIndex)
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
               }
               else
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§6N§();
               }
               repeaterIndex++;
            }
         }
         if(eventName.toUpperCase().indexOf("OUT") > -1)
         {
            outString = eventName.toUpperCase().substr(3);
            outTabIndex = (this.§5!M§ as PopupsUIView).§!!§(outString);
            repeaterIndex = 0;
            for each(outRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§4!W§)
            {
               if(repeaterIndex == outTabIndex)
               {
                  (outRepeaterButton as AvatarEditorTabRepeaterButton).§!!Z§();
               }
               repeaterIndex++;
            }
         }
         switch(eventName)
         {
            case "UNEQUIP_ALL":
               §1!!§.§1!S§.§=p§();
               this.§!!1§();
               this.§6R§();
               break;
            case "RANDOMIZE_AVATAR":
               §1!!§.§1!S§.§!!Q§();
               this.§!!1§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§#T§();
               break;
            case "CANCEL_SHARE":
               this.§5!M§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
               this.§7t§();
               break;
            case "BUY_THESE":
               buyString = ServerIdParser.§@!-§(this.§;!0§);
               trace(buyString);
               AngryBirdsFP11.§5V§.§"§();
               this.§-`§ = [];
               items = buyString.split("-");
               for each(item in items)
               {
                  §+!N§.§>=§(item);
                  this.§-`§.push(item);
               }
               ExternalInterfaceHandler.addCallback("purchaseComplete",this.§%=§);
               ExternalInterfaceHandler.§>!2§("placeOrder",buyString);
               break;
            case "SET_AVATAR":
               this.§"p§ = false;
               this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
               avatarData = §1!!§.§1!S§.§5&§();
               this.§!E§(avatarData);
               this.§6R§();
               break;
            case "SET_PROFILE":
               this.§"p§ = true;
               this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
               this.§!E§("");
               this.§6R§();
               break;
            case "CLOSE_AVATAR":
               this.§1v§.removeEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§5!M§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§6R§();
               break;
            case "SCROLL_LEFT":
               this.§6R§();
         }
      }
      
      private function §7t§() : void
      {
         §+!N§.§5U§();
         AngryBirdsFP11.§5V§.§"§();
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         ExternalInterfaceHandler.§>!2§("askForPublishStreamPermission");
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
         §+!N§.§&![§();
         ExternalInterfaceHandler.§in§("permissionRequestComplete",this.permissionRequestComplete);
         this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
         if(success == "true")
         {
            this.§5!M§.getItemByName("AvatarSharing").setVisibility(true);
            this.§5!M§.getItemByName("ShareAvatarWindow").setVisibility(true);
            bigAvatar = new AvatarRenderer();
            bigAvatar.§+!<§();
            imageSize = 173;
            bmd = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,imageSize);
            mat = new Matrix();
            scale = imageSize / 100 / 2;
            mat.scale(scale,scale);
            window = this.§5!M§.getItemByName("ShareAvatarWindow");
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
      
      private function §#T§() : void
      {
         this.§5!M§.getItemByName("AvatarSharing").setVisibility(false);
         this.§5!M§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§5!M§.getItemByName("WaitingForReply").setVisibility(true);
         var bigAvatar:AvatarRenderer = new AvatarRenderer();
         bigAvatar.§+!<§();
         var bmd:BitmapData = bigAvatar.render(§1!!§.§1!S§.§5&§(),null,500);
         var mat:Matrix = new Matrix();
         mat.scale(2.5,2.5);
         var watermarkCls:Class = AssetCache.§-9§("WatermarkPlayOnFacebook");
         var watermark:MovieClip = new watermarkCls();
         watermark.x = 500 - watermark.width;
         watermark.y = 500 - watermark.height;
         bmd.draw(watermark,mat,null,null,null,true);
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         FacebookImageUploader.§,C§(bmd,sAccessToken,userId,this.§@3§,this.§`m§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         ExternalInterfaceHandler.§in§("purchaseComplete",this.§%=§);
         this.§1v§.removeEventListener(§7"§.UI_INTERACTION,this.onUiInteraction);
         preClose();
      }
      
      private function §@3§(data:*) : void
      {
         var str:String = data.toString();
         this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §`m§() : void
      {
         this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§-M§ = false;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var avatar:Avatar = null;
         super.open(useFadeEffect);
         §+!N§.§'X§();
         var savedAnim:§6#§ = this.§5!M§.getItemByName("AvatarSavedAnimation") as §6#§;
         savedAnim.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§ t§)
         {
            this.§ t§ = false;
            this.§`e§();
         }
         for(var i:Number = 0; i < sAvatars.length; )
         {
            avatar = sAvatars[i];
            avatar.hide();
            i++;
         }
         if(sAvatarContainer.§4&§ == null)
         {
            sAvatarContainer.§!!=§(STARTUP_CHARACTER,STARTUP_CHARACTER_SID,STARTUP_CHARACTER_CATEGORY,sAvatars);
         }
         if(!this.§-M§)
         {
            this.§]e§();
         }
      }
      
      public function §!!1§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var items:UIRepeaterRovio = this.§5!M§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         for(var i:Number = 0; i < §1!!§.§[!Y§().§,!#§.length; i++)
         {
            categoryName = §1!!§.§[!Y§().§,!#§[i].name;
            item = §1!!§.§1!S§.§]y§(categoryName);
            if(item == null)
            {
               items.§9k§("Repeater_Items_Tab_" + i).§9!+§(categoryName);
            }
            else
            {
               items.§9k§("Repeater_Items_Tab_" + i).§9!+§(item.§<!B§);
            }
         }
         this.§6R§();
      }
      
      public function §%=§() : void
      {
         var item:String = null;
         for each(item in this.§-`§)
         {
            §+!N§.§0!]§(item);
         }
         this.§-`§ = [];
         ExternalInterfaceHandler.§in§("purchaseComplete",this.§%=§);
         this.§`n§();
      }
      
      private function §!E§(avatarData:String) : void
      {
         this.§>5§ = this.§;n§;
         this.§;n§ = avatarData;
         var urlReq:URLRequest = §"!F§.§=i§(sServerRoot + "/saveavatar/" + avatarData);
         urlReq.method = URLRequestMethod.POST;
         var urlLoader:URLLoader = new URLLoader();
         urlLoader.addEventListener(Event.COMPLETE,this.§]!>§);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§'!Y§);
         urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&k§);
         urlLoader.load(urlReq);
      }
      
      protected function §&k§(event:SecurityErrorEvent) : void
      {
         §]!e§.§finally§();
      }
      
      private function §]!>§(e:Event) : void
      {
         var items:Array = null;
         var item:String = null;
         var savedAnim:§6#§ = null;
         if(this.§;n§ != null)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString = this.§;n§;
            CustomAvatarCache.§=!e§(new §`y§(this.§;n§,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID),true,true);
            ProfilePicture.§#k§(this.§;n§);
            items = this.§;n§.split("-");
            for each(item in items)
            {
               if(this.§>5§)
               {
                  if(this.§>5§.indexOf(item) == -1)
                  {
                     §+!N§.§5!O§(item);
                  }
               }
               else
               {
                  §+!N§.§5!O§(item);
               }
            }
         }
         if(this.§-M§)
         {
            this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§5!M§.getItemByName("AvatarSavedAnimation") as §6#§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
            this.§6R§();
         }
      }
      
      private function §'!Y§(e:IOErrorEvent) : void
      {
         var savedAnim:§6#§ = null;
         if(this.§-M§)
         {
            this.§5!M§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§5!M§.getItemByName("AvatarSavedAnimation") as §6#§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
         }
      }
      
      public function § m§(itemCategory:String) : void
      {
         §1!!§.§1!S§.§ m§(itemCategory);
         this.§6R§();
      }
      
      public function §+!b§(itemId:String) : void
      {
         var nextBird:Avatar = null;
         var currentBG:Object = null;
         var oldItem:Item = null;
         var item:Item = §1!!§.§[!Y§().§&!i§(itemId);
         var currentAvatar:Avatar = §1!!§.§1!S§;
         if(item)
         {
            if(item.§-!@§.toUpperCase() == "CATEGORYBIRDS" && currentAvatar.§?D§().§<!B§ != item.§<!B§)
            {
               nextBird = sAvatarContainer.§!!=§(item.§<!B§,item.sId,item.§-!@§,sAvatars,110,174);
               nextBird.§=p§();
               nextBird.§1$§(item);
               if(currentAvatar)
               {
                  for each(oldItem in currentAvatar.§<!$§)
                  {
                     if(oldItem.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(oldItem.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           sAvatarContainer.§]!;§(oldItem.§<!B§);
                        }
                        nextBird.§1$§(oldItem);
                     }
                  }
               }
               currentBG = nextBird.§]y§("CATEGORYBACKGROUNDS");
               if(currentBG == null)
               {
                  nextBird.§1$§(§1!!§.§[!Y§().§&!i§("Backgrounds1"));
               }
            }
            else if(item.§-!@§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               sAvatarContainer.§]!;§(item.§<!B§);
               §1!!§.§1!S§.§1$§(item);
            }
            else
            {
               §1!!§.§1!S§.§1$§(item);
            }
         }
         else
         {
            Log.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + itemId);
         }
         this.§6R§();
      }
      
      private function §6R§() : void
      {
         var category:§1!b§ = null;
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
            currentString = §1!!§.§1!S§.§5&§();
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
         for each(category in §1!!§.§[!Y§().§,!#§)
         {
            categoryButton = this.§5!M§.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
            categoryButton.§-f§();
         }
         this.§;!0§ = [];
         for each(item in §1!!§.§1!S§.§<!$§)
         {
            activeCategoryItem = this.§5!M§.getItemByName(item.category.toUpperCase()) as AvatarEditorTabRepeaterButton;
            itemPrice = §3!`§(item.§<!B§);
            activeCategoryItem.§@!>§(item.§<!B§,itemPrice);
            if(itemPrice > 0)
            {
               this.§;!0§.push(item);
            }
            totalPrice += itemPrice;
         }
         this.§5!M§.getItemByName("Button_Share").setVisibility(false);
         if(totalPrice > 0)
         {
            this.§5!M§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§5!M§.getItemByName("Textfield_Price").setVisibility(true);
            this.§5!M§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§5!M§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§5!M§.getItemByName("Textfield_Price").setVisibility(false);
            this.§5!M§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§"p§)
         {
            (this.§5!M§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§5!M§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
         }
         else if(totalPrice > 0)
         {
            (this.§5!M§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§5!M§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§5!M§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(changed)
            {
               (this.§5!M§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§5!M§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
               this.§5!M§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§5!M§.setText(PopupsUIView.§",§(totalPrice),"Textfield_Price");
         if(this.§^a§ == null)
         {
            this.§^a§ = new AvatarRenderer();
            this.§^a§.§+!<§();
         }
         for(var setAvatarProfileButton:UIButtonRovio = this.§5!M§.getItemByName("SetAvatarProfileButton") as UIButtonRovio; setAvatarProfileButton.mClip.SetAvatarHolder.numChildren > 0; )
         {
            setAvatarProfileButton.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var currentAvatarString:String = §1!!§.§1!S§.§5&§();
         var avBmp:Bitmap = new Bitmap(this.§^a§.render(currentAvatarString,null));
         avBmp.x = -8;
         avBmp.y = -12;
         setAvatarProfileButton.mClip.SetAvatarHolder.addChild(avBmp);
         var tab:UIRepeaterTabRovio = this.§5!M§.getItemByName(this.§5!M§.§2!<§("Repeater_Items")) as UIRepeaterTabRovio;
         if(tab)
         {
            this.§5!M§.setText("Page " + (tab.§3!&§ + 1).toString() + "/" + tab.§37§,"Textfield_PageNumber");
            if(tab.§37§ == 1)
            {
               this.§5!M§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§5!M§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§5!M§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§5!M§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§5!M§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§5!M§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
