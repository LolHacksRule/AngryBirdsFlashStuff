package §5!&§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import § "!§.§""X§;
   import §!"@§.§]"1§;
   import §%i§.§+"6§;
   import §%i§.§4!w§;
   import §%i§.§7!t§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§'j§;
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §,%§.§<D§;
   import §0!C§.§ 3§;
   import §0D§.§3!R§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import §4y§.Item;
   import §4y§.§]"6§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§="C§;
   import §6!H§.§6!e§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<w§.§9"?§;
   import §<w§.§`h§;
   import §=!@§.§1!l§;
   import §@!%§.§#!$§;
   import §]!w§.§'G§;
   import §]!w§.§9!x§;
   import §]!w§.§[!X§;
   import §]]§.§1"2§;
   import §^!o§.§^"$§;
   import §`!6§.§+"O§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §+"@§ extends Popup implements §&!l§, §4d§
   {
      
      private static var §&"&§:Class = §2N§;
      
      public static var §!O§:String;
      
      private static var §+E§:Array = [{
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
      },{
         "a":true,
         "id":"B20010",
         "p":0,
         "star":600
      }];
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §8!]§:String;
      
      public static var §6a§:Array;
      
      private static var §!!0§:§'G§;
      
      private static var §2!;§:Boolean = true;
      
      public static var §"!T§:Array;
      
      public static var §3P§:URLLoader;
      
      private static const §0"B§:String = "In-app Shop Avatars";
       
      
      private var §>"P§:StatePopupManager;
      
      private var §;"A§:Item = null;
      
      private var §-"B§:Boolean = false;
      
      private var §4"#§:String;
      
      private var §7"H§:Array;
      
      private var §7!,§:Array;
      
      private var §@v§:Boolean = false;
      
      private var §+f§:Boolean = false;
      
      private var §2"@§:§`_§;
      
      private var §?u§:§""X§;
      
      private var §]!h§:String;
      
      private var §?"V§:String;
      
      private var §4!u§:§6!F§;
      
      private var §0"-§:Boolean;
      
      public function §+"@§(param1:§`_§, param2:StatePopupManager, param3:String = null, param4:Boolean = false)
      {
         this.§7"H§ = [];
         this.§7!,§ = [];
         this.§>"P§ = param2;
         super(§9"H§.§5!h§(§&"&§),param1);
         if(param3)
         {
            this.§]!h§ = param3;
         }
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
         this.§2"@§ = param1;
         if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-2"))
         {
            this.§2"@§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§2"@§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §!O§ = AngryBirdsFP11.§?8§;
         if(§!!0§ == null)
         {
            §!!0§ = new §'G§();
         }
         if(§3P§ == null || param4)
         {
            this.§[!#§();
         }
         this.§=0§();
      }
      
      public static function §4"M§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §4!x§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §%">§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §]!V§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §'!5§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6a§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §8!c§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §+E§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      private function §=0§() : void
      {
      }
      
      private function §[!#§() : void
      {
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §9!7§.§,!l§(§!O§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §3P§ = new URLLoader();
         §3P§.addEventListener(Event.COMPLETE,this.onComplete);
         §3P§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         §3P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
         §3P§.load(_loc1_);
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         §9"6§.§#!o§();
         §3P§ = null;
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         §9"6§.§#!o§();
         §3P§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §"!T§ = JSON.parse(param1.currentTarget.data) as Array;
         if(!this.§-"B§)
         {
            this.§+f§ = true;
            return;
         }
         this.§!!o§();
         this.§^F§();
      }
      
      private function §!!o§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§7!t§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§2"@§)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §"!T§)
         {
            this.§?!A§(_loc2_,§+"@§.§+E§);
            if(_loc4_ = §<D§.§&`§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§&N§,
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
         §6a§ = _loc1_;
         _loc3_ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§;
         _loc3_.§%%§(null,§9!x§);
         this.§2"@§.§+"I§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §?!A§(param1:Object, param2:Array) : void
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
      
      private function §<q§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§!!0§)
         {
            if(§!!0§.parent)
            {
               if(§!!0§.parent.contains(§!!0§))
               {
                  §!!0§.parent.removeChild(§!!0§);
               }
            }
         }
         param1.addChild(§!!0§);
         §!!0§.scaleX = §!!0§.scaleY = param2;
         §!!0§.x = param3;
         §!!0§.y = param4;
      }
      
      private function §^F§() : void
      {
         var _loc5_:§^n§ = null;
         var _loc6_:Array = null;
         var _loc7_:§[!X§ = null;
         var _loc8_:§^n§ = null;
         var _loc9_:§7!t§ = null;
         this.§-"B§ = true;
         var _loc1_:§7!t§ = this.§2"@§.getItemByName("Repeater_Tabs") as §7!t§;
         _loc1_.§%%§(null,§9!x§);
         if(§6a§ == null)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §#!$§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§@v§ = true;
         }
         var _loc4_:§!"O§;
         (_loc4_ = new §!"O§(_loc2_,false,§!"O§.§'"O§)).x = 13;
         _loc4_.y = 9;
         this.§2"@§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§2!;§)
         {
            _loc5_ = this.§2"@§.getItemByName("AvatarHolderClip") as §^n§;
            this.§<q§(_loc5_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc6_ = §<D§.§'!^§(_loc3_);
               _loc7_ = §!!0§.§`!Y§(_loc6_);
               §]"1§.§&"5§.avatar = _loc7_;
            }
            else
            {
               this.§""L§(§]"1§.§3!=§);
               §!!0§.§[!R§("backgrounds1");
            }
            (this.§2"@§ as §+"O§).§#"J§();
            §2!;§ = false;
         }
         else
         {
            _loc8_ = this.§2"@§.getItemByName("AvatarHolderClip") as §^n§;
            this.§<q§(_loc8_.mClip);
            §!!0§.§1!R§();
            §!!0§.§6[§.§ null§();
            (_loc9_ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§).§%%§(null,§9!x§);
            (this.§2"@§ as §+"O§).§#"J§();
         }
         this.§!!Y§(_loc1_);
         this.§#]§();
      }
      
      private function §!!Y§(param1:§7!t§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§]!h§)
         {
            _loc2_ = (this.§2"@§ as §+"O§).§ <§(this.§]!h§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§]!h§.substr("CATEGORY".length);
               this.§2"@§.setText(_loc3_,"Textfield_CategoryTitle");
               this.§2"@§.§+"I§("Repeater_Items","Repeater_Items_Tab_" + _loc2_);
               if(§]"1§.§&"5§.items.§`!s§.length > 0)
               {
                  param1.§0j§("Repeater_Tabs_Tab_0").§1!a§(§]"1§.§&"5§.items.§`!s§[_loc2_].name as String);
               }
            }
            this.§]!h§ = null;
         }
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:§!>§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§4!w§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§9!x§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§9!x§ = null;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:Array = null;
         var _loc19_:§="C§ = null;
         var _loc20_:§1"2§ = null;
         var _loc21_:String = null;
         var _loc22_:Item = null;
         var _loc23_:String = null;
         var _loc24_:String = null;
         if(param3 is §!>§)
         {
            _loc4_ = param3 as §!>§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §+"6§)
               {
                  if(((_loc4_.mParentContainer as §+"6§).mParentContainer as §7!t§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§2"@§ as §+"O§).§ <§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§2"@§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§2"@§.§+"I§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §+"6§).§+?§)
                        {
                           (_loc7_ as §9!x§).§3!J§();
                        }
                        (param3 as §9!x§).§2!5§();
                        this.§3Y§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §+"6§).mParentContainer as §7!t§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§""L§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§8O§(param2.substring("REMOVE_".length));
                     }
                     this.§#]§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§2"@§ as §+"O§).§ <§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §!>§).mParentContainer as §+"6§).§+?§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §9!x§).§3!J§();
               }
               else
               {
                  (_loc12_ as §9!x§).§2!5§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§2"@§ as §+"O§).§ <§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §!>§).mParentContainer as §+"6§).§+?§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §9!x§).§3!J§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §]"1§.§&"5§.avatar.§[!p§();
               this.§#]§();
               this.§3Y§();
               break;
            case "RANDOMIZE_AVATAR":
               §]"1§.§&"5§.avatar.§!"7§();
               this.§#]§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§@;§();
               break;
            case "CANCEL_SHARE":
               this.§2"@§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
               this.§+z§();
               break;
            case "BUY_THESE":
               _loc16_ = §<D§.§[V§(this.§7"H§);
               _loc17_ = 0;
               for each(_loc22_ in this.§7"H§)
               {
                  _loc17_ += §4!x§(_loc22_.§&N§);
               }
               if(_loc17_ > §%"S§.§!C§.§9"%§.§,T§.§0Q§)
               {
                  §9"6§.§;!J§(§^"$§.§1!J§);
                  return;
               }
               this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
               this.§7!,§ = [];
               _loc18_ = _loc16_.split("-");
               for each(_loc23_ in _loc18_)
               {
                  _loc24_ = this.§`x§(_loc23_);
                  §@q§.§!!`§(_loc24_);
                  this.§7!,§.push(_loc23_);
               }
               _loc19_ = new §="C§(_loc16_,[]);
               (_loc20_ = new §1"2§(_loc19_,new §#l§(1,0,_loc17_))).addEventListener(§1!l§.§9E§,this.§?"$§);
               break;
            case "SET_AVATAR":
               this.§@v§ = false;
               this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
               _loc21_ = §]"1§.§&"5§.avatar.§9" §();
               this.§"t§(_loc21_);
               this.§3Y§();
               break;
            case "SET_PROFILE":
               this.§@v§ = true;
               this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
               this.§"t§("");
               this.§3Y§();
               break;
            case "CLOSE_AVATAR":
               this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
               this.deActivate();
               break;
            case "BRANDED_SHOP":
               §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"standard-shop");
               this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§2"@§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§3Y§();
               break;
            case "SCROLL_LEFT":
               this.§3Y§();
         }
      }
      
      private function §`x§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]"1§.§&"5§.avatar.§2W§())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      private function §+z§() : void
      {
         §@q§.§`"J§();
         AngryBirdsFP11.§>m§.§^X§();
         §'"+§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §'"+§.§'!#§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§""X§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§!>§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §@q§.§;"<§();
         §'"+§.§"!6§("permissionRequestComplete",this.permissionRequestComplete);
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§2"@§.getItemByName("AvatarSharing").setVisibility(true);
            this.§2"@§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §""X§();
            _loc2_.§#h§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§]"1§.§&"5§.avatar.§9" §(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§2"@§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §@;§() : void
      {
         this.§2"@§.getItemByName("AvatarSharing").setVisibility(false);
         this.§2"@§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§""X§ = new §""X§();
         _loc1_.§#h§();
         var _loc3_:BitmapData = _loc1_.render(§]"1§.§&"5§.avatar.§9" §(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §?q§.§ q§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
         §'j§.§1!'§(_loc3_,§ 3§.§1"I§,_loc8_,this.§&t§,this.§+#§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§!U§(this.§4!u§);
         this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
         if(this.§0"-§)
         {
            preClose();
         }
         else
         {
            this.close();
         }
      }
      
      private function §&t§(param1:*) : void
      {
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §+#§() : void
      {
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§-"B§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@q§.§"C§();
         §@q§.trackPageView(this);
         var _loc2_:§^n§ = this.§2"@§.getItemByName("AvatarSavedAnimation") as §^n§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         this.§?!f§(new §6!F§(this,true,true,false));
         if(this.§+f§)
         {
            this.§+f§ = false;
            this.§!!o§();
         }
         §]"1§.§&"5§.§]t§();
         if(§!!0§.§6[§ == null)
         {
            §!!0§.§2!Y§(§]"1§.§&"5§.§0!;§());
         }
         if(!this.§-"B§)
         {
            this.§^F§();
         }
      }
      
      private function §]E§(param1:Boolean) : void
      {
         var _loc2_:§]"6§ = null;
         var _loc3_:§9!x§ = null;
         for each(_loc2_ in §]"1§.§&"5§.items.§`!s§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = this.§2"@§.getItemByName(_loc2_.name.toUpperCase()) as §9!x§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §6Y§(param1:Boolean) : void
      {
         this.§2"@§.getItemByName("Button_Unequip").setVisibility(param1);
         this.§2"@§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §#]§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§7!t§ = this.§2"@§.getItemByName("Repeater_Items") as §7!t§;
         var _loc2_:Number = 0;
         while(_loc2_ < §]"1§.§&"5§.items.§`!s§.length)
         {
            _loc3_ = §]"1§.§&"5§.items.§`!s§[_loc2_].name;
            _loc4_ = §]"1§.§&"5§.avatar.§>$§(_loc3_);
            if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
            {
               if(_loc4_.§&N§.indexOf("GreenDay") > -1)
               {
                  this.§]E§(false);
                  this.§6Y§(false);
               }
               else
               {
                  this.§]E§(true);
                  this.§6Y§(true);
               }
            }
            if(_loc4_ == null)
            {
               _loc1_.§0j§("Repeater_Items_Tab_" + _loc2_).§1!a§(_loc3_);
            }
            else
            {
               _loc1_.§0j§("Repeater_Items_Tab_" + _loc2_).§1!a§(_loc4_.§&N§);
            }
            _loc2_++;
         }
         this.§3Y§();
      }
      
      public function §?"$§(param1:§1!l§ = null) : void
      {
         var _loc2_:§1"2§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 && param1.currentTarget is §1"2§)
         {
            _loc2_ = param1.currentTarget as §1"2§;
         }
         §@q§.trackPageView(this,§@q§.§7!K§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§7!,§)
         {
            _loc5_ = this.§`x§(_loc4_);
            §@q§.§@§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §@q§.trackTransactionItems(_loc2_.orderId,§0"B§,"1 x ",_loc3_);
         this.§7!,§ = [];
         if(param1 && param1.currentTarget is §1"2§)
         {
            (param1.currentTarget as §1"2§).removeEventListener(Event.COMPLETE,this.§?"$§);
         }
         this.§[!#§();
      }
      
      private function §"t§(param1:String) : void
      {
         this.§?"V§ = this.§4"#§;
         this.§4"#§ = param1;
         var _loc2_:URLRequest = §9!7§.§,!l§(§!O§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§6%§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§["+§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7+§);
         _loc3_.load(_loc2_);
      }
      
      protected function §7+§(param1:SecurityErrorEvent) : void
      {
         §9"6§.§#!o§();
      }
      
      private function §6%§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§^n§ = null;
         if(this.§4"#§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).avatarString = this.§4"#§;
            §9"?§.§"!V§(new §`h§(this.§4"#§,(AngryBirdsFP11.sUserProgress as §#!$§).§5!0§),true,true);
            § ! §.§6"K§(this.§4"#§);
            _loc2_ = this.§4"#§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§?"V§)
               {
                  if(this.§?"V§.indexOf(_loc3_) == -1)
                  {
                     §@q§.§@0§(_loc3_);
                  }
               }
               else
               {
                  §@q§.§@0§(_loc3_);
               }
            }
         }
         if(this.§-"B§)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§2"@§.getItemByName("AvatarSavedAnimation") as §^n§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§3Y§();
         }
      }
      
      private function §["+§(param1:IOErrorEvent) : void
      {
         var _loc2_:§^n§ = null;
         if(this.§-"B§)
         {
            this.§2"@§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§2"@§.getItemByName("AvatarSavedAnimation") as §^n§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §8O§(param1:String) : void
      {
         §]"1§.§&"5§.avatar.§8O§(param1);
         this.§3Y§();
      }
      
      public function §""L§(param1:String) : void
      {
         var _loc4_:§[!X§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §]"1§.§&"5§.items.§3"[§(param1);
         var _loc3_:§[!X§ = §]"1§.§&"5§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§;"V§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§=!J§().§&N§ != _loc2_.§&N§)
            {
               _loc4_ = §]"1§.§&"5§.§@9§(_loc2_.§&N§);
               §!!0§.§2!Y§(_loc4_,110,174);
               _loc4_.§[!p§();
               _loc4_.§]"A§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§ 2§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §!!0§.§[!R§(_loc6_.§&N§);
                        }
                        _loc4_.§]"A§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§>$§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§]"A§(§]"1§.§&"5§.items.§3"[§("Backgrounds1"));
               }
            }
            else if(_loc2_.§;"V§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §!!0§.§[!R§(_loc2_.§&N§);
               §]"1§.§&"5§.avatar.§]"A§(_loc2_);
            }
            else
            {
               §]"1§.§&"5§.avatar.§]"A§(_loc2_);
            }
         }
         else
         {
            §;!=§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§3Y§();
      }
      
      private function §3Y§() : void
      {
         var _loc4_:§]"6§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§9!x§ = null;
         var _loc15_:§9!x§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §#!$§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §]"1§.§&"5§.avatar.§9" §()).split("-");
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
         for each(_loc4_ in §]"1§.§&"5§.items.§`!s§)
         {
            (_loc14_ = this.§2"@§.getItemByName(_loc4_.name.toUpperCase()) as §9!x§).§`@§();
         }
         this.§7"H§ = [];
         for each(_loc5_ in §]"1§.§&"5§.avatar.§ 2§)
         {
            _loc15_ = this.§2"@§.getItemByName(_loc5_.category.toUpperCase()) as §9!x§;
            _loc16_ = §4!x§(_loc5_.§&N§);
            _loc15_.§[!B§(_loc5_.§&N§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§7"H§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§2"@§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§2"@§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§2"@§.getItemByName("Textfield_Price").setVisibility(true);
            this.§2"@§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§2"@§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§2"@§.getItemByName("Textfield_Price").setVisibility(false);
            this.§2"@§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§@v§)
         {
            (this.§2"@§.getItemByName("SetAvatarProfileButton") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2"@§.getItemByName("SetFacebookProfileButton") as §7"0§).setComponentState(§!!G§.§[E§);
         }
         else if(_loc1_ > 0)
         {
            (this.§2"@§.getItemByName("SetAvatarProfileButton") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2"@§.getItemByName("SetFacebookProfileButton") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§2"@§.getItemByName("SetFacebookProfileButton") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§2"@§.getItemByName("SetAvatarProfileButton") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§2"@§.getItemByName("SetAvatarProfileButton") as §7"0§).setComponentState(§!!G§.§[E§);
               this.§2"@§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§2"@§.setText(_loc1_ + "","Textfield_Price");
         if(this.§?u§ == null)
         {
            this.§?u§ = new §""X§();
            this.§?u§.§#h§();
         }
         var _loc6_:§7"0§ = this.§2"@§.getItemByName("SetAvatarProfileButton") as §7"0§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §]"1§.§&"5§.avatar.§9" §();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§?u§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§+"6§;
         if(_loc9_ = this.§2"@§.getItemByName(this.§2"@§.§8!F§("Repeater_Items")) as §+"6§)
         {
            this.§2"@§.setText("Page " + (_loc9_.§6"B§ + 1).toString() + "/" + _loc9_.§<'§,"Textfield_PageNumber");
            if(_loc9_.§<'§ == 1)
            {
               this.§2"@§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§2"@§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§2"@§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§2"@§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§2"@§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§2"@§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§,`§;
      }
   }
}
