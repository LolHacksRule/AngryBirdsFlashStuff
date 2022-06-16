package §0!,§
{
   import § !i§.§=?§;
   import §!9§.§%y§;
   import §!G§.§+!#§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §&!"§.§`B§;
   import §-!d§.§^"I§;
   import §-B§.§7x§;
   import §-B§.§8"B§;
   import §-B§.§<"$§;
   import §-B§.§="0§;
   import §-B§.§]!<§;
   import §2J§.§4" §;
   import §2L§.§[!3§;
   import §2L§.§^]§;
   import §3I§.§3!b§;
   import §5!q§.§2"L§;
   import §5!q§.§3!&§;
   import §5!q§.§@"0§;
   import §6! §.§<"#§;
   import §6! §.§@!k§;
   import §6! §.§@"3§;
   import §;n§.§&G§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §[!-§.§?x§;
   import §[x§.§%3§;
   import §[x§.§?-§;
   import §[x§.§@r§;
   import §^!o§.§=1§;
   import §`!?§.§%"3§;
   import §`!?§.Item;
   import com.rovio.assets.§>"5§;
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
   
   public class §^"B§ extends Popup
   {
      
      private static var §,K§:Class = §5!$§;
      
      public static var §<!'§:String;
      
      private static var §0"=§:Array = [{
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
      
      private static var §89§:String;
      
      public static var §8!O§:Array;
      
      private static var §2!h§:§@"0§;
      
      private static var §0h§:Boolean = true;
      
      public static var §]!a§:Array;
      
      public static var §;"1§:URLLoader;
       
      
      private var §[!g§:StatePopupManager;
      
      private var §?N§:Item = null;
      
      private var §<!o§:Boolean = false;
      
      private var §!"1§:String;
      
      private var §&!!§:Array;
      
      private var §&!d§:Array;
      
      private var §>!H§:Boolean = false;
      
      private var §6"4§:Boolean = false;
      
      private var §2!K§:§^0§;
      
      private var §`!j§:§@"3§;
      
      private var §+f§:String;
      
      private var §0!B§:String;
      
      private var §,!,§:Boolean;
      
      public function §^"B§(param1:§^0§, param2:StatePopupManager, param3:String = null, param4:Boolean = false)
      {
         this.§&!!§ = [];
         this.§&!d§ = [];
         this.§[!g§ = param2;
         super(§?-§.§9E§(§,K§),param1);
         if(param3)
         {
            this.§+f§ = param3;
         }
         this.§[!g§.addEventListener(§+!#§.§@=§,this.onUiInteraction);
         this.§2!K§ = param1;
         if((AngryBirdsFP11.sUserProgress as §'y§).§#!e§("1000-2"))
         {
            this.§2!K§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§2!K§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §<!'§ = AngryBirdsFP11.§#"@§;
         if(§2!h§ == null)
         {
            §2!h§ = new §@"0§();
         }
         if(§;"1§ == null || param4)
         {
            this.§#"%§();
         }
         this.§>r§();
      }
      
      public static function §,">§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8!O§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §5!0§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8!O§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §?"C§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8!O§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §"%§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8!O§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §[u§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8!O§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §]!I§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §0"=§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §>r§() : void
      {
      }
      
      private function §#"%§() : void
      {
         this.§2!K§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §?x§.§>t§(§<!'§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §;"1§ = new URLLoader();
         §;"1§.addEventListener(Event.COMPLETE,this.onComplete);
         §;"1§.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         §;"1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"E§);
         §;"1§.load(_loc1_);
      }
      
      protected function §>"E§(param1:SecurityErrorEvent) : void
      {
         §`B§.§-!§();
         §;"1§ = null;
      }
      
      private function §<5§(param1:IOErrorEvent) : void
      {
         §`B§.§-!§();
         §;"1§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §]!a§ = §3!b§.§4%§(param1.currentTarget.data);
         if(!this.§<!o§)
         {
            this.§6"4§ = true;
            return;
         }
         this.§!6§();
         this.§]!G§();
      }
      
      private function §!6§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§<"$§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§2!K§)
         {
            this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §]!a§)
         {
            this.§=a§(_loc2_,§^"B§.§0"=§);
            if(_loc4_ = §=?§.§7[§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§3!9§,
                  "price":_loc2_.p,
                  "available":_loc2_.a,
                  "starPrice":_loc2_.star,
                  "limited":_loc2_.l,
                  "sale":_loc2_.s
               };
               _loc1_.push(_loc5_);
            }
            _loc2_.a;
            _loc2_.id;
            _loc2_.p;
         }
         §8!O§ = _loc1_;
         _loc3_ = this.§2!K§.getItemByName("Repeater_Items") as §<"$§;
         _loc3_.§^![§(null,§3!&§);
         this.§2!K§.§7^§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §=a§(param1:Object, param2:Array) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(param1.id == _loc3_.id)
            {
               param1.p = _loc3_.p;
               param1.star = _loc3_.star;
            }
         }
      }
      
      private function §2"C§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§2!h§)
         {
            if(§2!h§.parent)
            {
               if(§2!h§.parent.contains(§2!h§))
               {
                  §2!h§.parent.removeChild(§2!h§);
               }
            }
         }
         param1.addChild(§2!h§);
         §2!h§.scaleX = §2!h§.scaleY = param2;
         §2!h§.x = param3;
         §2!h§.y = param4;
      }
      
      private function §]!G§() : void
      {
         var _loc5_:§="0§ = null;
         var _loc6_:Array = null;
         var _loc7_:§2"L§ = null;
         var _loc8_:§="0§ = null;
         var _loc9_:§<"$§ = null;
         this.§<!o§ = true;
         var _loc1_:§<"$§ = this.§2!K§.getItemByName("Repeater_Tabs") as §<"$§;
         _loc1_.§^![§(null,§3!&§);
         if(§8!O§ == null)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §'y§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§>!H§ = true;
         }
         var _loc4_:§@!k§;
         (_loc4_ = new §@!k§(_loc2_,false,§@!k§.§8v§)).x = 13;
         _loc4_.y = 9;
         this.§2!K§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§0h§)
         {
            _loc5_ = this.§2!K§.getItemByName("AvatarHolderClip") as §="0§;
            this.§2"C§(_loc5_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc6_ = §=?§.§""F§(_loc3_);
               _loc7_ = §2!h§.§`!i§(_loc6_);
               §%y§.§1[§.avatar = _loc7_;
            }
            else
            {
               this.§"h§(§%y§.§!!j§);
               §2!h§.§[!j§("backgrounds1");
            }
            (this.§2!K§ as §4" §).§!i§();
            §0h§ = false;
         }
         else
         {
            _loc8_ = this.§2!K§.getItemByName("AvatarHolderClip") as §="0§;
            this.§2"C§(_loc8_.mClip);
            §2!h§.§7! §();
            §2!h§.§1"H§.§class§();
            (_loc9_ = this.§2!K§.getItemByName("Repeater_Items") as §<"$§).§^![§(null,§3!&§);
            (this.§2!K§ as §4" §).§!i§();
         }
         this.§8"1§(_loc1_);
         this.§8C§();
      }
      
      private function §8"1§(param1:§<"$§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§+f§)
         {
            _loc2_ = (this.§2!K§ as §4" §).§%"6§(this.§+f§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§+f§.substr("CATEGORY".length);
               this.§2!K§.setText(_loc3_,"Textfield_CategoryTitle");
               this.§2!K§.§7^§("Repeater_Items","Repeater_Items_Tab_" + _loc2_);
               if(§%y§.§1[§.items.§+!Z§.length > 0)
               {
                  param1.§>%§("Repeater_Tabs_Tab_0").§%"5§(§%y§.§1[§.items.§+!Z§[_loc2_].name as String);
               }
            }
            this.§+f§ = null;
         }
      }
      
      private function onUiInteraction(param1:§+!#§) : void
      {
         this.uiInteractionHandler(param1.§`!>§,param1.§4W§,param1.§91§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:§&G§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§8"B§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§3!&§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§3!&§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §&G§)
         {
            _loc4_ = param3 as §&G§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §7x§)
               {
                  if(((_loc4_.mParentContainer as §7x§).mParentContainer as §<"$§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§2!K§ as §4" §).§%"6§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§2!K§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§2!K§.§7^§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §7x§).§!!&§)
                        {
                           (_loc7_ as §3!&§).§%"E§();
                        }
                        (param3 as §3!&§).§>""§();
                        this.§[!w§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §7x§).mParentContainer as §<"$§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§"h§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§-W§(param2.substring("REMOVE_".length));
                     }
                     this.§8C§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§2!K§ as §4" §).§%"6§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §&G§).mParentContainer as §7x§).§!!&§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §3!&§).§%"E§();
               }
               else
               {
                  (_loc12_ as §3!&§).§>""§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§2!K§ as §4" §).§%"6§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §&G§).mParentContainer as §7x§).§!!&§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §3!&§).§%"E§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §%y§.§1[§.avatar.§else§();
               this.§8C§();
               this.§[!w§();
               break;
            case "RANDOMIZE_AVATAR":
               §%y§.§1[§.avatar.§#!]§();
               this.§8C§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§5,§();
               break;
            case "CANCEL_SHARE":
               this.§2!K§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§2!K§.getItemByName("WaitingForReply").setVisibility(true);
               this.§,R§();
               break;
            case "BUY_THESE":
               _loc16_ = §=?§.§`!r§(this.§&!!§);
               AngryBirdsFP11.§#!4§.§1z§();
               this.§&!d§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §"!e§.§+!K§(_loc19_);
                  this.§&!d§.push(_loc19_);
               }
               §=!L§.addCallback("purchaseComplete",this.§="<§);
               §=!L§.§+">§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§>!H§ = false;
               this.§2!K§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §%y§.§1[§.avatar.§0!c§();
               this.§]^§(_loc18_);
               this.§[!w§();
               break;
            case "SET_PROFILE":
               this.§>!H§ = true;
               this.§2!K§.getItemByName("WaitingForReply").setVisibility(true);
               this.§]^§("");
               this.§[!w§();
               break;
            case "CLOSE_AVATAR":
               this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
               this.deActivate();
               break;
            case "BRANDED_SHOP":
               §`B§.§29§(§=1§.§1[§.§,!X§.§6!§,"standard-shop");
               this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§2!K§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§[!w§();
               break;
            case "SCROLL_LEFT":
               this.§[!w§();
         }
      }
      
      private function §,R§() : void
      {
         §"!e§.§]!+§();
         AngryBirdsFP11.§#!4§.§1z§();
         §=!L§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §=!L§.§+">§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§@"3§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§&G§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §"!e§.§3!d§();
         §=!L§.§>7§("permissionRequestComplete",this.permissionRequestComplete);
         this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§2!K§.getItemByName("AvatarSharing").setVisibility(true);
            this.§2!K§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §@"3§();
            _loc2_.§^E§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§%y§.§1[§.avatar.§0!c§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§2!K§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
            while(_loc8_ > 0)
            {
               if((_loc10_ = _loc7_.mClip.getChildAt(_loc8_)) is Bitmap)
               {
                  _loc10_.parent.removeChild(_loc10_);
               }
               _loc8_--;
            }
            (_loc9_ = new Bitmap(_loc4_,"auto",true)).x = 110;
            _loc9_.y = 52;
            _loc7_.mClip.addChildAt(_loc9_,1);
         }
      }
      
      private function §5,§() : void
      {
         this.§2!K§.getItemByName("AvatarSharing").setVisibility(false);
         this.§2!K§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§2!K§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§@"3§ = new §@"3§();
         _loc1_.§^E§();
         var _loc3_:BitmapData = _loc1_.render(§%y§.§1[§.avatar.§0!c§(),null,500);
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(2.5,2.5);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §>"5§.§6s§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
         §@r§.§3"+§(_loc3_,§^"I§.§"!J§,_loc8_,this.§5!t§,this.§+^§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=!L§.§>7§("purchaseComplete",this.§="<§);
         this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
         if(this.§,!,§)
         {
            preClose();
         }
         else
         {
            this.close();
         }
      }
      
      private function §5!t§(param1:*) : void
      {
         this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §+^§() : void
      {
         this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§<!o§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"!e§.§%v§();
         var _loc2_:§="0§ = this.§2!K§.getItemByName("AvatarSavedAnimation") as §="0§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§6"4§)
         {
            this.§6"4§ = false;
            this.§!6§();
         }
         §%y§.§1[§.§00§();
         if(§2!h§.§1"H§ == null)
         {
            §2!h§.§2!B§(§%y§.§1[§.§1!j§());
         }
         if(!this.§<!o§)
         {
            this.§]!G§();
         }
      }
      
      private function §5&§(param1:Boolean) : void
      {
         var _loc2_:§%"3§ = null;
         var _loc3_:§3!&§ = null;
         for each(_loc2_ in §%y§.§1[§.items.§+!Z§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = this.§2!K§.getItemByName(_loc2_.name.toUpperCase()) as §3!&§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §#3§(param1:Boolean) : void
      {
         this.§2!K§.getItemByName("Button_Unequip").setVisibility(param1);
         this.§2!K§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §8C§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§<"$§ = this.§2!K§.getItemByName("Repeater_Items") as §<"$§;
         var _loc2_:Number = 0;
         while(_loc2_ < §%y§.§1[§.items.§+!Z§.length)
         {
            _loc3_ = §%y§.§1[§.items.§+!Z§[_loc2_].name;
            _loc4_ = §%y§.§1[§.avatar.§'M§(_loc3_);
            if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
            {
               if(_loc4_.§3!9§.indexOf("GreenDay") > -1)
               {
                  this.§5&§(false);
                  this.§#3§(false);
               }
               else
               {
                  this.§5&§(true);
                  this.§#3§(true);
               }
            }
            if(_loc4_ == null)
            {
               _loc1_.§>%§("Repeater_Items_Tab_" + _loc2_).§%"5§(_loc3_);
            }
            else
            {
               _loc1_.§>%§("Repeater_Items_Tab_" + _loc2_).§%"5§(_loc4_.§3!9§);
            }
            _loc2_++;
         }
         this.§[!w§();
      }
      
      public function §="<§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§&!d§)
         {
            §"!e§.§`!6§(_loc1_);
         }
         this.§&!d§ = [];
         §=!L§.§>7§("purchaseComplete",this.§="<§);
         this.§#"%§();
      }
      
      private function §]^§(param1:String) : void
      {
         this.§0!B§ = this.§!"1§;
         this.§!"1§ = param1;
         var _loc2_:URLRequest = §?x§.§>t§(§<!'§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§2!s§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§^u§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!<§);
         _loc3_.load(_loc2_);
      }
      
      protected function §0!<§(param1:SecurityErrorEvent) : void
      {
         §`B§.§-!§();
      }
      
      private function §2!s§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§="0§ = null;
         if(this.§!"1§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §'y§).avatarString = this.§!"1§;
            §[!3§.§ !^§(new §^]§(this.§!"1§,(AngryBirdsFP11.sUserProgress as §'y§).§;#§),true,true);
            §<"#§.§'"-§(this.§!"1§);
            _loc2_ = this.§!"1§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§0!B§)
               {
                  if(this.§0!B§.indexOf(_loc3_) == -1)
                  {
                     §"!e§.§5!u§(_loc3_);
                  }
               }
               else
               {
                  §"!e§.§5!u§(_loc3_);
               }
            }
         }
         if(this.§<!o§)
         {
            this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§2!K§.getItemByName("AvatarSavedAnimation") as §="0§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§[!w§();
         }
      }
      
      private function §^u§(param1:IOErrorEvent) : void
      {
         var _loc2_:§="0§ = null;
         if(this.§<!o§)
         {
            this.§2!K§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§2!K§.getItemByName("AvatarSavedAnimation") as §="0§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §-W§(param1:String) : void
      {
         §%y§.§1[§.avatar.§-W§(param1);
         this.§[!w§();
      }
      
      public function §"h§(param1:String) : void
      {
         var _loc4_:§2"L§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §%y§.§1[§.items.§0@§(param1);
         var _loc3_:§2"L§ = §%y§.§1[§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§;!g§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§8S§().§3!9§ != _loc2_.§3!9§)
            {
               _loc4_ = §%y§.§1[§.§#!t§(_loc2_.§3!9§);
               §2!h§.§2!B§(_loc4_,110,174);
               _loc4_.§else§();
               _loc4_.§&"&§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§&v§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §2!h§.§[!j§(_loc6_.§3!9§);
                        }
                        _loc4_.§&"&§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§'M§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§&"&§(§%y§.§1[§.items.§0@§("Backgrounds1"));
               }
            }
            else if(_loc2_.§;!g§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §2!h§.§[!j§(_loc2_.§3!9§);
               §%y§.§1[§.avatar.§&"&§(_loc2_);
            }
            else
            {
               §%y§.§1[§.avatar.§&"&§(_loc2_);
            }
         }
         else
         {
            §%3§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§[!w§();
      }
      
      private function §[!w§() : void
      {
         var _loc4_:§%"3§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§3!&§ = null;
         var _loc15_:§3!&§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §'y§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §%y§.§1[§.avatar.§0!c§()).split("-");
            if(_loc10_.length != _loc12_.length)
            {
               _loc2_ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc3_.indexOf(_loc13_) == -1)
               {
                  _loc2_ = true;
               }
            }
         }
         for each(_loc4_ in §%y§.§1[§.items.§+!Z§)
         {
            (_loc14_ = this.§2!K§.getItemByName(_loc4_.name.toUpperCase()) as §3!&§).§7!U§();
         }
         this.§&!!§ = [];
         for each(_loc5_ in §%y§.§1[§.avatar.§&v§)
         {
            _loc15_ = this.§2!K§.getItemByName(_loc5_.category.toUpperCase()) as §3!&§;
            _loc16_ = §5!0§(_loc5_.§3!9§);
            _loc15_.§0B§(_loc5_.§3!9§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§&!!§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§2!K§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§2!K§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§2!K§.getItemByName("Textfield_Price").setVisibility(true);
            this.§2!K§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§2!K§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§2!K§.getItemByName("Textfield_Price").setVisibility(false);
            this.§2!K§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§>!H§)
         {
            (this.§2!K§.getItemByName("SetAvatarProfileButton") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2!K§.getItemByName("SetFacebookProfileButton") as §]!<§).setComponentState(§^q§.§?!0§);
         }
         else if(_loc1_ > 0)
         {
            (this.§2!K§.getItemByName("SetAvatarProfileButton") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2!K§.getItemByName("SetFacebookProfileButton") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§2!K§.getItemByName("SetFacebookProfileButton") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§2!K§.getItemByName("SetAvatarProfileButton") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§2!K§.getItemByName("SetAvatarProfileButton") as §]!<§).setComponentState(§^q§.§?!0§);
               this.§2!K§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§2!K§.setText(§4" §.§>'§(_loc1_),"Textfield_Price");
         if(this.§`!j§ == null)
         {
            this.§`!j§ = new §@"3§();
            this.§`!j§.§^E§();
         }
         var _loc6_:§]!<§ = this.§2!K§.getItemByName("SetAvatarProfileButton") as §]!<§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §%y§.§1[§.avatar.§0!c§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§`!j§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§7x§;
         if(_loc9_ = this.§2!K§.getItemByName(this.§2!K§.§%w§("Repeater_Items")) as §7x§)
         {
            this.§2!K§.setText("Page " + (_loc9_.§2!l§ + 1).toString() + "/" + _loc9_.§!!%§,"Textfield_PageNumber");
            if(_loc9_.§!!%§ == 1)
            {
               this.§2!K§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§2!K§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§2!K§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§2!K§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§2!K§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§2!K§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
