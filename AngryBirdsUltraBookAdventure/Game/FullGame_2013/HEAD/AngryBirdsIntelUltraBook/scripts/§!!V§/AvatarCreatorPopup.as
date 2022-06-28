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
      
      private static var sAvatorCreatorPopupBin:Class = §6C§;
      
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
      
      private static var sAvatarContainer:§%X§;
      
      public static var sServerRoot:String;
      
      private static var sPreviousState:String;
      
      public static var sAllAvatarItems:Array;
      
      public static var sAllItemsLoader:URLLoader;
      
      public static var sAvatars:Array;
      
      private static var sFirstTimeInit:Boolean = true;
       
      
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
         var character:§%1§ = null;
         this.§case§ = [];
         this.§^!&§ = [];
         this.§%!<§ = statePopupManager;
         super(§<y§.§1P§(sAvatorCreatorPopupBin),currentUIView);
         if(activeTabName)
         {
            this.§4!P§ = activeTabName;
         }
         this.§%!<§.addEventListener(§`!U§.UI_INTERACTION,this.onUiInteraction);
         this.§`=§ = currentUIView;
         if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked("1000-2"))
         {
            this.§`=§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§`=§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         sServerRoot = AngryBirdsFP11.SERVER_ROOT;
         var avatarCreator:§5!2§ = new §5!2§();
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §5!2§.§<o§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         if(sAvatarContainer == null)
         {
            sAvatarContainer = new §%X§();
         }
         if(sAllItemsLoader == null)
         {
            this.§]b§();
         }
      }
      
      public static function § M§(itemId:String) : Boolean
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
      
      public static function §"!e§(itemId:String) : int
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
      
      public static function §&!e§(itemId:String) : Boolean
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
      
      public static function §3N§(itemId:String) : Boolean
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
      
      public static function §+E§(itemId:String) : int
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
      
      public static function §-=§(oldStarCount:int, newStarCount:int) : String
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
      
      private function §]b§() : void
      {
         this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
         var urlReq:URLRequest = §+!I§.§[O§(sServerRoot + "/getavatarparts");
         urlReq.method = URLRequestMethod.POST;
         sAllItemsLoader = new URLLoader();
         sAllItemsLoader.addEventListener(Event.COMPLETE,this.onComplete);
         sAllItemsLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
         sAllItemsLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8U§);
         sAllItemsLoader.load(urlReq);
      }
      
      protected function §8U§(event:SecurityErrorEvent) : void
      {
         §9u§.§#"§();
         sAllItemsLoader = null;
      }
      
      private function §8!3§(e:IOErrorEvent) : void
      {
         §9u§.§#"§();
         sAllItemsLoader = null;
      }
      
      private function onComplete(e:Event) : void
      {
         sAllAvatarItems = §7b§.§#!a§(e.currentTarget.data);
         if(!this.§>+§)
         {
            this.§ !$§ = true;
            return;
         }
         this.§9!"§();
         this.§,!§();
      }
      
      private function §9!"§() : void
      {
         var item:Object = null;
         var items:UIRepeaterRovio = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         var list:Array = [];
         if(this.§`=§)
         {
            this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(item in sAllAvatarItems)
         {
            this.§ B§(item,AvatarCreatorPopup.sAchievementItems);
            clientItem = ServerIdParser.§9_§(item.id);
            if(clientItem)
            {
               parseObject = {
                  "itemId":clientItem.§7!D§,
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
         items = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         items.§2!,§(null,AvatarEditorTabRepeaterButton);
         this.§`=§.§+!L§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function § B§(item:Object, achievements:Array) : void
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
      
      private function §'!`§(displayObjectContainer:DisplayObjectContainer, scale:Number = 1, containerX:int = 0, containerY:int = 0) : void
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
      
      private function §,!§() : void
      {
         var character:§%1§ = null;
         var avatarHolder:§=D§ = null;
         var oldAvatarsItems:Array = null;
         var addedAvatar:Avatar = null;
         var avatarHolder2:§=D§ = null;
         var char:§%1§ = null;
         var items:UIRepeaterRovio = null;
         var tabIndex:int = 0;
         var categoryName:String = null;
         this.§>+§ = true;
         var tabs:UIRepeaterRovio = this.§`=§.getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         tabs.§2!,§(null,AvatarEditorTabRepeaterButton);
         if(sItemsAvailable == null)
         {
            return;
         }
         if(sAvatars == null)
         {
            sAvatars = [];
            for each(character in §5!2§.§<o§().characters)
            {
               sAvatars.push(new Avatar(character));
            }
         }
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         if(avatarString == null || avatarString == "")
         {
            this.§?w§ = true;
         }
         var profile:§5!D§ = new §5!D§(userId,false,§5!D§.SQUARE);
         profile.x = 13;
         profile.y = 9;
         this.§`=§.getItemByName("SetFacebookProfileButton").mClip.addChild(profile);
         if(sFirstTimeInit)
         {
            avatarHolder = this.§`=§.getItemByName("AvatarHolderClip") as §=D§;
            this.§'!`§(avatarHolder.mClip);
            if(avatarString != "" && avatarString != null)
            {
               oldAvatarsItems = ServerIdParser.§,1§(avatarString);
               addedAvatar = sAvatarContainer.§#E§(oldAvatarsItems);
               §5!2§.§<R§ = addedAvatar;
            }
            else
            {
               this.§]S§(STARTUP_CHARACTER);
               sAvatarContainer.§3!F§("backgrounds1");
            }
            (this.§`=§ as PopupsUIView).§?E§();
            sFirstTimeInit = false;
         }
         else
         {
            avatarHolder2 = this.§`=§.getItemByName("AvatarHolderClip") as §=D§;
            this.§'!`§(avatarHolder2.mClip);
            char = sAvatarContainer.§8r§.§>[§();
            sAvatarContainer.§=W§(char.§7!D§,char.sId,char.§[L§,sAvatars,110,174);
            sAvatarContainer.§8r§.§]!R§();
            items = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
            items.§2!,§(null,AvatarEditorTabRepeaterButton);
            (this.§`=§ as PopupsUIView).§?E§();
         }
         if(this.§4!P§)
         {
            tabIndex = (this.§`=§ as PopupsUIView).§0S§(this.§4!P§);
            if(tabIndex != -1)
            {
               categoryName = this.§4!P§.substr("CATEGORY".length);
               this.§`=§.setText(categoryName,"Textfield_CategoryTitle");
               this.§`=§.§+!L§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
               if(§5!2§.§]W§().§+@§.length > 0)
               {
                  tabs.§;!W§("Repeater_Tabs_Tab_0").§?!#§(§5!2§.§]W§().§+@§[tabIndex].name as String);
               }
            }
            this.§4!P§ = null;
         }
         this.§@A§();
      }
      
      private function onUiInteraction(e:§`!U§) : void
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
                     tabIndex = (this.§`=§ as PopupsUIView).§0S§(eventName);
                     if(tabIndex != -1)
                     {
                        categoryName = eventName.substr("CATEGORY".length);
                        this.§`=§.setText(categoryName,"Textfield_CategoryTitle");
                        this.§`=§.§+!L§("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
                        for each(repeaterButton in (component2.mParentContainer as UIRepeaterTabRovio).§]6§)
                        {
                           (repeaterButton as AvatarEditorTabRepeaterButton).§`m§();
                        }
                        (component as AvatarEditorTabRepeaterButton).§^f§();
                        this.§1i§();
                     }
                  }
                  else if(((component2.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     index = eventName.indexOf("REMOVE_");
                     if(index == -1)
                     {
                        this.§]S§(eventName);
                     }
                     else if(index == 0)
                     {
                        this.§0H§(eventName.substring("REMOVE_".length));
                     }
                     this.§@A§();
                  }
               }
            }
         }
         if(eventName.toUpperCase().indexOf("OVER") > -1)
         {
            overString = eventName.toUpperCase().substr(4);
            overTabIndex = (this.§`=§ as PopupsUIView).§0S§(overString);
            repeaterIndex = 0;
            for each(overRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§]6§)
            {
               if(repeaterIndex != overTabIndex)
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§`m§();
               }
               else
               {
                  (overRepeaterButton as AvatarEditorTabRepeaterButton).§^f§();
               }
               repeaterIndex++;
            }
         }
         if(eventName.toUpperCase().indexOf("OUT") > -1)
         {
            outString = eventName.toUpperCase().substr(3);
            outTabIndex = (this.§`=§ as PopupsUIView).§0S§(outString);
            repeaterIndex = 0;
            for each(outRepeaterButton in ((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).§]6§)
            {
               if(repeaterIndex == outTabIndex)
               {
                  (outRepeaterButton as AvatarEditorTabRepeaterButton).§`m§();
               }
               repeaterIndex++;
            }
         }
         switch(eventName)
         {
            case "UNEQUIP_ALL":
               §5!2§.§<R§.§`Z§();
               this.§@A§();
               this.§1i§();
               break;
            case "RANDOMIZE_AVATAR":
               §5!2§.§<R§.§5#§();
               this.§@A§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§'!U§();
               break;
            case "CANCEL_SHARE":
               this.§`=§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
               this.§5H§();
               break;
            case "BUY_THESE":
               buyString = ServerIdParser.§?T§(this.§case§);
               trace(buyString);
               AngryBirdsFP11.§'t§.§?]§();
               this.§^!&§ = [];
               items = buyString.split("-");
               for each(item in items)
               {
                  §9F§.§,E§(item);
                  this.§^!&§.push(item);
               }
               ExternalInterfaceHandler.addCallback("purchaseComplete",this.§",§);
               ExternalInterfaceHandler.§`F§("placeOrder",buyString);
               break;
            case "SET_AVATAR":
               this.§?w§ = false;
               this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
               avatarData = §5!2§.§<R§.§9"§();
               this.§;o§(avatarData);
               this.§1i§();
               break;
            case "SET_PROFILE":
               this.§?w§ = true;
               this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
               this.§;o§("");
               this.§1i§();
               break;
            case "CLOSE_AVATAR":
               this.§%!<§.removeEventListener(§`!U§.UI_INTERACTION,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§`=§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§1i§();
               break;
            case "SCROLL_LEFT":
               this.§1i§();
         }
      }
      
      private function §5H§() : void
      {
         §9F§.§0`§();
         AngryBirdsFP11.§'t§.§?]§();
         ExternalInterfaceHandler.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         ExternalInterfaceHandler.§`F§("askForPublishStreamPermission");
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
         §9F§.§+5§();
         ExternalInterfaceHandler.§>!X§("permissionRequestComplete",this.permissionRequestComplete);
         this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
         if(success == "true")
         {
            this.§`=§.getItemByName("AvatarSharing").setVisibility(true);
            this.§`=§.getItemByName("ShareAvatarWindow").setVisibility(true);
            bigAvatar = new AvatarRenderer();
            bigAvatar.§4<§();
            imageSize = 173;
            bmd = bigAvatar.render(§5!2§.§<R§.§9"§(),null,imageSize);
            mat = new Matrix();
            scale = imageSize / 100 / 2;
            mat.scale(scale,scale);
            window = this.§`=§.getItemByName("ShareAvatarWindow");
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
      
      private function §'!U§() : void
      {
         this.§`=§.getItemByName("AvatarSharing").setVisibility(false);
         this.§`=§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§`=§.getItemByName("WaitingForReply").setVisibility(true);
         var bigAvatar:AvatarRenderer = new AvatarRenderer();
         bigAvatar.§4<§();
         var bmd:BitmapData = bigAvatar.render(§5!2§.§<R§.§9"§(),null,500);
         var mat:Matrix = new Matrix();
         mat.scale(2.5,2.5);
         var watermarkCls:Class = AssetCache.§%p§("WatermarkPlayOnFacebook");
         var watermark:MovieClip = new watermarkCls();
         watermark.x = 500 - watermark.width;
         watermark.y = 500 - watermark.height;
         bmd.draw(watermark,mat,null,null,null,true);
         var userId:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         FacebookImageUploader.§-3§(bmd,sAccessToken,userId,this.§"^§,this.§"H§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         ExternalInterfaceHandler.§>!X§("purchaseComplete",this.§",§);
         this.§%!<§.removeEventListener(§`!U§.UI_INTERACTION,this.onUiInteraction);
         preClose();
      }
      
      private function §"^§(data:*) : void
      {
         var str:String = data.toString();
         this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §"H§() : void
      {
         this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§>+§ = false;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var avatar:Avatar = null;
         super.open(useFadeEffect);
         §9F§.§7!0§();
         var savedAnim:§=D§ = this.§`=§.getItemByName("AvatarSavedAnimation") as §=D§;
         savedAnim.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§ !$§)
         {
            this.§ !$§ = false;
            this.§9!"§();
         }
         for(var i:Number = 0; i < sAvatars.length; )
         {
            avatar = sAvatars[i];
            avatar.hide();
            i++;
         }
         if(sAvatarContainer.§8r§ == null)
         {
            sAvatarContainer.§=W§(STARTUP_CHARACTER,STARTUP_CHARACTER_SID,STARTUP_CHARACTER_CATEGORY,sAvatars);
         }
         if(!this.§>+§)
         {
            this.§,!§();
         }
      }
      
      public function §@A§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var items:UIRepeaterRovio = this.§`=§.getItemByName("Repeater_Items") as UIRepeaterRovio;
         for(var i:Number = 0; i < §5!2§.§]W§().§+@§.length; i++)
         {
            categoryName = §5!2§.§]W§().§+@§[i].name;
            item = §5!2§.§<R§.§3`§(categoryName);
            if(item == null)
            {
               items.§;!W§("Repeater_Items_Tab_" + i).§?!#§(categoryName);
            }
            else
            {
               items.§;!W§("Repeater_Items_Tab_" + i).§?!#§(item.§7!D§);
            }
         }
         this.§1i§();
      }
      
      public function §",§() : void
      {
         var item:String = null;
         for each(item in this.§^!&§)
         {
            §9F§.§-!<§(item);
         }
         this.§^!&§ = [];
         ExternalInterfaceHandler.§>!X§("purchaseComplete",this.§",§);
         this.§]b§();
      }
      
      private function §;o§(avatarData:String) : void
      {
         this.§9v§ = this.§=!F§;
         this.§=!F§ = avatarData;
         var urlReq:URLRequest = §+!I§.§[O§(sServerRoot + "/saveavatar/" + avatarData);
         urlReq.method = URLRequestMethod.POST;
         var urlLoader:URLLoader = new URLLoader();
         urlLoader.addEventListener(Event.COMPLETE,this.§2a§);
         urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§ N§);
         urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!§);
         urlLoader.load(urlReq);
      }
      
      protected function §?!§(event:SecurityErrorEvent) : void
      {
         §9u§.§#"§();
      }
      
      private function §2a§(e:Event) : void
      {
         var items:Array = null;
         var item:String = null;
         var savedAnim:§=D§ = null;
         if(this.§=!F§ != null)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString = this.§=!F§;
            CustomAvatarCache.§[h§(new §3a§(this.§=!F§,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID),true,true);
            ProfilePicture.§ !"§(this.§=!F§);
            items = this.§=!F§.split("-");
            for each(item in items)
            {
               if(this.§9v§)
               {
                  if(this.§9v§.indexOf(item) == -1)
                  {
                     §9F§.§61§(item);
                  }
               }
               else
               {
                  §9F§.§61§(item);
               }
            }
         }
         if(this.§>+§)
         {
            this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§`=§.getItemByName("AvatarSavedAnimation") as §=D§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
            this.§1i§();
         }
      }
      
      private function § N§(e:IOErrorEvent) : void
      {
         var savedAnim:§=D§ = null;
         if(this.§>+§)
         {
            this.§`=§.getItemByName("WaitingForReply").setVisibility(false);
            savedAnim = this.§`=§.getItemByName("AvatarSavedAnimation") as §=D§;
            savedAnim.setVisibility(true);
            savedAnim.mClip.gotoAndPlay(1);
         }
      }
      
      public function §0H§(itemCategory:String) : void
      {
         §5!2§.§<R§.§0H§(itemCategory);
         this.§1i§();
      }
      
      public function §]S§(itemId:String) : void
      {
         var nextBird:Avatar = null;
         var currentBG:Object = null;
         var oldItem:Item = null;
         var item:Item = §5!2§.§]W§().§-`§(itemId);
         var currentAvatar:Avatar = §5!2§.§<R§;
         if(item)
         {
            if(item.§[L§.toUpperCase() == "CATEGORYBIRDS" && currentAvatar.§>[§().§7!D§ != item.§7!D§)
            {
               nextBird = sAvatarContainer.§=W§(item.§7!D§,item.sId,item.§[L§,sAvatars,110,174);
               nextBird.§`Z§();
               nextBird.§&3§(item);
               if(currentAvatar)
               {
                  for each(oldItem in currentAvatar.§1!B§)
                  {
                     if(oldItem.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(oldItem.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           sAvatarContainer.§3!F§(oldItem.§7!D§);
                        }
                        nextBird.§&3§(oldItem);
                     }
                  }
               }
               currentBG = nextBird.§3`§("CATEGORYBACKGROUNDS");
               if(currentBG == null)
               {
                  nextBird.§&3§(§5!2§.§]W§().§-`§("Backgrounds1"));
               }
            }
            else if(item.§[L§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               sAvatarContainer.§3!F§(item.§7!D§);
               §5!2§.§<R§.§&3§(item);
            }
            else
            {
               §5!2§.§<R§.§&3§(item);
            }
         }
         else
         {
            Log.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + itemId);
         }
         this.§1i§();
      }
      
      private function §1i§() : void
      {
         var category:§,v§ = null;
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
            currentString = §5!2§.§<R§.§9"§();
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
         for each(category in §5!2§.§]W§().§+@§)
         {
            categoryButton = this.§`=§.getItemByName(category.name.toUpperCase()) as AvatarEditorTabRepeaterButton;
            categoryButton.§6!"§();
         }
         this.§case§ = [];
         for each(item in §5!2§.§<R§.§1!B§)
         {
            activeCategoryItem = this.§`=§.getItemByName(item.category.toUpperCase()) as AvatarEditorTabRepeaterButton;
            itemPrice = §"!e§(item.§7!D§);
            activeCategoryItem.§-7§(item.§7!D§,itemPrice);
            if(itemPrice > 0)
            {
               this.§case§.push(item);
            }
            totalPrice += itemPrice;
         }
         this.§`=§.getItemByName("Button_Share").setVisibility(false);
         if(totalPrice > 0)
         {
            this.§`=§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§`=§.getItemByName("Textfield_Price").setVisibility(true);
            this.§`=§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§`=§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§`=§.getItemByName("Textfield_Price").setVisibility(false);
            this.§`=§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§?w§)
         {
            (this.§`=§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§`=§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
         }
         else if(totalPrice > 0)
         {
            (this.§`=§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§`=§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§`=§.getItemByName("SetFacebookProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(changed)
            {
               (this.§`=§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§`=§.getItemByName("SetAvatarProfileButton") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
               this.§`=§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§`=§.setText(PopupsUIView.§<!4§(totalPrice),"Textfield_Price");
         if(this.§"!a§ == null)
         {
            this.§"!a§ = new AvatarRenderer();
            this.§"!a§.§4<§();
         }
         for(var setAvatarProfileButton:UIButtonRovio = this.§`=§.getItemByName("SetAvatarProfileButton") as UIButtonRovio; setAvatarProfileButton.mClip.SetAvatarHolder.numChildren > 0; )
         {
            setAvatarProfileButton.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var currentAvatarString:String = §5!2§.§<R§.§9"§();
         var avBmp:Bitmap = new Bitmap(this.§"!a§.render(currentAvatarString,null));
         avBmp.x = -8;
         avBmp.y = -12;
         setAvatarProfileButton.mClip.SetAvatarHolder.addChild(avBmp);
         var tab:UIRepeaterTabRovio = this.§`=§.getItemByName(this.§`=§.§-!6§("Repeater_Items")) as UIRepeaterTabRovio;
         if(tab)
         {
            this.§`=§.setText("Page " + (tab.§]Y§ + 1).toString() + "/" + tab.§"=§,"Textfield_PageNumber");
            if(tab.§"=§ == 1)
            {
               this.§`=§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§`=§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§`=§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§`=§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§`=§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§`=§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
