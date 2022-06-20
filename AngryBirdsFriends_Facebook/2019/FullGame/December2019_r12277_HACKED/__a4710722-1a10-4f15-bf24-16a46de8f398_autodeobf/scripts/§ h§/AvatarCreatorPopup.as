package § h§
{
   import § "v§.§4$4§;
   import §#"3§.§"$!§;
   import §#"3§.§4!h§;
   import §'!S§.§<"5§;
   import §+Z§.§?!T§;
   import §,!m§.§8"B§;
   import §,#D§.§;!9§;
   import §-"S§.§>#G§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2$;§.§=]§;
   import §2$;§.§?$1§;
   import §2$;§.§`#t§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §3#t§.§'§;
   import §3#t§.§-#b§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §4$A§.§=$5§;
   import §5"l§.§0!b§;
   import §6#x§.§'!G§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §9x§.§ m§;
   import §9x§.§7",§;
   import §9x§.§9"B§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>!u§.§+m§;
   import §>!u§.Avatar;
   import §>!u§.§^&§;
   import §>#Y§.§,#b§;
   import §@!_§.§ !G§;
   import §@!_§.§>%§;
   import §[#v§.StateTournamentResults;
   import §^"K§.§5!t§;
   import §^"K§.Item;
   import com.rovio.assets.§=@§;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class AvatarCreatorPopup extends AbstractPopup implements §;"P§, §'r§, §=$5§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §`-§:String = "In-app Shop Avatars";
      
      private static var §0#X§:Class = §&![§;
      
      public static var §!$9§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §+#J§:String;
      
      public static var §6#N§:Array;
      
      private static var §0#w§:§+m§;
      
      private static var §+#m§:Boolean = true;
       
      
      private var §9"E§:Item = null;
      
      private var §=!4§:Boolean = false;
      
      private var §6$=§:String;
      
      private var §+"m§:Array;
      
      private var §[!]§:Array;
      
      private var §0#4§:Boolean = false;
      
      private var §5$+§:§9"B§;
      
      private var §9"I§:String;
      
      private var §-"3§:String;
      
      private var §1"w§:Wallet;
      
      private var §5" §:Boolean;
      
      private var §4!z§:String;
      
      private var §1$'§:Boolean;
      
      private var §4d§:Array;
      
      private var §7!V§:Array;
      
      private var §6#m§:Boolean = true;
      
      private var §3!#§:Array;
      
      private var §!!Z§:Boolean = false;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§+"m§ = [];
         this.§[!]§ = [];
         this.§3!#§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§"$!§.§0!T§(§0#X§),ID);
         this.§4!z§ = param3;
      }
      
      public static function §^c§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §=!T§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §6!L§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §#v§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §6W§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §-H§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §6#N§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§4!z§)
         {
            this.§9"I§ = this.§4!z§;
         }
         if(userProgress.§3"^§("1000-2"))
         {
            §'o§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §'o§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §!$9§ = AngryBirdsBase.SERVER_ROOT;
         if(§0#w§ == null)
         {
            §0#w§ = new §+m§();
         }
         if(§,#b§(AngryBirdsBase.singleton.dataModel).§6"J§.§#!?§)
         {
            this.§!#n§(true);
            §,#b§(AngryBirdsBase.singleton.dataModel).§6"J§.addEventListener(Event.COMPLETE,this.§-a§);
         }
         this.§=!4§ = false;
      }
      
      protected function §>##§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§>#g§(id);
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §'o§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      private function §#'§() : void
      {
         this.§!#n§(true);
         §,#b§(AngryBirdsBase.singleton.dataModel).§6"J§.loadItems();
         §,#b§(AngryBirdsBase.singleton.dataModel).§6"J§.addEventListener(Event.COMPLETE,this.§-a§);
      }
      
      private function §-a§(param1:Event) : void
      {
         §,#b§(AngryBirdsBase.singleton.dataModel).§6"J§.removeEventListener(Event.COMPLETE,this.§-a§);
         this.§6#m§ = false;
         this.§""1§();
      }
      
      private function §-E§() : void
      {
         var _loc6_:§`#t§ = null;
         var _loc7_:int = 0;
         var _loc8_:§6!1§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§=]§ = §'o§.getItemByName("Repeater_Items") as §=]§;
         var _loc2_:§=]§ = §'o§.getItemByName("Repeater_Tabs") as §=]§;
         var _loc3_:Class = §=@§.§9!x§("Tag_New");
         var _loc4_:Class = §=@§.§9!x§("Tag_Sale");
         this.§4d§ = new Array();
         this.§7!V§ = new Array();
         if(§<"5§.§3"1§.items.§4+§.length > 0)
         {
            _loc2_.§6q§("Repeater_Tabs_Tab_0").§##&§(§<"5§.§3"1§.items.§4+§[0].name as String);
            for each(_loc6_ in _loc2_.§#z§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§#z§)
               {
                  if(§<"5§.§3"1§.items.§4+§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §<"5§.§3"1§.items.§7#6§(§<"5§.§3"1§.items.§4+§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§-H§(_loc9_[_loc12_].mId))
                        {
                           this.§4d§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§6!L§(_loc9_[_loc12_].mId))
                        {
                           this.§7!V§.push(_loc9_[_loc12_].mId);
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
         while(_loc5_ < §<"5§.§3"1§.items.§4+§.length)
         {
            _loc15_ = §<"5§.§3"1§.items.§4+§[_loc5_].name;
            _loc1_.§6q§("Repeater_Items_Tab_" + _loc5_).§##&§(_loc15_);
            _loc5_++;
         }
         _loc1_.§=t§("Repeater_Items_Tab_0");
         _loc2_.§=t§("Repeater_Tabs_Tab_0");
      }
      
      private function § #&§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§0#w§)
         {
            if(§0#w§.parent)
            {
               if(§0#w§.parent.contains(§0#w§))
               {
                  §0#w§.parent.removeChild(§0#w§);
               }
            }
         }
         param1.addChild(§0#w§);
         §0#w§.scaleX = §0#w§.scaleY = param2;
         §0#w§.x = param3;
         §0#w§.y = param4;
      }
      
      private function §""1§() : void
      {
         var _loc6_:§=!Z§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§=!Z§ = null;
         this.§=!4§ = true;
         var _loc1_:§=]§ = §'o§.getItemByName("Repeater_Items") as §=]§;
         _loc1_.§8!x§(§8"B§.§@"C§(),§^&§);
         var _loc2_:§=]§ = §'o§.getItemByName("Repeater_Tabs") as §=]§;
         _loc2_.§8!x§(§8"B§.§&$5§(),§^&§);
         this.§!#n§(false);
         if(§6#N§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§0#4§ = true;
         }
         var _loc5_:§7",§;
         (_loc5_ = new §7",§(_loc3_,false,§7",§.§1"0§)).x = 13;
         _loc5_.y = 9;
         §'o§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§+#m§)
         {
            _loc6_ = §'o§.getItemByName("AvatarHolderClip") as §=!Z§;
            this.§ #&§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §;!9§.§9#h§(_loc4_);
               _loc8_ = §0#w§.§4^§(_loc7_);
               §<"5§.§3"1§.§["z§ = _loc8_;
            }
            else
            {
               this.§!!J§(§<"5§.§"S§);
               §0#w§.§2!$§("backgrounds1");
            }
            this.§-E§();
            §+#m§ = false;
         }
         else
         {
            _loc9_ = §'o§.getItemByName("AvatarHolderClip") as §=!Z§;
            this.§ #&§(_loc9_.mClip);
            §0#w§.§'!m§();
            §0#w§.§^"F§.§&!V§();
            this.§-E§();
         }
         this.§1#m§(_loc2_);
         this.§,"]§();
      }
      
      private function §1#m§(param1:§=]§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§9"I§)
         {
            _loc2_ = §8"B§.§"j§(this.§9"I§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§9"I§.substr("CATEGORY".length);
               §'o§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§=t§("Repeater_Items_Tab_" + _loc2_);
               if(§<"5§.§3"1§.items.§4+§.length > 0)
               {
                  param1.§6q§("Repeater_Tabs_Tab_0").§##&§(§<"5§.§3"1§.items.§4+§[_loc2_].name as String);
               }
            }
            this.§9"I§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:§6!1§ = null;
         var _loc5_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^&§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§^&§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§8#E§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §6!1§)
         {
            _loc4_ = param3 as §6!1§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §`#t§)
               {
                  if(((_loc4_.mParentContainer as §`#t§).mParentContainer as §=]§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §8"B§.§"j§(param2)) != -1)
                     {
                        §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
                        param2.substr("CATEGORY".length);
                        (§'o§.getItemByName("Repeater_Items") as §=]§).§=t§("Repeater_Items_Tab_" + _loc5_);
                        var _loc27_:int = 0;
                        var _loc28_:* = (_loc4_.mParentContainer as §`#t§).§#z§;
                        while(§§hasnext(_loc28_,_loc27_))
                        {
                           (§§nextvalue(_loc27_,_loc28_) as §^&§).§-"m§();
                        }
                        (param3 as §^&§).§^!o§();
                        this.§2$5§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §`#t§).mParentContainer as §=]§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §4$4§.playSound("Menu_Select",§4$4§.§1#l§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§!!J§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§1"-§(param2.substring("REMOVE_".length));
                     }
                     this.§,"]§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §8"B§.§"j§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §6!1§).mParentContainer as §`#t§).§#z§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §^&§).§-"m§();
               }
               else
               {
                  (_loc13_ as §^&§).§^!o§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §8"B§.§"j§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §6!1§).mParentContainer as §`#t§).§#z§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §^&§).§-"m§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               §<"5§.§3"1§.§["z§.§#!f§();
               this.§,"]§();
               this.§2$5§();
               break;
            case "RANDOMIZE_AVATAR":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               §<"5§.§3"1§.§["z§.§9!l§();
               this.§,"]§();
               break;
            case "BUY_THESE":
               §4$4§.playSound("Shop_Buy",§4$4§.§1#l§);
               _loc17_ = §;!9§.§##o§(this.§+"m§);
               _loc18_ = 0;
               for each(_loc23_ in this.§+"m§)
               {
                  _loc18_ += §=!T§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§%$;§.§5"i§)
               {
                  this.§=!4§ = false;
                  (_loc24_ = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP,CoinShopPopup.§]#;§)).addEventListener(§0!b§.CLOSE,this.§7F§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§!#n§(true);
               this.§[!]§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§8"8§(_loc25_);
                  §'@§.§,!V§(_loc26_);
                  this.§[!]§.push(_loc25_);
               }
               _loc20_ = new §8#E§(_loc17_,[]);
               new §>%§(_loc20_,new §>"`§(1,0,_loc18_),ID).addEventListener(§?!T§.§@!9§,this.§9$+§);
               break;
            case "SET_AVATAR":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               this.§0#4§ = false;
               this.§!#n§(true);
               _loc22_ = §<"5§.§3"1§.§["z§.§?Y§();
               this.§4#i§(_loc22_);
               this.§2$5§();
               break;
            case "SET_PROFILE":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               this.§0#4§ = true;
               this.§!#n§(true);
               this.§4#i§("");
               this.§2$5§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §'o§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§9#0§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               this.§2$5§();
               break;
            case "SCROLL_LEFT":
               §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
               this.§2$5§();
         }
      }
      
      protected function §7F§(param1:Event) : void
      {
      }
      
      private function §8"8§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<"5§.§3"1§.§["z§.§9!j§())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§+E§(this.§1"w§);
         super.hide(param1,param2);
      }
      
      private function §?@§(param1:*) : void
      {
         this.§!#n§(false);
      }
      
      private function §@#Z§() : void
      {
         this.§!#n§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §'@§.§if§();
         §'@§.trackPageView(this);
         var _loc2_:§=!Z§ = §'o§.getItemByName("AvatarSavedAnimation") as §=!Z§;
         _loc2_.setVisibility(false);
         this.§ "@§(new Wallet(this,true,true,true));
         this.§1"w§.§6""§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§1!X§);
         §<"5§.§3"1§.§'E§();
         if(§0#w§.§^"F§ == null)
         {
            §0#w§.§"#?§(§<"5§.§3"1§.§="+§());
         }
         if(!this.§=!4§)
         {
            this.§""1§();
         }
      }
      
      private function §1!X§(param1:MouseEvent) : void
      {
         this.§=!4§ = false;
      }
      
      private function §"$5§(param1:Boolean) : void
      {
         var _loc2_:§5!t§ = null;
         var _loc3_:§^&§ = null;
         for each(_loc2_ in §<"5§.§3"1§.items.§4+§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §'o§.getItemByName(_loc2_.name.toUpperCase()) as §^&§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §-0§(param1:Boolean) : void
      {
         §'o§.getItemByName("Button_Unequip").setVisibility(param1);
         §'o§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §,"]§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§=]§ = §'o§.getItemByName("Repeater_Items") as §=]§;
         var _loc2_:Number = 0;
         while(_loc2_ < §<"5§.§3"1§.items.§4+§.length)
         {
            _loc3_ = §<"5§.§3"1§.items.§4+§[_loc2_].name;
            if((_loc4_ = §<"5§.§3"1§.§["z§.§`!r§(_loc3_)) == null)
            {
               _loc1_.§6q§("Repeater_Items_Tab_" + _loc2_).§##&§(_loc3_);
            }
            else
            {
               _loc1_.§6q§("Repeater_Items_Tab_" + _loc2_).§##&§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§"$5§(false);
                     this.§-0§(false);
                  }
                  else
                  {
                     this.§"$5§(true);
                     this.§-0§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§2$5§();
      }
      
      public function §9$+§(param1:Event = null) : void
      {
         var _loc2_:§>%§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§!#n§(false);
         if(param1 && param1.currentTarget is §>%§)
         {
            _loc2_ = param1.currentTarget as §>%§;
         }
         §'@§.trackPageView(this,§'@§.§0#6§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§[!]§)
         {
            _loc5_ = this.§8"8§(_loc4_);
            §'@§.§@#V§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §'@§.trackTransactionItems(_loc2_.orderId,§`-§,"1 x ",_loc3_);
         this.§[!]§ = [];
         if(param1 && param1.currentTarget is §>%§)
         {
            (param1.currentTarget as §>%§).removeEventListener(Event.COMPLETE,this.§9$+§);
         }
         this.§#'§();
      }
      
      private function §4#i§(param1:String) : void
      {
         this.§-"3§ = this.§6$=§;
         this.§6$=§ = param1;
         var _loc2_:URLRequest = §!"`§.§@!A§(§!$9§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §5"f§();
         _loc3_.addEventListener(Event.COMPLETE,this.§3#f§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§6"`§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"!§);
         _loc3_.load(_loc2_);
      }
      
      protected function §>"!§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§?!y§ = new WarningPopup(§-!S§.§ !^§,§## §.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §3#f§(param1:Event) : void
      {
         var _loc2_:§'!G§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§=!Z§ = null;
         if(this.§6$=§ != null)
         {
            userProgress.avatarString = this.§6$=§;
            §-#b§.§>">§(new §'#2§(this.§6$=§,userProgress.userID),true,true);
            § m§.§><§(this.§6$=§);
            _loc2_ = AngryBirdsBase.singleton.§8"v§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§<"b§();
            }
            _loc3_ = this.§6$=§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§-"3§)
               {
                  if(this.§-"3§.indexOf(_loc4_) == -1)
                  {
                     §'@§.§+$#§(_loc4_);
                  }
               }
               else
               {
                  §'@§.§+$#§(_loc4_);
               }
            }
         }
         if(this.§=!4§)
         {
            this.§!#n§(false);
            (_loc5_ = §'o§.getItemByName("AvatarSavedAnimation") as §=!Z§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§2$5§();
         }
      }
      
      private function §6"`§(param1:IOErrorEvent) : void
      {
         var _loc2_:§=!Z§ = null;
         if(this.§=!4§)
         {
            this.§!#n§(false);
            _loc2_ = §'o§.getItemByName("AvatarSavedAnimation") as §=!Z§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §1"-§(param1:String) : void
      {
         §<"5§.§3"1§.§["z§.§1"-§(param1);
         this.§2$5§();
      }
      
      public function §!!J§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §<"5§.§3"1§.items.getItem(param1);
         var _loc3_:Avatar = §<"5§.§3"1§.§["z§;
         if(_loc2_)
         {
            if(_loc2_.§7#n§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§9!s§().mId != _loc2_.mId)
            {
               _loc4_ = §<"5§.§3"1§.§<"+§(_loc2_.mId);
               §0#w§.§"#?§(_loc4_,110,174);
               _loc4_.§#!f§();
               _loc4_.§""Y§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§0$;§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §0#w§.§2!$§(_loc6_.mId);
                        }
                        _loc4_.§""Y§(_loc6_);
                     }
                  }
               }
               if(_loc4_.§`!r§("CATEGORYBACKGROUNDS") == null)
               {
                  _loc4_.§""Y§(§<"5§.§3"1§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§7#n§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §0#w§.§2!$§(_loc2_.mId);
               §<"5§.§3"1§.§["z§.§""Y§(_loc2_);
            }
            else
            {
               §<"5§.§3"1§.§["z§.§""Y§(_loc2_);
            }
         }
         else
         {
            §4!h§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§2$5§();
      }
      
      private function §2$5§() : void
      {
         var _loc3_:§5!t§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc15_:§^&§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§ !G§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§;!b§ = null;
         var _loc23_:§;!b§ = null;
         var _loc24_:§=!Z§ = null;
         var _loc25_:§=!Z§ = null;
         var _loc26_:§=!Z§ = null;
         var _loc27_:§=!Z§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§^&§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§!!Z§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = §<"5§.§3"1§.§["z§.§?Y§().split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§!!Z§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§!!Z§ = true;
               }
            }
         }
         for each(_loc3_ in §<"5§.§3"1§.items.§4+§)
         {
            (§'o§.getItemByName(_loc3_.name.toUpperCase()) as §^&§).§7!f§();
         }
         this.§+"m§ = [];
         for each(_loc4_ in §<"5§.§3"1§.§["z§.§0$;§)
         {
            _loc15_ = §'o§.getItemByName(_loc4_.category.toUpperCase()) as §^&§;
            _loc16_ = §=!T§(_loc4_.mId);
            _loc15_.§`#o§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§+"m§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         if(_loc1_ > 0)
         {
            §'o§.getItemByName("BuyTheseButton").setVisibility(true);
            §'o§.getItemByName("Textfield_Price").setVisibility(true);
            §'o§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §'o§.getItemByName("BuyTheseButton").setVisibility(false);
            §'o§.getItemByName("Textfield_Price").setVisibility(false);
            §'o§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§0#4§)
         {
            (§'o§.getItemByName("SetAvatarProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§'o§.getItemByName("SetFacebookProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§'o§.getItemByName("SetAvatarProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§'o§.getItemByName("SetFacebookProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§'o§.getItemByName("SetFacebookProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§!!Z§)
            {
               (§'o§.getItemByName("SetAvatarProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§'o§.getItemByName("SetAvatarProfileButton") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            }
         }
         §'o§.setText(_loc1_ + "","Textfield_Price");
         if(this.§5$+§ == null)
         {
            this.§5$+§ = new §9"B§();
            this.§5$+§.§4#=§();
         }
         var _loc5_:§;!b§ = §'o§.getItemByName("SetAvatarProfileButton") as §;!b§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §<"5§.§3"1§.§["z§.§?Y§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§5$+§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§=]§ = §'o§.getItemByName("Repeater_Items") as §=]§;
         var _loc9_:§`#t§;
         if(_loc9_ = §'o§.getItemByName(_loc8_.§+#j§) as §`#t§)
         {
            §'o§.setText("Page " + (_loc9_.§5F§ + 1).toString() + "/" + _loc9_.§<"U§,"Textfield_PageNumber");
            if(_loc9_.§<"U§ == 1)
            {
               §'o§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §'o§.getItemByName("Button_Scroll1").setVisibility(false);
               §'o§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §'o§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §'o§.getItemByName("Button_Scroll1") as §;!b§;
               _loc23_ = §'o§.getItemByName("Button_Scroll2") as §;!b§;
               _loc24_ = §'o§.getItemByName("NewTag_left") as §=!Z§;
               _loc25_ = §'o§.getItemByName("NewTag_right") as §=!Z§;
               _loc26_ = §'o§.getItemByName("SaleTag_left") as §=!Z§;
               _loc27_ = §'o§.getItemByName("SaleTag_right") as §=!Z§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§#z§.length)
               {
                  if(this.§]"<§(_loc9_.§#z§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§5F§ * _loc9_.§,!C§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§5F§ * _loc9_.§,!C§ + _loc9_.§,!C§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§?]§(_loc9_.§#z§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§5F§ * _loc9_.§,!C§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§5F§ * _loc9_.§,!C§ + _loc9_.§,!C§ - 1)
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
            _loc18_ = §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§;
            var _loc35_:int = 0;
            var _loc36_:* = _loc9_.§#z§;
            while(§§hasnext(_loc36_,_loc35_))
            {
               if((_loc33_ = §§nextvalue(_loc35_,_loc36_) as §^&§).visible)
               {
                  for each(_loc34_ in §6#N§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§,!F§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§""C§(§ !G§.§-y§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §6#N§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §,#b§(AngryBirdsBase.singleton.dataModel).§`!6§ = _loc20_;
         }
      }
      
      private function §]"<§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4d§.length)
         {
            if(this.§4d§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §?]§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!V§.length)
         {
            if(this.§7!V§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§4"h§;
      }
      
      public function §9M§() : String
      {
         return this.§2!^§() + "-" + this.§6#U§();
      }
      
      private function §!#n§(param1:Boolean) : void
      {
         if(§'o§)
         {
            §'o§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§1"w§)
         {
            this.§1"w§.§1#?§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§=!4§ = false;
         super.dispose();
      }
   }
}
