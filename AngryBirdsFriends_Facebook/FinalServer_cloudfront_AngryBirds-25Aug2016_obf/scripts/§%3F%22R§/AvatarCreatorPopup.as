package §?"R§
{
   import § P§.§?!6§;
   import §!x§.§4"d§;
   import §!x§.§6#L§;
   import §!x§.§?!Q§;
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'!U§.§>$$§;
   import §+"%§.§6X§;
   import §,n§.§+!f§;
   import §,n§.§3§;
   import §,n§.§3I§;
   import §-"i§.StateTournamentResults;
   import §1"0§.§4$#§;
   import §1"1§.§3!m§;
   import §1"o§.§&"[§;
   import §1"o§.§<s§;
   import §1"o§.Avatar;
   import §4#%§.§@#@§;
   import §4#[§.§6U§;
   import §4q§.§!#Q§;
   import §6"r§.§-"N§;
   import §6"r§.§3#@§;
   import §6"r§.§9a§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §6#s§.§1"G§;
   import §6#s§.Item;
   import §8§.§#$+§;
   import §9"#§.§4$5§;
   import §;!H§.§%"K§;
   import §;!H§.§<!K§;
   import §;4§.§-#a§;
   import §;4§.§8"`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>q§.CoinShopPopup;
   import §@"D§.§`"T§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import §^$4§.§>"T§;
   import com.rovio.assets.§@`§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class AvatarCreatorPopup extends AbstractPopup implements §@J§, § 1§, §@#@§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §!"_§:String = "In-app Shop Avatars";
      
      private static const §<E§:int = 75;
      
      private static var §"$$§:Class = §4!v§;
      
      public static var §>!F§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §+R§:String;
      
      public static var §;+§:Array;
      
      private static var §-!g§:§<s§;
      
      private static var §<W§:Boolean = true;
      
      private static const §?#]§:String = "What\'s on your mind?";
       
      
      private var §<!@§:Item = null;
      
      private var §]#n§:Boolean = false;
      
      private var §[!+§:String;
      
      private var §90§:Array;
      
      private var §1i§:Array;
      
      private var §7"%§:Boolean = false;
      
      private var §;=§:§3#2§;
      
      private var §!#P§:String;
      
      private var §8#-§:String;
      
      private var §^m§:Wallet;
      
      private var §,F§:Boolean;
      
      private var §<!7§:String;
      
      private var §switch§:Boolean;
      
      private var §&"#§:Array;
      
      private var §%1§:Array;
      
      private var §@# §:Boolean = true;
      
      private var §;!a§:Array;
      
      private var §1"S§:Boolean = false;
      
      private var §=$-§:TextField;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§90§ = [];
         this.§1i§ = [];
         this.§;!a§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§?!Q§.§<1§(§"$$§),ID);
         this.§<!7§ = param3;
      }
      
      public static function §!!!§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §%T§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §[#`§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §'#M§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §0#5§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §5#K§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;+§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§<!7§)
         {
            this.§!#P§ = this.§<!7§;
         }
         if(userProgress.§9"C§("1000-2"))
         {
            §7!j§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §7!j§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §>!F§ = AngryBirdsBase.SERVER_ROOT;
         if(§-!g§ == null)
         {
            §-!g§ = new §<s§();
         }
         if(§+3§(AngryBirdsBase.singleton.dataModel).§;#Q§.§-#!§)
         {
            this.§&-§(true);
            §+3§(AngryBirdsBase.singleton.dataModel).§;#Q§.addEventListener(Event.COMPLETE,this.§!r§);
         }
         this.§]#n§ = false;
      }
      
      protected function §<$+§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.closePopupById(id);
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      private function §;$!§() : void
      {
         this.§&-§(true);
         §+3§(AngryBirdsBase.singleton.dataModel).§;#Q§.loadItems();
         §+3§(AngryBirdsBase.singleton.dataModel).§;#Q§.addEventListener(Event.COMPLETE,this.§!r§);
      }
      
      private function §!r§(param1:Event) : void
      {
         §+3§(AngryBirdsBase.singleton.dataModel).§;#Q§.removeEventListener(Event.COMPLETE,this.§!r§);
         this.§@# § = false;
         this.§<"8§();
      }
      
      private function §##^§() : void
      {
         var _loc6_:§-"N§ = null;
         var _loc7_:int = 0;
         var _loc8_:§>$$§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§3#@§ = §7!j§.getItemByName("Repeater_Items") as §3#@§;
         var _loc2_:§3#@§ = §7!j§.getItemByName("Repeater_Tabs") as §3#@§;
         var _loc3_:Class = §@`§.§4!i§("Tag_New");
         var _loc4_:Class = §@`§.§4!i§("Tag_Sale");
         this.§&"#§ = new Array();
         this.§%1§ = new Array();
         if(§3!m§.§3!]§.items.§!&§.length > 0)
         {
            _loc2_.§`"I§("Repeater_Tabs_Tab_0").§9"S§(§3!m§.§3!]§.items.§!&§[0].name as String);
            for each(_loc6_ in _loc2_.§5&§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§5&§)
               {
                  if(§3!m§.§3!]§.items.§!&§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §3!m§.§3!]§.items.§9$!§(§3!m§.§3!]§.items.§!&§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§5#K§(_loc9_[_loc12_].mId))
                        {
                           this.§&"#§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§[#`§(_loc9_[_loc12_].mId))
                        {
                           this.§%1§.push(_loc9_[_loc12_].mId);
                           if(!_loc11_)
                           {
                              _loc14_ = new _loc4_();
                              _loc8_.mClip.addChild(_loc14_);
                              _loc11_ = true;
                           }
                        }
                        _loc12_++;
                     }
                  }
                  _loc7_++;
               }
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < §3!m§.§3!]§.items.§!&§.length)
         {
            _loc15_ = §3!m§.§3!]§.items.§!&§[_loc5_].name;
            _loc1_.§`"I§("Repeater_Items_Tab_" + _loc5_).§9"S§(_loc15_);
            _loc5_++;
         }
         _loc1_.§5%§("Repeater_Items_Tab_0");
         _loc2_.§5%§("Repeater_Tabs_Tab_0");
      }
      
      private function §`$7§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§-!g§)
         {
            if(§-!g§.parent)
            {
               if(§-!g§.parent.contains(§-!g§))
               {
                  §-!g§.parent.removeChild(§-!g§);
               }
            }
         }
         param1.addChild(§-!g§);
         §-!g§.scaleX = §-!g§.scaleY = param2;
         §-!g§.x = param3;
         §-!g§.y = param4;
      }
      
      private function §<"8§() : void
      {
         var _loc6_:§="T§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§="T§ = null;
         this.§]#n§ = true;
         var _loc1_:§3#@§ = §7!j§.getItemByName("Repeater_Items") as §3#@§;
         _loc1_.§@$0§(§?!6§.§3#r§(),§&"[§);
         var _loc2_:§3#@§ = §7!j§.getItemByName("Repeater_Tabs") as §3#@§;
         _loc2_.§@$0§(§?!6§.§`T§(),§&"[§);
         this.§&-§(false);
         if(§;+§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§7"%§ = true;
         }
         var _loc5_:§+!f§;
         (_loc5_ = new §+!f§(_loc3_,false,§+!f§.§%#M§)).x = 13;
         _loc5_.y = 9;
         §7!j§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§<W§)
         {
            _loc6_ = §7!j§.getItemByName("AvatarHolderClip") as §="T§;
            this.§`$7§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §6U§.§;!,§(_loc4_);
               _loc8_ = §-!g§.§`z§(_loc7_);
               §3!m§.§3!]§.avatar = _loc8_;
            }
            else
            {
               this.§6"9§(§3!m§.§1"m§);
               §-!g§.§""_§("backgrounds1");
            }
            this.§##^§();
            §<W§ = false;
         }
         else
         {
            _loc9_ = §7!j§.getItemByName("AvatarHolderClip") as §="T§;
            this.§`$7§(_loc9_.mClip);
            §-!g§.§#$8§();
            §-!g§.§'!n§.§"!P§();
            this.§##^§();
         }
         this.§7!<§(_loc2_);
         this.§[#[§();
      }
      
      private function §7!<§(param1:§3#@§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§!#P§)
         {
            _loc2_ = §?!6§.§9"9§(this.§!#P§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§!#P§.substr("CATEGORY".length);
               §7!j§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§5%§("Repeater_Items_Tab_" + _loc2_);
               if(§3!m§.§3!]§.items.§!&§.length > 0)
               {
                  param1.§`"I§("Repeater_Tabs_Tab_0").§9"S§(§3!m§.§3!]§.items.§!&§[_loc2_].name as String);
               }
            }
            this.§!#P§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:§>$$§ = null;
         var _loc5_:int = 0;
         null;
         null;
         null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§&"[§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§&"[§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§=#V§ = null;
         null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §>$$§)
         {
            _loc4_ = param3 as §>$$§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §-"N§)
               {
                  if(((_loc4_.mParentContainer as §-"N§).mParentContainer as §3#@§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §?!6§.§9"9§(param2)) != -1)
                     {
                        §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
                        param2.substr("CATEGORY".length);
                        (§7!j§.getItemByName("Repeater_Items") as §3#@§).§5%§("Repeater_Items_Tab_" + _loc5_);
                        var _loc27_:int = 0;
                        var _loc28_:* = (_loc4_.mParentContainer as §-"N§).§5&§;
                        while(§§hasnext(_loc28_,_loc27_))
                        {
                           (§§nextvalue(_loc27_,_loc28_) as §&"[§).§&$3§();
                        }
                        (param3 as §&"[§).§4!+§();
                        this.§;;§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §-"N§).mParentContainer as §3#@§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §#$+§.playSound("Menu_Select",§#$+§.§'!o§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§6"9§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§!"l§(param2.substring("REMOVE_".length));
                     }
                     this.§[#[§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §?!6§.§9"9§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §>$$§).mParentContainer as §-"N§).§5&§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §&"[§).§&$3§();
               }
               else
               {
                  (_loc13_ as §&"[§).§4!+§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §?!6§.§9"9§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §>$$§).mParentContainer as §-"N§).§5&§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §&"[§).§&$3§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               §3!m§.§3!]§.avatar.§@$ §();
               this.§[#[§();
               this.§;;§();
               break;
            case "RANDOMIZE_AVATAR":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               §3!m§.§3!]§.avatar.§!!P§();
               this.§[#[§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§?!b§();
               break;
            case "CANCEL_SHARE":
               §7!j§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§&-§(true);
               this.§?"c§();
               break;
            case "BUY_THESE":
               §#$+§.playSound("Shop_Buy",§#$+§.§'!o§);
               _loc17_ = §6U§.§]p§(this.§90§);
               _loc18_ = 0;
               for each(_loc23_ in this.§90§)
               {
                  _loc18_ += §%T§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§<$&§.§[#u§)
               {
                  this.§]#n§ = false;
                  (_loc24_ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP,CoinShopPopup.§#!Y§)).addEventListener(§4$#§.CLOSE,this.§`H§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§&-§(true);
               this.§1i§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§4#0§(_loc25_);
                  §,"W§.§7h§(_loc26_);
                  this.§1i§.push(_loc25_);
               }
               _loc20_ = new §=#V§(_loc17_,[]);
               new §%"K§(_loc20_,new §6!J§(1,0,_loc18_),ID).addEventListener(§>"T§.§>"d§,this.§<Y§);
               break;
            case "SET_AVATAR":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               this.§7"%§ = false;
               this.§&-§(true);
               _loc22_ = §3!m§.§3!]§.avatar.§!#>§();
               this.§try§(_loc22_);
               this.§;;§();
               this.§&-§(true);
               this.§?"c§();
               break;
            case "SET_PROFILE":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               this.§7"%§ = true;
               this.§&-§(true);
               this.§try§("");
               this.§;;§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §7!j§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§ R§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               this.§;;§();
               break;
            case "SCROLL_LEFT":
               §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
               this.§;;§();
         }
      }
      
      protected function §`H§(param1:Event) : void
      {
      }
      
      private function §4#0§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §3!m§.§3!]§.avatar.§6"§())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      private function §?"c§() : void
      {
         §,"W§.§ !u§();
         AngryBirdsBase.singleton.exitFullScreen();
         §6X§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §6X§.§3U§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3#2§ = null;
         var _loc4_:int = 0;
         var _loc5_:BitmapData = null;
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:§>$$§ = null;
         var _loc9_:int = 0;
         var _loc10_:Bitmap = null;
         var _loc11_:DisplayObject = null;
         §,"W§.§#"!§();
         §6X§.§5!3§("permissionRequestComplete",this.permissionRequestComplete);
         this.§&-§(false);
         if(param1 == "true")
         {
            §7!j§.getItemByName("AvatarSharing").setVisibility(true);
            §7!j§.getItemByName("ShareAvatarWindow").setVisibility(true);
            this.§=$-§ = TextField(§7!j§.getItemByName("ShareAvatarWindow").mClip.getChildByName("captionTextField"));
            this.§=$-§.maxChars = §<E§;
            this.§=$-§.text = §?#]§;
            this.§=$-§.textColor = 6710886;
            if(!this.§=$-§.hasEventListener(MouseEvent.CLICK))
            {
               this.§=$-§.addEventListener(MouseEvent.CLICK,this.§#"U§);
            }
            _loc2_ = Math.random() * this.§;!a§.length;
            (§7!j§.getItemByName("ShareAvatarWindow_Title") as §]$!§).setText(this.§;!a§[_loc2_]);
            _loc3_ = new §3#2§();
            _loc3_.§5#h§();
            _loc4_ = 173;
            _loc5_ = _loc3_.render(§3!m§.§3!]§.avatar.§!#>§(),null,_loc4_);
            _loc6_ = new Matrix();
            _loc7_ = _loc4_ / 100 / 2;
            _loc6_.scale(_loc7_,_loc7_);
            _loc9_ = (_loc8_ = §7!j§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
            while(_loc9_ > 0)
            {
               if((_loc11_ = _loc8_.mClip.getChildAt(_loc9_)) is Bitmap)
               {
                  _loc11_.parent.removeChild(_loc11_);
               }
               _loc9_--;
            }
            (_loc10_ = new Bitmap(_loc5_,"auto",true)).x = -5;
            _loc10_.y = 52;
            _loc8_.mClip.addChildAt(_loc10_,1);
         }
      }
      
      private function §#"U§(param1:MouseEvent) : void
      {
         if(this.§=$-§.text == §?#]§)
         {
            this.§=$-§.text = "";
            this.§=$-§.textColor = 16777215;
         }
      }
      
      private function §?!b§() : void
      {
         §7!j§.getItemByName("AvatarSharing").setVisibility(false);
         §7!j§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§&-§(true);
         var _loc1_:§3#2§ = new §3#2§();
         _loc1_.§5#h§();
         var _loc2_:int = 750;
         var _loc3_:BitmapData = _loc1_.render(§3!m§.§3!]§.avatar.§!#>§(),null,_loc2_,false,null,null,0,false,0.1);
         var _loc5_:MovieClip = new §@`§.§4!i§("WatermarkPlayOnFacebook")();
         var _loc6_:Matrix = new Matrix();
         var _loc7_:Number = _loc2_ / 100 / 2;
         _loc6_.scale(_loc7_,_loc7_);
         var _loc8_:* = _loc3_.width - _loc2_ >> 1;
         var _loc9_:* = _loc3_.height - _loc2_ >> 1;
         _loc6_.translate(_loc8_,_loc3_.height - _loc9_);
         _loc3_.draw(_loc5_,_loc6_,null,null,null,true);
         var _loc10_:String = userProgress.userID;
         var _loc11_:Object;
         (_loc11_ = new Object()).name = this.§=$-§.text != §?#]§ ? this.§=$-§.text : "";
         §6#L§.§]!R§(_loc3_,§`"T§.§9z§,_loc10_,this.§"#i§,this.§var§,_loc11_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§]"]§(this.§^m§);
         §7!j§.getItemByName("ShareAvatarWindow").mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§'#p§);
         super.hide(param1,param2);
      }
      
      private function §"#i§(param1:*) : void
      {
         this.§&-§(false);
      }
      
      private function §var§() : void
      {
         this.§&-§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §,"W§.§ "L§();
         §,"W§.trackPageView(this);
         var _loc2_:§="T§ = §7!j§.getItemByName("AvatarSavedAnimation") as §="T§;
         _loc2_.setVisibility(false);
         this.§%#,§(new Wallet(this,true,true,true));
         this.§^m§.§<c§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§#[§);
         §7!j§.getItemByName("ShareAvatarWindow").mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §3!m§.§3!]§.§&!X§();
         if(§-!g§.§'!n§ == null)
         {
            §-!g§.§,!l§(§3!m§.§3!]§.§]n§());
         }
         if(!this.§]#n§)
         {
            this.§<"8§();
         }
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         §7!j§.getItemByName("AvatarSharing").setVisibility(false);
      }
      
      private function §#[§(param1:MouseEvent) : void
      {
         this.§]#n§ = false;
      }
      
      private function §@V§(param1:Boolean) : void
      {
         var _loc2_:§1"G§ = null;
         var _loc3_:§&"[§ = null;
         for each(_loc2_ in §3!m§.§3!]§.items.§!&§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §7!j§.getItemByName(_loc2_.name.toUpperCase()) as §&"[§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §%-§(param1:Boolean) : void
      {
         §7!j§.getItemByName("Button_Unequip").setVisibility(param1);
         §7!j§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §[#[§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§3#@§ = §7!j§.getItemByName("Repeater_Items") as §3#@§;
         var _loc2_:Number = 0;
         while(_loc2_ < §3!m§.§3!]§.items.§!&§.length)
         {
            _loc3_ = §3!m§.§3!]§.items.§!&§[_loc2_].name;
            if((_loc4_ = §3!m§.§3!]§.avatar.§7#2§(_loc3_)) == null)
            {
               _loc1_.§`"I§("Repeater_Items_Tab_" + _loc2_).§9"S§(_loc3_);
            }
            else
            {
               _loc1_.§`"I§("Repeater_Items_Tab_" + _loc2_).§9"S§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§@V§(false);
                     this.§%-§(false);
                  }
                  else
                  {
                     this.§@V§(true);
                     this.§%-§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§;;§();
      }
      
      public function §<Y§(param1:Event = null) : void
      {
         var _loc2_:§%"K§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§&-§(false);
         if(param1 && param1.currentTarget is §%"K§)
         {
            _loc2_ = param1.currentTarget as §%"K§;
         }
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§1i§)
         {
            _loc5_ = this.§4#0§(_loc4_);
            §,"W§.§4!X§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §,"W§.trackTransactionItems(_loc2_.orderId,§!"_§,"1 x ",_loc3_);
         this.§1i§ = [];
         if(param1 && param1.currentTarget is §%"K§)
         {
            (param1.currentTarget as §%"K§).removeEventListener(Event.COMPLETE,this.§<Y§);
         }
         this.§;$!§();
      }
      
      private function §try§(param1:String) : void
      {
         this.§8#-§ = this.§[!+§;
         this.§[!+§ = param1;
         var _loc2_:URLRequest = §>J§.§'[§(§>!F§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §5$!§();
         _loc3_.addEventListener(Event.COMPLETE,this.§'#]§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§@!J§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"z§);
         _loc3_.load(_loc2_);
      }
      
      protected function §#"z§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§8!H§ = new WarningPopup(§[W§.§5Z§,§<d§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §'#]§(param1:Event) : void
      {
         var _loc2_:§4$5§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§="T§ = null;
         if(this.§[!+§ != null)
         {
            userProgress.avatarString = this.§[!+§;
            §-#a§.§4T§(new §8"`§(this.§[!+§,userProgress.userID),true,true);
            §3I§.§"x§(this.§[!+§);
            _loc2_ = AngryBirdsBase.singleton.§ "-§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§5l§();
            }
            _loc3_ = this.§[!+§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§8#-§)
               {
                  if(this.§8#-§.indexOf(_loc4_) == -1)
                  {
                     §,"W§.§2"l§(_loc4_);
                  }
               }
               else
               {
                  §,"W§.§2"l§(_loc4_);
               }
            }
         }
         if(this.§]#n§)
         {
            this.§&-§(false);
            (_loc5_ = §7!j§.getItemByName("AvatarSavedAnimation") as §="T§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§;;§();
         }
      }
      
      private function §@!J§(param1:IOErrorEvent) : void
      {
         var _loc2_:§="T§ = null;
         if(this.§]#n§)
         {
            this.§&-§(false);
            _loc2_ = §7!j§.getItemByName("AvatarSavedAnimation") as §="T§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §!"l§(param1:String) : void
      {
         §3!m§.§3!]§.avatar.§!"l§(param1);
         this.§;;§();
      }
      
      public function §6"9§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         null;
         var _loc6_:Item = null;
         var _loc2_:Item = §3!m§.§3!]§.items.getItem(param1);
         var _loc3_:Avatar = §3!m§.§3!]§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§3$1§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§%#h§().mId != _loc2_.mId)
            {
               _loc4_ = §3!m§.§3!]§.§&#M§(_loc2_.mId);
               §-!g§.§,!l§(_loc4_,110,174);
               _loc4_.§@$ §();
               _loc4_.§0!G§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§0"j§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §-!g§.§""_§(_loc6_.mId);
                        }
                        _loc4_.§0!G§(_loc6_);
                     }
                  }
               }
               if(_loc4_.§7#2§("CATEGORYBACKGROUNDS") == null)
               {
                  _loc4_.§0!G§(§3!m§.§3!]§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§3$1§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §-!g§.§""_§(_loc2_.mId);
               §3!m§.§3!]§.avatar.§0!G§(_loc2_);
            }
            else
            {
               §3!m§.§3!]§.avatar.§0!G§(_loc2_);
            }
         }
         else
         {
            §4"d§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§;;§();
      }
      
      private function §;;§() : void
      {
         var _loc3_:§1"G§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         null;
         var _loc15_:§&"[§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§<!K§ = null;
         null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§=O§ = null;
         var _loc23_:§=O§ = null;
         var _loc24_:§="T§ = null;
         var _loc25_:§="T§ = null;
         var _loc26_:§="T§ = null;
         var _loc27_:§="T§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§&"[§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§1"S§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = §3!m§.§3!]§.avatar.§!#>§().split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§1"S§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§1"S§ = true;
               }
            }
         }
         for each(_loc3_ in §3!m§.§3!]§.items.§!&§)
         {
            (§7!j§.getItemByName(_loc3_.name.toUpperCase()) as §&"[§).§ Z§();
         }
         this.§90§ = [];
         for each(_loc4_ in §3!m§.§3!]§.avatar.§0"j§)
         {
            _loc15_ = §7!j§.getItemByName(_loc4_.category.toUpperCase()) as §&"[§;
            _loc16_ = §%T§(_loc4_.mId);
            _loc15_.§]"H§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§90§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         §7!j§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            §7!j§.getItemByName("BuyTheseButton").setVisibility(true);
            §7!j§.getItemByName("Textfield_Price").setVisibility(true);
            §7!j§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §7!j§.getItemByName("BuyTheseButton").setVisibility(false);
            §7!j§.getItemByName("Textfield_Price").setVisibility(false);
            §7!j§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§7"%§)
         {
            (§7!j§.getItemByName("SetAvatarProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§7!j§.getItemByName("SetFacebookProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§7!j§.getItemByName("SetAvatarProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§7!j§.getItemByName("SetFacebookProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§7!j§.getItemByName("SetFacebookProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§1"S§)
            {
               (§7!j§.getItemByName("SetAvatarProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§7!j§.getItemByName("SetAvatarProfileButton") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
               §7!j§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         §7!j§.setText(_loc1_ + "","Textfield_Price");
         if(this.§;=§ == null)
         {
            this.§;=§ = new §3#2§();
            this.§;=§.§5#h§();
         }
         var _loc5_:§=O§ = §7!j§.getItemByName("SetAvatarProfileButton") as §=O§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §3!m§.§3!]§.avatar.§!#>§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§;=§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§3#@§ = §7!j§.getItemByName("Repeater_Items") as §3#@§;
         var _loc9_:§-"N§;
         if(_loc9_ = §7!j§.getItemByName(_loc8_.§+"A§) as §-"N§)
         {
            §7!j§.setText("Page " + (_loc9_.§`$!§ + 1).toString() + "/" + _loc9_.§?"U§,"Textfield_PageNumber");
            if(_loc9_.§?"U§ == 1)
            {
               §7!j§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §7!j§.getItemByName("Button_Scroll1").setVisibility(false);
               §7!j§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §7!j§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §7!j§.getItemByName("Button_Scroll1") as §=O§;
               _loc23_ = §7!j§.getItemByName("Button_Scroll2") as §=O§;
               _loc24_ = §7!j§.getItemByName("NewTag_left") as §="T§;
               _loc25_ = §7!j§.getItemByName("NewTag_right") as §="T§;
               _loc26_ = §7!j§.getItemByName("SaleTag_left") as §="T§;
               _loc27_ = §7!j§.getItemByName("SaleTag_right") as §="T§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§5&§.length)
               {
                  if(this.§5!q§(_loc9_.§5&§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§`$!§ * _loc9_.§9=§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§`$!§ * _loc9_.§9=§ + _loc9_.§9=§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§?U§(_loc9_.§5&§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§`$!§ * _loc9_.§9=§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§`$!§ * _loc9_.§9=§ + _loc9_.§9=§ - 1)
                     {
                        _loc31_ = true;
                     }
                  }
                  _loc32_++;
               }
               _loc24_.visible = _loc28_;
               _loc25_.visible = _loc29_;
               _loc26_.visible = _loc30_;
               _loc27_.visible = _loc31_;
            }
            _loc17_ = new Array();
            _loc18_ = §+3§(AngryBirdsBase.singleton.dataModel).§+!=§;
            var _loc35_:int = 0;
            var _loc36_:* = _loc9_.§5&§;
            while(§§hasnext(_loc36_,_loc35_))
            {
               if((_loc33_ = §§nextvalue(_loc35_,_loc36_) as §&"[§).visible)
               {
                  for each(_loc34_ in §;+§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§0!f§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§3h§(§<!K§.§&L§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §;+§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §+3§(AngryBirdsBase.singleton.dataModel).§!!`§ = _loc20_;
         }
      }
      
      private function §5!q§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"#§.length)
         {
            if(this.§&"#§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §?U§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%1§.length)
         {
            if(this.§%1§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§7!;§;
      }
      
      public function §<$#§() : String
      {
         return this.§9"v§() + "-" + this.§7">§();
      }
      
      private function §&-§(param1:Boolean) : void
      {
         if(§7!j§)
         {
            §7!j§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§^m§)
         {
            this.§^m§.§<!x§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§]#n§ = false;
         if(this.§=$-§)
         {
            this.§=$-§.removeEventListener(MouseEvent.CLICK,this.§#"U§);
         }
         super.dispose();
      }
   }
}
