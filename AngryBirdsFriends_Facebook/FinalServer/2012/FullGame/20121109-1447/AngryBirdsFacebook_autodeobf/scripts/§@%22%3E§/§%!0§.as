package §@">§
{
   import § !9§.§'!J§;
   import § " §.§+!p§;
   import § " §.§2!!§;
   import § " §.§9c§;
   import § "C§.§-!l§;
   import §!!C§.§!H§;
   import §!!C§.§^!b§;
   import §!"=§.§&!J§;
   import §!"=§.§8S§;
   import §!"=§.§;o§;
   import §!§.§&"§;
   import §!K§.Item;
   import §!K§.§use §;
   import §#!H§.§=!F§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §,V§.§'"5§;
   import §0p§.§3!D§;
   import §1r§.§,!L§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§+w§;
   import §4!e§.§5!a§;
   import §4!e§.§7"-§;
   import §4!e§.§=" §;
   import §4!e§.§^!D§;
   import §6o§.§+!k§;
   import §6o§.§5!C§;
   import §6o§.§9!O§;
   import §<a§.§+!B§;
   import com.rovio.assets.§8B§;
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
   
   public class §%!0§ extends Popup
   {
      
      private static var §<F§:Class = §'!F§;
      
      public static var §%h§:String;
      
      private static var §-"@§:Array = [{
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
      
      private static var §5;§:String;
      
      public static var §`c§:Array;
      
      private static var §9!E§:§&!J§;
      
      private static var §!!q§:Boolean = true;
      
      public static var §9_§:Array;
      
      public static var §5!U§:URLLoader;
       
      
      private var §"!T§:StatePopupManager;
      
      private var §3]§:Item = null;
      
      private var §9e§:Boolean = false;
      
      private var §2S§:String;
      
      private var §-#§:Array;
      
      private var §`"9§:Array;
      
      private var §5!x§:Boolean = false;
      
      private var §!""§:Boolean = false;
      
      private var §6w§:§7!A§;
      
      private var §9!7§:§9c§;
      
      private var §!s§:String;
      
      private var §1"-§:String;
      
      private var §>!C§:Boolean;
      
      public function §%!0§(param1:§7!A§, param2:StatePopupManager, param3:String = null, param4:Boolean = false)
      {
         this.§-#§ = [];
         this.§`"9§ = [];
         this.§"!T§ = param2;
         super(§5!C§.§9G§(§<F§),param1);
         if(param3)
         {
            this.§!s§ = param3;
         }
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         this.§6w§ = param1;
         if((AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-2"))
         {
            this.§6w§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§6w§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §%h§ = AngryBirdsFP11.§76§;
         if(§9!E§ == null)
         {
            §9!E§ = new §&!J§();
         }
         if(§5!U§ == null || param4)
         {
            this.§@U§();
         }
         this.§0!5§();
      }
      
      public static function §5!3§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`c§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §1!D§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`c§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §1W§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`c§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §^i§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`c§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §^"5§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`c§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §&;§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §-"@§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §0!5§() : void
      {
      }
      
      private function §@U§() : void
      {
         this.§6w§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §-!l§.§%""§(§%h§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §5!U§ = new URLLoader();
         §5!U§.addEventListener(Event.COMPLETE,this.onComplete);
         §5!U§.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         §5!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""<§);
         §5!U§.load(_loc1_);
      }
      
      protected function §""<§(param1:SecurityErrorEvent) : void
      {
         §%?§.§4!>§();
         §5!U§ = null;
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         §%?§.§4!>§();
         §5!U§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §9_§ = §'!J§.§0!>§(param1.currentTarget.data);
         if(!this.§9e§)
         {
            this.§!""§ = true;
            return;
         }
         this.§&"3§();
         this.§#"6§();
      }
      
      private function §&"3§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§5!a§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§6w§)
         {
            this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §9_§)
         {
            this.§%!h§(_loc2_,§%!0§.§-"@§);
            if(_loc4_ = §3!D§.§ @§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§;!Y§,
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
         §`c§ = _loc1_;
         _loc3_ = this.§6w§.getItemByName("Repeater_Items") as §5!a§;
         _loc3_.§^,§(null,§;o§);
         this.§6w§.§;S§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §%!h§(param1:Object, param2:Array) : void
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
      
      private function §#!l§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§9!E§)
         {
            if(§9!E§.parent)
            {
               if(§9!E§.parent.contains(§9!E§))
               {
                  §9!E§.parent.removeChild(§9!E§);
               }
            }
         }
         param1.addChild(§9!E§);
         §9!E§.scaleX = §9!E§.scaleY = param2;
         §9!E§.x = param3;
         §9!E§.y = param4;
      }
      
      private function §#"6§() : void
      {
         var _loc5_:§7"-§ = null;
         var _loc6_:Array = null;
         var _loc7_:§8S§ = null;
         var _loc8_:§7"-§ = null;
         var _loc9_:§5!a§ = null;
         this.§9e§ = true;
         var _loc1_:§5!a§ = this.§6w§.getItemByName("Repeater_Tabs") as §5!a§;
         _loc1_.§^,§(null,§;o§);
         if(§`c§ == null)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §[<§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§5!x§ = true;
         }
         var _loc4_:§+!p§;
         (_loc4_ = new §+!p§(_loc2_,false,§+!p§.§'"6§)).x = 13;
         _loc4_.y = 9;
         this.§6w§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§!!q§)
         {
            _loc5_ = this.§6w§.getItemByName("AvatarHolderClip") as §7"-§;
            this.§#!l§(_loc5_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc6_ = §3!D§.§!!@§(_loc3_);
               _loc7_ = §9!E§.§>7§(_loc6_);
               §=!F§.§;"§.avatar = _loc7_;
            }
            else
            {
               this.§5v§(§=!F§.§+S§);
               §9!E§.§37§("backgrounds1");
            }
            (this.§6w§ as §,!L§).§1[§();
            §!!q§ = false;
         }
         else
         {
            _loc8_ = this.§6w§.getItemByName("AvatarHolderClip") as §7"-§;
            this.§#!l§(_loc8_.mClip);
            §9!E§.§1%§();
            §9!E§.§<!l§.§#t§();
            (_loc9_ = this.§6w§.getItemByName("Repeater_Items") as §5!a§).§^,§(null,§;o§);
            (this.§6w§ as §,!L§).§1[§();
         }
         this.§#<§(_loc1_);
         this.§1Z§();
      }
      
      private function §#<§(param1:§5!a§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§!s§)
         {
            _loc2_ = (this.§6w§ as §,!L§).§;k§(this.§!s§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§!s§.substr("CATEGORY".length);
               this.§6w§.setText(_loc3_,"Textfield_CategoryTitle");
               this.§6w§.§;S§("Repeater_Items","Repeater_Items_Tab_" + _loc2_);
               if(§=!F§.§;"§.items.§-S§.length > 0)
               {
                  param1.§@"-§("Repeater_Tabs_Tab_0").§;!v§(§=!F§.§;"§.items.§-S§[_loc2_].name as String);
               }
            }
            this.§!s§ = null;
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:§7'§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§+w§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§;o§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§;o§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §7'§)
         {
            _loc4_ = param3 as §7'§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §=" §)
               {
                  if(((_loc4_.mParentContainer as §=" §).mParentContainer as §5!a§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§6w§ as §,!L§).§;k§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§6w§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§6w§.§;S§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §=" §).§&!Z§)
                        {
                           (_loc7_ as §;o§).§"c§();
                        }
                        (param3 as §;o§).§4'§();
                        this.§,^§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §=" §).mParentContainer as §5!a§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§5v§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§,p§(param2.substring("REMOVE_".length));
                     }
                     this.§1Z§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§6w§ as §,!L§).§;k§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §7'§).mParentContainer as §=" §).§&!Z§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §;o§).§"c§();
               }
               else
               {
                  (_loc12_ as §;o§).§4'§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§6w§ as §,!L§).§;k§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §7'§).mParentContainer as §=" §).§&!Z§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §;o§).§"c§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §=!F§.§;"§.avatar.§^!+§();
               this.§1Z§();
               this.§,^§();
               break;
            case "RANDOMIZE_AVATAR":
               §=!F§.§;"§.avatar.§;J§();
               this.§1Z§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§4!<§();
               break;
            case "CANCEL_SHARE":
               this.§6w§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§6w§.getItemByName("WaitingForReply").setVisibility(true);
               this.§%2§();
               break;
            case "BUY_THESE":
               _loc16_ = §3!D§.§7U§(this.§-#§);
               AngryBirdsFP11.§@<§.§#m§();
               this.§`"9§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §+!B§.§'"4§(_loc19_);
                  this.§`"9§.push(_loc19_);
               }
               §@!]§.addCallback("purchaseComplete",this.§'!v§);
               §@!]§.§9"'§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§5!x§ = false;
               this.§6w§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §=!F§.§;"§.avatar.§ "9§();
               this.§'"?§(_loc18_);
               this.§,^§();
               break;
            case "SET_PROFILE":
               this.§5!x§ = true;
               this.§6w§.getItemByName("WaitingForReply").setVisibility(true);
               this.§'"?§("");
               this.§,^§();
               break;
            case "CLOSE_AVATAR":
               this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§6w§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§,^§();
               break;
            case "SCROLL_LEFT":
               this.§,^§();
               break;
            case "HALLOWEEN_SHOP":
               §%?§.§ ]§("avatarCreator");
               this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
               this.§>!C§ = false;
               this.deActivate();
         }
      }
      
      private function §%2§() : void
      {
         §+!B§.§1!4§();
         AngryBirdsFP11.§@<§.§#m§();
         §@!]§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §@!]§.§9"'§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§9c§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§7'§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §+!B§.§3!1§();
         §@!]§.§[">§("permissionRequestComplete",this.permissionRequestComplete);
         this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§6w§.getItemByName("AvatarSharing").setVisibility(true);
            this.§6w§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §9c§();
            _loc2_.§0"C§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§=!F§.§;"§.avatar.§ "9§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§6w§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §4!<§() : void
      {
         this.§6w§.getItemByName("AvatarSharing").setVisibility(false);
         this.§6w§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§6w§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§9c§ = new §9c§();
         _loc1_.§0"C§();
         var _loc3_:BitmapData = _loc1_.render(§=!F§.§;"§.avatar.§ "9§(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §8B§.§6"C§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
         §9!O§.§[!S§(_loc3_,§&"§.§6"8§,_loc8_,this.§+!b§,this.§9i§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §@!]§.§[">§("purchaseComplete",this.§'!v§);
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         if(this.§>!C§)
         {
            preClose();
         }
         else
         {
            this.close();
         }
      }
      
      private function §+!b§(param1:*) : void
      {
         this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §9i§() : void
      {
         this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§9e§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §+!B§.§6t§();
         var _loc2_:§7"-§ = this.§6w§.getItemByName("AvatarSavedAnimation") as §7"-§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§!""§)
         {
            this.§!""§ = false;
            this.§&"3§();
         }
         §=!F§.§;"§.§5!o§();
         if(§9!E§.§<!l§ == null)
         {
            §9!E§.§%!A§(§=!F§.§;"§.§;!8§());
         }
         if(!this.§9e§)
         {
            this.§#"6§();
         }
      }
      
      private function §%";§(param1:Boolean) : void
      {
         var _loc2_:§use § = null;
         var _loc3_:§;o§ = null;
         for each(_loc2_ in §=!F§.§;"§.items.§-S§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = this.§6w§.getItemByName(_loc2_.name.toUpperCase()) as §;o§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §"j§(param1:Boolean) : void
      {
         this.§6w§.getItemByName("Button_Unequip").setVisibility(param1);
         this.§6w§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §1Z§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§5!a§ = this.§6w§.getItemByName("Repeater_Items") as §5!a§;
         var _loc2_:Number = 0;
         while(_loc2_ < §=!F§.§;"§.items.§-S§.length)
         {
            _loc3_ = §=!F§.§;"§.items.§-S§[_loc2_].name;
            _loc4_ = §=!F§.§;"§.avatar.§%!^§(_loc3_);
            if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
            {
               if(_loc4_.§;!Y§.indexOf("GreenDay") > -1)
               {
                  this.§%";§(false);
                  this.§"j§(false);
               }
               else
               {
                  this.§%";§(true);
                  this.§"j§(true);
               }
            }
            if(_loc4_ == null)
            {
               _loc1_.§@"-§("Repeater_Items_Tab_" + _loc2_).§;!v§(_loc3_);
            }
            else
            {
               _loc1_.§@"-§("Repeater_Items_Tab_" + _loc2_).§;!v§(_loc4_.§;!Y§);
            }
            _loc2_++;
         }
         this.§,^§();
      }
      
      public function §'!v§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§`"9§)
         {
            §+!B§.§[4§(_loc1_);
         }
         this.§`"9§ = [];
         §@!]§.§[">§("purchaseComplete",this.§'!v§);
         this.§@U§();
      }
      
      private function §'"?§(param1:String) : void
      {
         this.§1"-§ = this.§2S§;
         this.§2S§ = param1;
         var _loc2_:URLRequest = §-!l§.§%""§(§%h§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§7!D§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§&!"§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ c§);
         _loc3_.load(_loc2_);
      }
      
      protected function § c§(param1:SecurityErrorEvent) : void
      {
         §%?§.§4!>§();
      }
      
      private function §7!D§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§7"-§ = null;
         if(this.§2S§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §[<§).avatarString = this.§2S§;
            §!H§.§^!;§(new §^!b§(this.§2S§,(AngryBirdsFP11.sUserProgress as §[<§).§4v§),true,true);
            §2!!§.§&!L§(this.§2S§);
            _loc2_ = this.§2S§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§1"-§)
               {
                  if(this.§1"-§.indexOf(_loc3_) == -1)
                  {
                     §+!B§.§#!!§(_loc3_);
                  }
               }
               else
               {
                  §+!B§.§#!!§(_loc3_);
               }
            }
         }
         if(this.§9e§)
         {
            this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§6w§.getItemByName("AvatarSavedAnimation") as §7"-§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§,^§();
         }
      }
      
      private function §&!"§(param1:IOErrorEvent) : void
      {
         var _loc2_:§7"-§ = null;
         if(this.§9e§)
         {
            this.§6w§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§6w§.getItemByName("AvatarSavedAnimation") as §7"-§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §,p§(param1:String) : void
      {
         §=!F§.§;"§.avatar.§,p§(param1);
         this.§,^§();
      }
      
      public function §5v§(param1:String) : void
      {
         var _loc4_:§8S§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §=!F§.§;"§.items.§1!P§(param1);
         var _loc3_:§8S§ = §=!F§.§;"§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§[C§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§&!h§().§;!Y§ != _loc2_.§;!Y§)
            {
               _loc4_ = §=!F§.§;"§.§8!T§(_loc2_.§;!Y§);
               §9!E§.§%!A§(_loc4_,110,174);
               _loc4_.§^!+§();
               _loc4_.§0!L§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§'E§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §9!E§.§37§(_loc6_.§;!Y§);
                        }
                        _loc4_.§0!L§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§%!^§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§0!L§(§=!F§.§;"§.items.§1!P§("Backgrounds1"));
               }
            }
            else if(_loc2_.§[C§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §9!E§.§37§(_loc2_.§;!Y§);
               §=!F§.§;"§.avatar.§0!L§(_loc2_);
            }
            else
            {
               §=!F§.§;"§.avatar.§0!L§(_loc2_);
            }
         }
         else
         {
            §+!k§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§,^§();
      }
      
      private function §,^§() : void
      {
         var _loc4_:§use § = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§;o§ = null;
         var _loc15_:§;o§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §[<§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §=!F§.§;"§.avatar.§ "9§()).split("-");
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
         for each(_loc4_ in §=!F§.§;"§.items.§-S§)
         {
            (_loc14_ = this.§6w§.getItemByName(_loc4_.name.toUpperCase()) as §;o§).§>"-§();
         }
         this.§-#§ = [];
         for each(_loc5_ in §=!F§.§;"§.avatar.§'E§)
         {
            _loc15_ = this.§6w§.getItemByName(_loc5_.category.toUpperCase()) as §;o§;
            _loc16_ = §1!D§(_loc5_.§;!Y§);
            _loc15_.§1!1§(_loc5_.§;!Y§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§-#§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§6w§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§6w§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§6w§.getItemByName("Textfield_Price").setVisibility(true);
            this.§6w§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§6w§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§6w§.getItemByName("Textfield_Price").setVisibility(false);
            this.§6w§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§5!x§)
         {
            (this.§6w§.getItemByName("SetAvatarProfileButton") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§6w§.getItemByName("SetFacebookProfileButton") as §^!D§).setComponentState(§=!&§.§-N§);
         }
         else if(_loc1_ > 0)
         {
            (this.§6w§.getItemByName("SetAvatarProfileButton") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§6w§.getItemByName("SetFacebookProfileButton") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§6w§.getItemByName("SetFacebookProfileButton") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§6w§.getItemByName("SetAvatarProfileButton") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§6w§.getItemByName("SetAvatarProfileButton") as §^!D§).setComponentState(§=!&§.§-N§);
               this.§6w§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§6w§.setText(§,!L§.§ X§(_loc1_),"Textfield_Price");
         if(this.§9!7§ == null)
         {
            this.§9!7§ = new §9c§();
            this.§9!7§.§0"C§();
         }
         var _loc6_:§^!D§ = this.§6w§.getItemByName("SetAvatarProfileButton") as §^!D§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §=!F§.§;"§.avatar.§ "9§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§9!7§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§=" §;
         if(_loc9_ = this.§6w§.getItemByName(this.§6w§.§%d§("Repeater_Items")) as §=" §)
         {
            this.§6w§.setText("Page " + (_loc9_.§`&§ + 1).toString() + "/" + _loc9_.§`!7§,"Textfield_PageNumber");
            if(_loc9_.§`!7§ == 1)
            {
               this.§6w§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§6w§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§6w§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§6w§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§6w§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§6w§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
