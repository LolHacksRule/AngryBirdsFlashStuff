package § o§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §!@§.§&$#§;
   import §!@§.§,!z§;
   import §%#!§.§=$7§;
   import §%#!§.Item;
   import §%#A§.§&§;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§3s§;
   import §%#A§.§=!k§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§`]§;
   import §+"E§.§9"z§;
   import §+#t§.§ P§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §1#W§.§!#&§;
   import §4#,§.§-K§;
   import §4#,§.§6$3§;
   import §4#,§.Avatar;
   import §4$<§.§?§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6V§.§7#M§;
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §8"X§.StateTournamentResults;
   import §9"0§.CoinShopPopup;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §<"@§.§8y§;
   import §<"p§.§%"J§;
   import §<"p§.§8N§;
   import §<"p§.§?!T§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §>@§.§'!L§;
   import §[$8§.§2%§;
   import §[§.§]"w§;
   import §[G§.§!!g§;
   import §[G§.§8A§;
   import §^"U§.§`#n§;
   import §^"f§.§true§;
   import com.rovio.assets.§+$#§;
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
   
   public class AvatarCreatorPopup extends AbstractPopup implements §8[§, §7#M§, §]"w§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §[!r§:String = "In-app Shop Avatars";
      
      private static const §%#X§:int = 75;
      
      private static var §^l§:Class = §7"@§;
      
      public static var §7#m§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §<r§:String;
      
      public static var §<_§:Array;
      
      private static var §<#8§:§6$3§;
      
      private static var §5!]§:Boolean = true;
      
      private static const §]!y§:String = "What\'s on your mind?";
       
      
      private var §1"#§:Item = null;
      
      private var §=f§:Boolean = false;
      
      private var §,"P§:String;
      
      private var §8!t§:Array;
      
      private var §;y§:Array;
      
      private var §!!q§:Boolean = false;
      
      private var §!!;§:§ P§;
      
      private var §^"@§:String;
      
      private var §!#v§:String;
      
      private var §3!B§:Wallet;
      
      private var §=!Z§:Boolean;
      
      private var §'"Q§:String;
      
      private var §>!]§:Boolean;
      
      private var §;!c§:Array;
      
      private var §2#?§:Array;
      
      private var §!!D§:Boolean = true;
      
      private var §"#V§:Array;
      
      private var §@"#§:Boolean = false;
      
      private var §@!,§:TextField;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§8!t§ = [];
         this.§;y§ = [];
         this.§"#V§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§8N§.§1F§(§^l§),ID);
         this.§'"Q§ = param3;
      }
      
      public static function §!D§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §`"G§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §&$%§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §'#;§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §@#n§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §1#P§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<_§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§'"Q§)
         {
            this.§^"@§ = this.§'"Q§;
         }
         if(userProgress.§#!V§("1000-2"))
         {
            §1"6§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §1"6§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §7#m§ = AngryBirdsBase.SERVER_ROOT;
         if(§<#8§ == null)
         {
            §<#8§ = new §6$3§();
         }
         if(§`]§(AngryBirdsBase.singleton.dataModel).§@#1§.§"$1§)
         {
            this.§+!#§(true);
            §`]§(AngryBirdsBase.singleton.dataModel).§@#1§.addEventListener(Event.COMPLETE,this.§"#"§);
         }
         this.§=f§ = false;
      }
      
      protected function §-#Y§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§?$=§(id);
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §1"6§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      private function §##E§() : void
      {
         this.§+!#§(true);
         §`]§(AngryBirdsBase.singleton.dataModel).§@#1§.loadItems();
         §`]§(AngryBirdsBase.singleton.dataModel).§@#1§.addEventListener(Event.COMPLETE,this.§"#"§);
      }
      
      private function §"#"§(param1:Event) : void
      {
         §`]§(AngryBirdsBase.singleton.dataModel).§@#1§.removeEventListener(Event.COMPLETE,this.§"#"§);
         this.§!!D§ = false;
         this.§]!T§();
      }
      
      private function §;"+§() : void
      {
         var _loc6_:§3s§ = null;
         var _loc7_:int = 0;
         var _loc8_:§[!K§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§&#4§ = §1"6§.getItemByName("Repeater_Items") as §&#4§;
         var _loc2_:§&#4§ = §1"6§.getItemByName("Repeater_Tabs") as §&#4§;
         var _loc3_:Class = §+$#§.§["`§("Tag_New");
         var _loc4_:Class = §+$#§.§["`§("Tag_Sale");
         this.§;!c§ = new Array();
         this.§2#?§ = new Array();
         if(§8y§.§ "D§.items.§+2§.length > 0)
         {
            _loc2_.§>#v§("Repeater_Tabs_Tab_0").§'R§(§8y§.§ "D§.items.§+2§[0].name as String);
            for each(_loc6_ in _loc2_.§+G§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§+G§)
               {
                  if(§8y§.§ "D§.items.§+2§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §8y§.§ "D§.items.§%#,§(§8y§.§ "D§.items.§+2§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§1#P§(_loc9_[_loc12_].mId))
                        {
                           this.§;!c§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§&$%§(_loc9_[_loc12_].mId))
                        {
                           this.§2#?§.push(_loc9_[_loc12_].mId);
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
         while(_loc5_ < §8y§.§ "D§.items.§+2§.length)
         {
            _loc15_ = §8y§.§ "D§.items.§+2§[_loc5_].name;
            _loc1_.§>#v§("Repeater_Items_Tab_" + _loc5_).§'R§(_loc15_);
            _loc5_++;
         }
         _loc1_.§%F§("Repeater_Items_Tab_0");
         _loc2_.§%F§("Repeater_Tabs_Tab_0");
      }
      
      private function §#"p§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§<#8§)
         {
            if(§<#8§.parent)
            {
               if(§<#8§.parent.contains(§<#8§))
               {
                  §<#8§.parent.removeChild(§<#8§);
               }
            }
         }
         param1.addChild(§<#8§);
         §<#8§.scaleX = §<#8§.scaleY = param2;
         §<#8§.x = param3;
         §<#8§.y = param4;
      }
      
      private function §]!T§() : void
      {
         var _loc6_:§'=§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§'=§ = null;
         this.§=f§ = true;
         var _loc1_:§&#4§ = §1"6§.getItemByName("Repeater_Items") as §&#4§;
         _loc1_.§6"`§(§true§.§0!4§(),§-K§);
         var _loc2_:§&#4§ = §1"6§.getItemByName("Repeater_Tabs") as §&#4§;
         _loc2_.§6"`§(§true§.§+"e§(),§-K§);
         this.§+!#§(false);
         if(§<_§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§!!q§ = true;
         }
         var _loc5_:§5V§;
         (_loc5_ = new §5V§(_loc3_,false,§5V§.§1$$§)).x = 13;
         _loc5_.y = 9;
         §1"6§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§5!]§)
         {
            _loc6_ = §1"6§.getItemByName("AvatarHolderClip") as §'=§;
            this.§#"p§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §2%§.§&S§(_loc4_);
               _loc8_ = §<#8§.§'!7§(_loc7_);
               §8y§.§ "D§.avatar = _loc8_;
            }
            else
            {
               this.§=i§(§8y§.§^!Z§);
               §<#8§.§[#J§("backgrounds1");
            }
            this.§;"+§();
            §5!]§ = false;
         }
         else
         {
            _loc9_ = §1"6§.getItemByName("AvatarHolderClip") as §'=§;
            this.§#"p§(_loc9_.mClip);
            §<#8§.§-9§();
            §<#8§.§?!b§.§7s§();
            this.§;"+§();
         }
         this.§=C§(_loc2_);
         this.§,!!§();
      }
      
      private function §=C§(param1:§&#4§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§^"@§)
         {
            _loc2_ = §true§.§]!K§(this.§^"@§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§^"@§.substr("CATEGORY".length);
               §1"6§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§%F§("Repeater_Items_Tab_" + _loc2_);
               if(§8y§.§ "D§.items.§+2§.length > 0)
               {
                  param1.§>#v§("Repeater_Tabs_Tab_0").§'R§(§8y§.§ "D§.items.§+2§[_loc2_].name as String);
               }
            }
            this.§^"@§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:§[!K§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§&#4§ = null;
         var _loc8_:§=!k§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§-K§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§-K§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§2#i§ = null;
         var _loc21_:§&$#§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §[!K§)
         {
            _loc4_ = param3 as §[!K§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §3s§)
               {
                  if(((_loc4_.mParentContainer as §3s§).mParentContainer as §&#4§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §true§.§]!K§(param2)) != -1)
                     {
                        §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
                        _loc6_ = param2.substr("CATEGORY".length);
                        (_loc7_ = §1"6§.getItemByName("Repeater_Items") as §&#4§).§%F§("Repeater_Items_Tab_" + _loc5_);
                        for each(_loc8_ in (_loc4_.mParentContainer as §3s§).§+G§)
                        {
                           (_loc8_ as §-K§).§4">§();
                        }
                        (param3 as §-K§).§ !7§();
                        this.§&">§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §3s§).mParentContainer as §&#4§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §!#&§.playSound("Menu_Select",§!#&§.§6#h§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§=i§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§return§(param2.substring("REMOVE_".length));
                     }
                     this.§,!!§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §true§.§]!K§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §[!K§).mParentContainer as §3s§).§+G§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §-K§).§4">§();
               }
               else
               {
                  (_loc13_ as §-K§).§ !7§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §true§.§]!K§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §[!K§).mParentContainer as §3s§).§+G§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §-K§).§4">§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               §8y§.§ "D§.avatar.§@! §();
               this.§,!!§();
               this.§&">§();
               break;
            case "RANDOMIZE_AVATAR":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               §8y§.§ "D§.avatar.§0">§();
               this.§,!!§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§%!w§();
               break;
            case "CANCEL_SHARE":
               §1"6§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§+!#§(true);
               this.§ '§();
               break;
            case "BUY_THESE":
               §!#&§.playSound("Shop_Buy",§!#&§.§6#h§);
               _loc17_ = §2%§.§96§(this.§8!t§);
               _loc18_ = 0;
               for each(_loc23_ in this.§8!t§)
               {
                  _loc18_ += §`"G§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§>p§.§5##§)
               {
                  this.§=f§ = false;
                  (_loc24_ = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP,CoinShopPopup.§%#=§)).addEventListener(§?#7§.CLOSE,this.§7"t§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§+!#§(true);
               this.§;y§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§;!9§(_loc25_);
                  §`"5§.§3"x§(_loc26_);
                  this.§;y§.push(_loc25_);
               }
               _loc20_ = new §2#i§(_loc17_,[]);
               (_loc21_ = new §&$#§(_loc20_,new §!#q§(1,0,_loc18_),ID)).addEventListener(§9"z§.§9$>§,this.§1e§);
               break;
            case "SET_AVATAR":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               this.§!!q§ = false;
               this.§+!#§(true);
               _loc22_ = §8y§.§ "D§.avatar.§"R§();
               this.§!R§(_loc22_);
               this.§&">§();
               this.§+!#§(true);
               this.§ '§();
               break;
            case "SET_PROFILE":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               this.§!!q§ = true;
               this.§+!#§(true);
               this.§!R§("");
               this.§&">§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §1"6§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§%#k§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               this.§&">§();
               break;
            case "SCROLL_LEFT":
               §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
               this.§&">§();
         }
      }
      
      protected function §7"t§(param1:Event) : void
      {
      }
      
      private function §;!9§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §8y§.§ "D§.avatar.§=!y§())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      private function § '§() : void
      {
         §`"5§.§6!y§();
         AngryBirdsBase.singleton.exitFullScreen();
         § "8§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         § "8§.§ "§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ P§ = null;
         var _loc4_:int = 0;
         var _loc5_:BitmapData = null;
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:§[!K§ = null;
         var _loc9_:int = 0;
         var _loc10_:Bitmap = null;
         var _loc11_:DisplayObject = null;
         §`"5§.§9#v§();
         § "8§.§+#R§("permissionRequestComplete",this.permissionRequestComplete);
         this.§+!#§(false);
         if(param1 == "true")
         {
            §1"6§.getItemByName("AvatarSharing").setVisibility(true);
            §1"6§.getItemByName("ShareAvatarWindow").setVisibility(true);
            this.§@!,§ = TextField(§1"6§.getItemByName("ShareAvatarWindow").mClip.getChildByName("captionTextField"));
            this.§@!,§.maxChars = §%#X§;
            this.§@!,§.text = §]!y§;
            this.§@!,§.textColor = 6710886;
            if(!this.§@!,§.hasEventListener(MouseEvent.CLICK))
            {
               this.§@!,§.addEventListener(MouseEvent.CLICK,this.§ "Y§);
            }
            _loc2_ = Math.random() * this.§"#V§.length;
            (§1"6§.getItemByName("ShareAvatarWindow_Title") as §^!4§).setText(this.§"#V§[_loc2_]);
            _loc3_ = new § P§();
            _loc3_.§1"S§();
            _loc4_ = 173;
            _loc5_ = _loc3_.render(§8y§.§ "D§.avatar.§"R§(),null,_loc4_);
            _loc6_ = new Matrix();
            _loc7_ = _loc4_ / 100 / 2;
            _loc6_.scale(_loc7_,_loc7_);
            _loc9_ = (_loc8_ = §1"6§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function § "Y§(param1:MouseEvent) : void
      {
         if(this.§@!,§.text == §]!y§)
         {
            this.§@!,§.text = "";
            this.§@!,§.textColor = 16777215;
         }
      }
      
      private function §%!w§() : void
      {
         §1"6§.getItemByName("AvatarSharing").setVisibility(false);
         §1"6§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§+!#§(true);
         var _loc1_:§ P§ = new § P§();
         _loc1_.§1"S§();
         var _loc3_:BitmapData = _loc1_.render(§8y§.§ "D§.avatar.§"R§(),null,750,false,null,null,0,false,0.1);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §+$#§.§["`§("WatermarkPlayOnFacebook"))();
         var _loc6_:Matrix = new Matrix();
         var _loc7_:Number = 750 / 100 / 2;
         _loc6_.scale(_loc7_,_loc7_);
         var _loc8_:* = _loc3_.width - 750 >> 1;
         var _loc9_:* = _loc3_.height - 750 >> 1;
         _loc6_.translate(_loc8_,_loc3_.height - _loc9_);
         _loc3_.draw(_loc5_,_loc6_,null,null,null,true);
         var _loc10_:String = userProgress.userID;
         var _loc11_:Object;
         (_loc11_ = new Object()).name = this.§@!,§.text != §]!y§ ? this.§@!,§.text : "";
         §%"J§.§9"t§(_loc3_,§`#n§.§&X§,_loc10_,this.§6"K§,this.§!!@§,_loc11_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§"#H§(this.§3!B§);
         §1"6§.getItemByName("ShareAvatarWindow").mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§4#Y§);
         super.hide(param1,param2);
      }
      
      private function §6"K§(param1:*) : void
      {
         this.§+!#§(false);
      }
      
      private function §!!@§() : void
      {
         this.§+!#§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §`"5§.§##2§();
         §`"5§.trackPageView(this);
         var _loc2_:§'=§ = §1"6§.getItemByName("AvatarSavedAnimation") as §'=§;
         _loc2_.setVisibility(false);
         this.§##Y§(new Wallet(this,true,true,true));
         this.§3!B§.§[!R§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§4`§);
         §1"6§.getItemByName("ShareAvatarWindow").mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §8y§.§ "D§.§^%§();
         if(§<#8§.§?!b§ == null)
         {
            §<#8§.§8#w§(§8y§.§ "D§.§;$!§());
         }
         if(!this.§=f§)
         {
            this.§]!T§();
         }
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         §1"6§.getItemByName("AvatarSharing").setVisibility(false);
      }
      
      private function §4`§(param1:MouseEvent) : void
      {
         this.§=f§ = false;
      }
      
      private function § n§(param1:Boolean) : void
      {
         var _loc2_:§=$7§ = null;
         var _loc3_:§-K§ = null;
         for each(_loc2_ in §8y§.§ "D§.items.§+2§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §1"6§.getItemByName(_loc2_.name.toUpperCase()) as §-K§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §!"N§(param1:Boolean) : void
      {
         §1"6§.getItemByName("Button_Unequip").setVisibility(param1);
         §1"6§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §,!!§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§&#4§ = §1"6§.getItemByName("Repeater_Items") as §&#4§;
         var _loc2_:Number = 0;
         while(_loc2_ < §8y§.§ "D§.items.§+2§.length)
         {
            _loc3_ = §8y§.§ "D§.items.§+2§[_loc2_].name;
            if((_loc4_ = §8y§.§ "D§.avatar.§#"&§(_loc3_)) == null)
            {
               _loc1_.§>#v§("Repeater_Items_Tab_" + _loc2_).§'R§(_loc3_);
            }
            else
            {
               _loc1_.§>#v§("Repeater_Items_Tab_" + _loc2_).§'R§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§ n§(false);
                     this.§!"N§(false);
                  }
                  else
                  {
                     this.§ n§(true);
                     this.§!"N§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§&">§();
      }
      
      public function §1e§(param1:Event = null) : void
      {
         var _loc2_:§&$#§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§+!#§(false);
         if(param1 && param1.currentTarget is §&$#§)
         {
            _loc2_ = param1.currentTarget as §&$#§;
         }
         §`"5§.trackPageView(this,§`"5§.§9>§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§;y§)
         {
            _loc5_ = this.§;!9§(_loc4_);
            §`"5§.§,#p§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §`"5§.trackTransactionItems(_loc2_.orderId,§[!r§,"1 x ",_loc3_);
         this.§;y§ = [];
         if(param1 && param1.currentTarget is §&$#§)
         {
            (param1.currentTarget as §&$#§).removeEventListener(Event.COMPLETE,this.§1e§);
         }
         this.§##E§();
      }
      
      private function §!R§(param1:String) : void
      {
         this.§!#v§ = this.§,"P§;
         this.§,"P§ = param1;
         var _loc2_:URLRequest = §%#9§.§`#<§(§7#m§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §4"v§();
         _loc3_.addEventListener(Event.COMPLETE,this.§<#n§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§#!X§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!N§);
         _loc3_.load(_loc2_);
      }
      
      protected function §+!N§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§!"<§ = new WarningPopup(§%"!§.§4!P§,§^#o§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §<#n§(param1:Event) : void
      {
         var _loc2_:§'!L§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§'=§ = null;
         if(this.§,"P§ != null)
         {
            userProgress.avatarString = this.§,"P§;
            §8A§.§=#T§(new §!!g§(this.§,"P§,userProgress.userID),true,true);
            §-"3§.§&"'§(this.§,"P§);
            _loc2_ = AngryBirdsBase.singleton.§[##§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§!";§();
            }
            _loc3_ = this.§,"P§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§!#v§)
               {
                  if(this.§!#v§.indexOf(_loc4_) == -1)
                  {
                     §`"5§.§0"J§(_loc4_);
                  }
               }
               else
               {
                  §`"5§.§0"J§(_loc4_);
               }
            }
         }
         if(this.§=f§)
         {
            this.§+!#§(false);
            (_loc5_ = §1"6§.getItemByName("AvatarSavedAnimation") as §'=§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§&">§();
         }
      }
      
      private function §#!X§(param1:IOErrorEvent) : void
      {
         var _loc2_:§'=§ = null;
         if(this.§=f§)
         {
            this.§+!#§(false);
            _loc2_ = §1"6§.getItemByName("AvatarSavedAnimation") as §'=§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §return§(param1:String) : void
      {
         §8y§.§ "D§.avatar.§return§(param1);
         this.§&">§();
      }
      
      public function §=i§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §8y§.§ "D§.items.getItem(param1);
         var _loc3_:Avatar = §8y§.§ "D§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§8!G§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§9#T§().mId != _loc2_.mId)
            {
               _loc4_ = §8y§.§ "D§.§="[§(_loc2_.mId);
               §<#8§.§8#w§(_loc4_,110,174);
               _loc4_.§@! §();
               _loc4_.§%#§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§<"j§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §<#8§.§[#J§(_loc6_.mId);
                        }
                        _loc4_.§%#§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§#"&§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§%#§(§8y§.§ "D§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§8!G§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §<#8§.§[#J§(_loc2_.mId);
               §8y§.§ "D§.avatar.§%#§(_loc2_);
            }
            else
            {
               §8y§.§ "D§.avatar.§%#§(_loc2_);
            }
         }
         else
         {
            §?!T§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§&">§();
      }
      
      private function §&">§() : void
      {
         var _loc3_:§=$7§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§-K§ = null;
         var _loc15_:§-K§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§,!z§ = null;
         var _loc19_:§-K§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§,#w§ = null;
         var _loc23_:§,#w§ = null;
         var _loc24_:§'=§ = null;
         var _loc25_:§'=§ = null;
         var _loc26_:§'=§ = null;
         var _loc27_:§'=§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§-K§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§@"#§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = (_loc11_ = §8y§.§ "D§.avatar.§"R§()).split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§@"#§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§@"#§ = true;
               }
            }
         }
         for each(_loc3_ in §8y§.§ "D§.items.§+2§)
         {
            (_loc14_ = §1"6§.getItemByName(_loc3_.name.toUpperCase()) as §-K§).§2"&§();
         }
         this.§8!t§ = [];
         for each(_loc4_ in §8y§.§ "D§.avatar.§<"j§)
         {
            _loc15_ = §1"6§.getItemByName(_loc4_.category.toUpperCase()) as §-K§;
            _loc16_ = §`"G§(_loc4_.mId);
            _loc15_.§!#o§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§8!t§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         §1"6§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            §1"6§.getItemByName("BuyTheseButton").setVisibility(true);
            §1"6§.getItemByName("Textfield_Price").setVisibility(true);
            §1"6§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §1"6§.getItemByName("BuyTheseButton").setVisibility(false);
            §1"6§.getItemByName("Textfield_Price").setVisibility(false);
            §1"6§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§!!q§)
         {
            (§1"6§.getItemByName("SetAvatarProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§1"6§.getItemByName("SetFacebookProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§1"6§.getItemByName("SetAvatarProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§1"6§.getItemByName("SetFacebookProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§1"6§.getItemByName("SetFacebookProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§@"#§)
            {
               (§1"6§.getItemByName("SetAvatarProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§1"6§.getItemByName("SetAvatarProfileButton") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
               §1"6§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         §1"6§.setText(_loc1_ + "","Textfield_Price");
         if(this.§!!;§ == null)
         {
            this.§!!;§ = new § P§();
            this.§!!;§.§1"S§();
         }
         var _loc5_:§,#w§ = §1"6§.getItemByName("SetAvatarProfileButton") as §,#w§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §8y§.§ "D§.avatar.§"R§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§!!;§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§&#4§ = §1"6§.getItemByName("Repeater_Items") as §&#4§;
         var _loc9_:§3s§;
         if(_loc9_ = §1"6§.getItemByName(_loc8_.§="M§) as §3s§)
         {
            §1"6§.setText("Page " + (_loc9_.§%#e§ + 1).toString() + "/" + _loc9_.§-!d§,"Textfield_PageNumber");
            if(_loc9_.§-!d§ == 1)
            {
               §1"6§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §1"6§.getItemByName("Button_Scroll1").setVisibility(false);
               §1"6§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §1"6§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §1"6§.getItemByName("Button_Scroll1") as §,#w§;
               _loc23_ = §1"6§.getItemByName("Button_Scroll2") as §,#w§;
               _loc24_ = §1"6§.getItemByName("NewTag_left") as §'=§;
               _loc25_ = §1"6§.getItemByName("NewTag_right") as §'=§;
               _loc26_ = §1"6§.getItemByName("SaleTag_left") as §'=§;
               _loc27_ = §1"6§.getItemByName("SaleTag_right") as §'=§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§+G§.length)
               {
                  if(this.§3"J§(_loc9_.§+G§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§%#e§ * _loc9_.§##§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§%#e§ * _loc9_.§##§ + _loc9_.§##§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§4#r§(_loc9_.§+G§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§%#e§ * _loc9_.§##§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§%#e§ * _loc9_.§##§ + _loc9_.§##§ - 1)
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
            _loc18_ = §`]§(AngryBirdsBase.singleton.dataModel).§ in§;
            for each(_loc19_ in _loc9_.§+G§)
            {
               if((_loc33_ = _loc19_ as §-K§).visible)
               {
                  for each(_loc34_ in §<_§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§&!!§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§?!;§(§,!z§.§^!?§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §<_§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §`]§(AngryBirdsBase.singleton.dataModel).§?#P§ = _loc20_;
         }
      }
      
      private function §3"J§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!c§.length)
         {
            if(this.§;!c§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §4#r§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2#?§.length)
         {
            if(this.§2#?§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§=#%§;
      }
      
      public function §-"K§() : String
      {
         return this.§<"b§() + "-" + this.§>"-§();
      }
      
      private function §+!#§(param1:Boolean) : void
      {
         if(§1"6§)
         {
            §1"6§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§3!B§)
         {
            this.§3!B§.§;&§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§=f§ = false;
         if(this.§@!,§)
         {
            this.§@!,§.removeEventListener(MouseEvent.CLICK,this.§ "Y§);
         }
         super.dispose();
      }
   }
}
