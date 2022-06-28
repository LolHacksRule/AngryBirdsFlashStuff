package §@_§
{
   import §!5§.§6%§;
   import §&!4§.§ !J§;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §&=§.§#!5§;
   import §&=§.§>!-§;
   import §&=§.Item;
   import §'H§.§9!f§;
   import §+k§.§%!2§;
   import §+k§.§=!A§;
   import §-2§.§ !O§;
   import §1n§.§ C§;
   import §4!C§.§]!X§;
   import §6z§.§7>§;
   import §6z§.§[g§;
   import §6z§.§`!<§;
   import §8!P§.§5!n§;
   import §8!P§.§@!=§;
   import §8!P§.§^d§;
   import §9!Q§.§7o§;
   import §9!Q§.StatePopupManager;
   import §9#§.Popup;
   import §;!q§.§%t§;
   import §;!q§.§=t§;
   import §<z§.§`G§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §^c§.§+-§;
   import §^c§.§=o§;
   import §`M§.§"W§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§>g§;
   import §`M§.§[A§;
   import com.rovio.assets.§9!N§;
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
   
   public class §!T§ extends Popup
   {
      
      private static var §`!i§:Class = §4!g§;
      
      public static var §<P§:String;
      
      private static var §='§:Array = [{
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
      
      public static const §3F§:String = "CreatorState";
      
      public static const §6Z§:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const §4-§:String = "RedBird";
      
      public static const §2!M§:String = "NoHat";
      
      public static const §+g§:String = "10001";
      
      public static const §5!X§:String = "CategoryBirds";
      
      public static var §>!J§:Array;
      
      private static var §5s§:§5!n§;
      
      public static var §4!b§:String;
      
      private static var §2s§:String;
      
      public static var § @§:Array;
      
      public static var § !u§:URLLoader;
      
      public static var §>'§:Array;
      
      private static var §9H§:Boolean = true;
       
      
      private var §>j§:StatePopupManager;
      
      private var §]!m§:Item = null;
      
      private var §!7§:Boolean = false;
      
      private var §&r§:String;
      
      private var §4!&§:Array;
      
      private var §!b§:Array;
      
      private var §3#§:Boolean = false;
      
      private var §"!M§:Boolean = false;
      
      private var §`-§:§ C§;
      
      private var §]&§:§=o§;
      
      private var §4M§:String;
      
      private var §[X§:String;
      
      public function §!T§(param1:§ C§, param2:StatePopupManager, param3:String = null)
      {
         var _loc5_:§#!5§ = null;
         this.§4!&§ = [];
         this.§!b§ = [];
         this.§>j§ = param2;
         super(§`!<§.§ !0§(§`!i§),param1);
         if(param3)
         {
            this.§4M§ = param3;
         }
         this.§>j§.addEventListener(§6%§.§=F§,this.onUiInteraction);
         this.§`-§ = param1;
         if((AngryBirdsFP11.sUserProgress as §9!f§).isEggUnlocked("1000-2"))
         {
            this.§`-§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§`-§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §4!b§ = AngryBirdsFP11.§6S§;
         var _loc4_:§+-§ = new §+-§();
         if(§>'§ == null)
         {
            §>'§ = [];
            for each(_loc5_ in §+-§.§3!§().characters)
            {
               §>'§.push(new §@!=§(_loc5_));
            }
         }
         if(§5s§ == null)
         {
            §5s§ = new §5!n§();
         }
         if(§ !u§ == null)
         {
            this.§with§();
         }
      }
      
      public static function §+!q§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!J§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §1A§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!J§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §1P§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!J§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §^q§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!J§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §4!J§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!J§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §;b§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §='§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §with§() : void
      {
         this.§`-§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §]!X§.§#l§(§4!b§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         § !u§ = new URLLoader();
         § !u§.addEventListener(Event.COMPLETE,this.onComplete);
         § !u§.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
         § !u§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!d§);
         § !u§.load(_loc1_);
      }
      
      protected function §7!d§(param1:SecurityErrorEvent) : void
      {
         §7o§.§ "§();
         § !u§ = null;
      }
      
      private function §<@§(param1:IOErrorEvent) : void
      {
         §7o§.§ "§();
         § !u§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         § @§ = § !J§.§!!R§(param1.currentTarget.data);
         if(!this.§!7§)
         {
            this.§"!M§ = true;
            return;
         }
         this.§,,§();
         this.§5G§();
      }
      
      private function §,,§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§[A§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§`-§)
         {
            this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in § @§)
         {
            this.§^p§(_loc2_,§!T§.§='§);
            if(_loc4_ = §`G§.§=X§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§49§,
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
         §>!J§ = _loc1_;
         _loc3_ = this.§`-§.getItemByName("Repeater_Items") as §[A§;
         _loc3_.§@!+§(null,§^d§);
         this.§`-§.§%! §("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §^p§(param1:Object, param2:Array) : void
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
      
      private function §!!b§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§5s§)
         {
            if(§5s§.parent)
            {
               if(§5s§.parent.contains(§5s§))
               {
                  §5s§.parent.removeChild(§5s§);
               }
            }
         }
         param1.addChild(§5s§);
         §5s§.scaleX = §5s§.scaleY = param2;
         §5s§.x = param3;
         §5s§.y = param4;
      }
      
      private function §5G§() : void
      {
         var _loc5_:§#!5§ = null;
         var _loc6_:§&!G§ = null;
         var _loc7_:Array = null;
         var _loc8_:§@!=§ = null;
         var _loc9_:§&!G§ = null;
         var _loc10_:§#!5§ = null;
         var _loc11_:§[A§ = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         this.§!7§ = true;
         var _loc1_:§[A§ = this.§`-§.getItemByName("Repeater_Tabs") as §[A§;
         _loc1_.§@!+§(null,§^d§);
         if(§>!J§ == null)
         {
            return;
         }
         if(§>'§ == null)
         {
            §>'§ = [];
            for each(_loc5_ in §+-§.§3!§().characters)
            {
               §>'§.push(new §@!=§(_loc5_));
            }
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §9!f§).§0!V§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §9!f§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§3#§ = true;
         }
         var _loc4_:§%t§;
         (_loc4_ = new §%t§(_loc2_,false,§%t§.§@!#§)).x = 13;
         _loc4_.y = 9;
         this.§`-§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§9H§)
         {
            _loc6_ = this.§`-§.getItemByName("AvatarHolderClip") as §&!G§;
            this.§!!b§(_loc6_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc7_ = §`G§.§@Q§(_loc3_);
               _loc8_ = §5s§.§0Z§(_loc7_);
               §+-§.§5!0§ = _loc8_;
            }
            else
            {
               this.§`!,§(§4-§);
               §5s§.§#!-§("backgrounds1");
            }
            (this.§`-§ as § !O§).§#'§();
            §9H§ = false;
         }
         else
         {
            _loc9_ = this.§`-§.getItemByName("AvatarHolderClip") as §&!G§;
            this.§!!b§(_loc9_.mClip);
            _loc10_ = §5s§.§]!S§.§>!!§();
            §5s§.§ r§(_loc10_.§49§,_loc10_.sId,_loc10_.§5H§,§>'§,110,174);
            §5s§.§]!S§.§@%§();
            (_loc11_ = this.§`-§.getItemByName("Repeater_Items") as §[A§).§@!+§(null,§^d§);
            (this.§`-§ as § !O§).§#'§();
         }
         if(this.§4M§)
         {
            if((_loc12_ = (this.§`-§ as § !O§).§"N§(this.§4M§)) != -1)
            {
               _loc13_ = this.§4M§.substr("CATEGORY".length);
               this.§`-§.setText(_loc13_,"Textfield_CategoryTitle");
               this.§`-§.§%! §("Repeater_Items","Repeater_Items_Tab_" + _loc12_);
               if(§+-§.§?!9§().§1K§.length > 0)
               {
                  _loc1_.§1l§("Repeater_Tabs_Tab_0").§`?§(§+-§.§?!9§().§1K§[_loc12_].name as String);
               }
            }
            this.§4M§ = null;
         }
         this.§3!#§();
      }
      
      private function onUiInteraction(param1:§6%§) : void
      {
         this.uiInteractionHandler(param1.§4!@§,param1.§`"§,param1.§^4§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:§&W§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§>g§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§^d§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§^d§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §&W§)
         {
            _loc4_ = param3 as §&W§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §"W§)
               {
                  if(((_loc4_.mParentContainer as §"W§).mParentContainer as §[A§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§`-§ as § !O§).§"N§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§`-§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§`-§.§%! §("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §"W§).§0!i§)
                        {
                           (_loc7_ as §^d§).§?t§();
                        }
                        (param3 as §^d§).§8P§();
                        this.§8!H§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §"W§).mParentContainer as §[A§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§`!,§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§'P§(param2.substring("REMOVE_".length));
                     }
                     this.§3!#§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§`-§ as § !O§).§"N§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §&W§).mParentContainer as §"W§).§0!i§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §^d§).§?t§();
               }
               else
               {
                  (_loc12_ as §^d§).§8P§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§`-§ as § !O§).§"N§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §&W§).mParentContainer as §"W§).§0!i§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §^d§).§?t§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §+-§.§5!0§.§1S§();
               this.§3!#§();
               this.§8!H§();
               break;
            case "RANDOMIZE_AVATAR":
               §+-§.§5!0§.§]L§();
               this.§3!#§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§95§();
               break;
            case "CANCEL_SHARE":
               this.§`-§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§`-§.getItemByName("WaitingForReply").setVisibility(true);
               this.§8!b§();
               break;
            case "BUY_THESE":
               _loc16_ = §`G§.§,Y§(this.§4!&§);
               AngryBirdsFP11.§`!c§.§2!3§();
               this.§!b§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §]V§.§^!3§(_loc19_);
                  this.§!b§.push(_loc19_);
               }
               §1?§.addCallback("purchaseComplete",this.§-4§);
               §1?§.§>!X§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§3#§ = false;
               this.§`-§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §+-§.§5!0§.§6B§();
               this.§2!c§(_loc18_);
               this.§8!H§();
               break;
            case "SET_PROFILE":
               this.§3#§ = true;
               this.§`-§.getItemByName("WaitingForReply").setVisibility(true);
               this.§2!c§("");
               this.§8!H§();
               break;
            case "CLOSE_AVATAR":
               this.§>j§.removeEventListener(§6%§.§=F§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§`-§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §9!f§).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§8!H§();
               break;
            case "SCROLL_LEFT":
               this.§8!H§();
         }
      }
      
      private function §8!b§() : void
      {
         §]V§.§",§();
         AngryBirdsFP11.§`!c§.§2!3§();
         §1?§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §1?§.§>!X§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§=o§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§&W§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §]V§.§<[§();
         §1?§.§^!D§("permissionRequestComplete",this.permissionRequestComplete);
         this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§`-§.getItemByName("AvatarSharing").setVisibility(true);
            this.§`-§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §=o§();
            _loc2_.§?k§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§+-§.§5!0§.§6B§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§`-§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §95§() : void
      {
         this.§`-§.getItemByName("AvatarSharing").setVisibility(false);
         this.§`-§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§`-§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§=o§ = new §=o§();
         _loc1_.§?k§();
         var _loc3_:BitmapData = _loc1_.render(§+-§.§5!0§.§6B§(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §9!N§.§0!k§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §9!f§).§0!V§;
         §7>§.§-3§(_loc3_,§<P§,_loc8_,this.§'!'§,this.§52§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §1?§.§^!D§("purchaseComplete",this.§-4§);
         this.§>j§.removeEventListener(§6%§.§=F§,this.onUiInteraction);
         preClose();
      }
      
      private function §'!'§(param1:*) : void
      {
         var _loc2_:String = param1.toString();
         this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §52§() : void
      {
         this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§!7§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:§@!=§ = null;
         super.open(param1);
         §]V§.§#!'§();
         var _loc2_:§&!G§ = this.§`-§.getItemByName("AvatarSavedAnimation") as §&!G§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§"!M§)
         {
            this.§"!M§ = false;
            this.§,,§();
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §>'§.length)
         {
            (_loc4_ = §>'§[_loc3_]).hide();
            _loc3_++;
         }
         if(§5s§.§]!S§ == null)
         {
            §5s§.§ r§(§4-§,§+g§,§5!X§,§>'§);
         }
         if(!this.§!7§)
         {
            this.§5G§();
         }
      }
      
      public function §3!#§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§[A§ = this.§`-§.getItemByName("Repeater_Items") as §[A§;
         var _loc2_:Number = 0;
         while(_loc2_ < §+-§.§?!9§().§1K§.length)
         {
            _loc3_ = §+-§.§?!9§().§1K§[_loc2_].name;
            if((_loc4_ = §+-§.§5!0§.§=!<§(_loc3_)) == null)
            {
               _loc1_.§1l§("Repeater_Items_Tab_" + _loc2_).§`?§(_loc3_);
            }
            else
            {
               _loc1_.§1l§("Repeater_Items_Tab_" + _loc2_).§`?§(_loc4_.§49§);
            }
            _loc2_++;
         }
         this.§8!H§();
      }
      
      public function §-4§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§!b§)
         {
            §]V§.§7`§(_loc1_);
         }
         this.§!b§ = [];
         §1?§.§^!D§("purchaseComplete",this.§-4§);
         this.§with§();
      }
      
      private function §2!c§(param1:String) : void
      {
         this.§[X§ = this.§&r§;
         this.§&r§ = param1;
         var _loc2_:URLRequest = §]!X§.§#l§(§4!b§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§!!$§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§8K§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!Y§);
         _loc3_.load(_loc2_);
      }
      
      protected function §-!Y§(param1:SecurityErrorEvent) : void
      {
         §7o§.§ "§();
      }
      
      private function §!!$§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§&!G§ = null;
         if(this.§&r§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §9!f§).avatarString = this.§&r§;
            §%!2§.§1u§(new §=!A§(this.§&r§,(AngryBirdsFP11.sUserProgress as §9!f§).§0!V§),true,true);
            §=t§.§?B§(this.§&r§);
            _loc2_ = this.§&r§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§[X§)
               {
                  if(this.§[X§.indexOf(_loc3_) == -1)
                  {
                     §]V§.§?!o§(_loc3_);
                  }
               }
               else
               {
                  §]V§.§?!o§(_loc3_);
               }
            }
         }
         if(this.§!7§)
         {
            this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§`-§.getItemByName("AvatarSavedAnimation") as §&!G§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§8!H§();
         }
      }
      
      private function §8K§(param1:IOErrorEvent) : void
      {
         var _loc2_:§&!G§ = null;
         if(this.§!7§)
         {
            this.§`-§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§`-§.getItemByName("AvatarSavedAnimation") as §&!G§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §'P§(param1:String) : void
      {
         §+-§.§5!0§.§'P§(param1);
         this.§8!H§();
      }
      
      public function §`!,§(param1:String) : void
      {
         var _loc4_:§@!=§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §+-§.§?!9§().§ !`§(param1);
         var _loc3_:§@!=§ = §+-§.§5!0§;
         if(_loc2_)
         {
            if(_loc2_.§5H§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§>!!§().§49§ != _loc2_.§49§)
            {
               (_loc4_ = §5s§.§ r§(_loc2_.§49§,_loc2_.sId,_loc2_.§5H§,§>'§,110,174)).§1S§();
               _loc4_.§%D§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§+!?§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §5s§.§#!-§(_loc6_.§49§);
                        }
                        _loc4_.§%D§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§=!<§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§%D§(§+-§.§?!9§().§ !`§("Backgrounds1"));
               }
            }
            else if(_loc2_.§5H§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §5s§.§#!-§(_loc2_.§49§);
               §+-§.§5!0§.§%D§(_loc2_);
            }
            else
            {
               §+-§.§5!0§.§%D§(_loc2_);
            }
         }
         else
         {
            §[g§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§8!H§();
      }
      
      private function §8!H§() : void
      {
         var _loc4_:§>!-§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§^d§ = null;
         var _loc15_:§^d§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §9!f§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §+-§.§5!0§.§6B§()).split("-");
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
         for each(_loc4_ in §+-§.§?!9§().§1K§)
         {
            (_loc14_ = this.§`-§.getItemByName(_loc4_.name.toUpperCase()) as §^d§).§&!p§();
         }
         this.§4!&§ = [];
         for each(_loc5_ in §+-§.§5!0§.§+!?§)
         {
            _loc15_ = this.§`-§.getItemByName(_loc5_.category.toUpperCase()) as §^d§;
            _loc16_ = §1A§(_loc5_.§49§);
            _loc15_.§2!L§(_loc5_.§49§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§4!&§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§`-§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§`-§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§`-§.getItemByName("Textfield_Price").setVisibility(true);
            this.§`-§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§`-§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§`-§.getItemByName("Textfield_Price").setVisibility(false);
            this.§`-§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§3#§)
         {
            (this.§`-§.getItemByName("SetAvatarProfileButton") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§`-§.getItemByName("SetFacebookProfileButton") as §,c§).setComponentState(§5!a§.§-n§);
         }
         else if(_loc1_ > 0)
         {
            (this.§`-§.getItemByName("SetAvatarProfileButton") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§`-§.getItemByName("SetFacebookProfileButton") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§`-§.getItemByName("SetFacebookProfileButton") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§`-§.getItemByName("SetAvatarProfileButton") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§`-§.getItemByName("SetAvatarProfileButton") as §,c§).setComponentState(§5!a§.§-n§);
               this.§`-§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§`-§.setText(§ !O§.§9"§(_loc1_),"Textfield_Price");
         if(this.§]&§ == null)
         {
            this.§]&§ = new §=o§();
            this.§]&§.§?k§();
         }
         var _loc6_:§,c§ = this.§`-§.getItemByName("SetAvatarProfileButton") as §,c§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §+-§.§5!0§.§6B§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§]&§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§"W§;
         if(_loc9_ = this.§`-§.getItemByName(this.§`-§.§[!,§("Repeater_Items")) as §"W§)
         {
            this.§`-§.setText("Page " + (_loc9_.§7O§ + 1).toString() + "/" + _loc9_.§<!Y§,"Textfield_PageNumber");
            if(_loc9_.§<!Y§ == 1)
            {
               this.§`-§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§`-§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§`-§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§`-§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§`-§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§`-§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
