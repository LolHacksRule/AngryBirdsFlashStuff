package §[!I§
{
   import §!e§.§function§;
   import §"D§.§#v§;
   import §"x§.§-8§;
   import §"x§.§3!v§;
   import §"x§.§>!s§;
   import §%t§.§9!7§;
   import §%t§.§?!a§;
   import §,!§.§![§;
   import §,!7§.§@!4§;
   import §,B§.Popup;
   import §1!E§.§,!5§;
   import §1!E§.§,D§;
   import §1!E§.§1!=§;
   import §1!E§.§31§;
   import §1!E§.§==§;
   import §4;§.§3M§;
   import §4;§.§5n§;
   import §6!Y§.§!o§;
   import §6!Y§.§8;§;
   import §7X§.§+!p§;
   import §8!6§.§"!K§;
   import §8!6§.§&!S§;
   import §8!6§.Item;
   import §8!;§.§`7§;
   import §;!o§.§>!l§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §?N§.StatePopupManager;
   import §?N§.§]!e§;
   import §[!+§.§4`§;
   import §[N§.§16§;
   import §[N§.§<!b§;
   import §[N§.§@!H§;
   import §]+§.§@!J§;
   import com.rovio.assets.§`!t§;
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
   
   public class §<-§ extends Popup
   {
      
      private static var §'!o§:Class = §[!c§;
      
      public static var §&!T§:String;
      
      private static var §-R§:Array = [{
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
      
      public static const §"!s§:String = "CreatorState";
      
      public static const §=!-§:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const §7h§:String = "RedBird";
      
      public static const §,8§:String = "NoHat";
      
      public static const §!!Q§:String = "10001";
      
      public static const §&!f§:String = "CategoryBirds";
      
      public static var §%!A§:Array;
      
      private static var §9!1§:§@!H§;
      
      public static var §[D§:String;
      
      private static var §9!c§:String;
      
      public static var §3!E§:Array;
      
      public static var §set §:URLLoader;
      
      public static var §;!]§:Array;
      
      private static var §`?§:Boolean = true;
       
      
      private var §<!o§:StatePopupManager;
      
      private var §2J§:Item = null;
      
      private var §;>§:Boolean = false;
      
      private var §8D§:String;
      
      private var §'B§:Array;
      
      private var §-!"§:Array;
      
      private var §^_§:Boolean = false;
      
      private var §+!,§:Boolean = false;
      
      private var §&!m§:§4`§;
      
      private var §,!Q§:§3M§;
      
      private var §!w§:String;
      
      private var §2!5§:String;
      
      public function §<-§(param1:§4`§, param2:StatePopupManager, param3:String = null)
      {
         var _loc5_:§&!S§ = null;
         this.§'B§ = [];
         this.§-!"§ = [];
         this.§<!o§ = param2;
         super(§3!v§.§;!-§(§'!o§),param1);
         if(param3)
         {
            this.§!w§ = param3;
         }
         this.§<!o§.addEventListener(§@!4§.§!!o§,this.onUiInteraction);
         this.§&!m§ = param1;
         if((AngryBirdsFP11.sUserProgress as §![§).isEggUnlocked("1000-2"))
         {
            this.§&!m§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§&!m§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §[D§ = AngryBirdsFP11.§;!1§;
         var _loc4_:§5n§ = new §5n§();
         if(§;!]§ == null)
         {
            §;!]§ = [];
            for each(_loc5_ in §5n§.§+3§().characters)
            {
               §;!]§.push(new §<!b§(_loc5_));
            }
         }
         if(§9!1§ == null)
         {
            §9!1§ = new §@!H§();
         }
         if(§set § == null)
         {
            this.§&J§();
         }
      }
      
      public static function §6,§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%!A§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §-0§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%!A§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §[L§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%!A§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §`§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%!A§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §`!0§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%!A§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §3!8§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §-R§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §&J§() : void
      {
         this.§&!m§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §+!p§.§`;§(§[D§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §set § = new URLLoader();
         §set §.addEventListener(Event.COMPLETE,this.onComplete);
         §set §.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
         §set §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Y§);
         §set §.load(_loc1_);
      }
      
      protected function §&!Y§(param1:SecurityErrorEvent) : void
      {
         §]!e§.§-!1§();
         §set § = null;
      }
      
      private function §9s§(param1:IOErrorEvent) : void
      {
         §]!e§.§-!1§();
         §set § = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §3!E§ = §function§.§8!^§(param1.currentTarget.data);
         if(!this.§;>§)
         {
            this.§+!,§ = true;
            return;
         }
         this.§&!p§();
         this.§;D§();
      }
      
      private function §&!p§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§31§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§&!m§)
         {
            this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §3!E§)
         {
            this.§9R§(_loc2_,§<-§.§-R§);
            if(_loc4_ = §#v§.§-W§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§@H§,
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
         §%!A§ = _loc1_;
         _loc3_ = this.§&!m§.getItemByName("Repeater_Items") as §31§;
         _loc3_.§@K§(null,§16§);
         this.§&!m§.§>!]§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §9R§(param1:Object, param2:Array) : void
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
      
      private function §7y§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§9!1§)
         {
            if(§9!1§.parent)
            {
               if(§9!1§.parent.contains(§9!1§))
               {
                  §9!1§.parent.removeChild(§9!1§);
               }
            }
         }
         param1.addChild(§9!1§);
         §9!1§.scaleX = §9!1§.scaleY = param2;
         §9!1§.x = param3;
         §9!1§.y = param4;
      }
      
      private function §;D§() : void
      {
         var _loc5_:§&!S§ = null;
         var _loc6_:§1!=§ = null;
         var _loc7_:Array = null;
         var _loc8_:§<!b§ = null;
         var _loc9_:§1!=§ = null;
         var _loc10_:§&!S§ = null;
         var _loc11_:§31§ = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         this.§;>§ = true;
         var _loc1_:§31§ = this.§&!m§.getItemByName("Repeater_Tabs") as §31§;
         _loc1_.§@K§(null,§16§);
         if(§%!A§ == null)
         {
            return;
         }
         if(§;!]§ == null)
         {
            §;!]§ = [];
            for each(_loc5_ in §5n§.§+3§().characters)
            {
               §;!]§.push(new §<!b§(_loc5_));
            }
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §![§).§-H§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §![§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§^_§ = true;
         }
         var _loc4_:§?!a§;
         (_loc4_ = new §?!a§(_loc2_,false,§?!a§.§+6§)).x = 13;
         _loc4_.y = 9;
         this.§&!m§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§`?§)
         {
            _loc6_ = this.§&!m§.getItemByName("AvatarHolderClip") as §1!=§;
            this.§7y§(_loc6_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc7_ = §#v§.§62§(_loc3_);
               _loc8_ = §9!1§.§@!<§(_loc7_);
               §5n§.§%!_§ = _loc8_;
            }
            else
            {
               this.§85§(§7h§);
               §9!1§.§38§("backgrounds1");
            }
            (this.§&!m§ as §`7§).§%V§();
            §`?§ = false;
         }
         else
         {
            _loc9_ = this.§&!m§.getItemByName("AvatarHolderClip") as §1!=§;
            this.§7y§(_loc9_.mClip);
            _loc10_ = §9!1§.§7!l§.§^6§();
            §9!1§.§6y§(_loc10_.§@H§,_loc10_.sId,_loc10_.§0!R§,§;!]§,110,174);
            §9!1§.§7!l§.§0!m§();
            (_loc11_ = this.§&!m§.getItemByName("Repeater_Items") as §31§).§@K§(null,§16§);
            (this.§&!m§ as §`7§).§%V§();
         }
         if(this.§!w§)
         {
            if((_loc12_ = (this.§&!m§ as §`7§).§+!+§(this.§!w§)) != -1)
            {
               _loc13_ = this.§!w§.substr("CATEGORY".length);
               this.§&!m§.setText(_loc13_,"Textfield_CategoryTitle");
               this.§&!m§.§>!]§("Repeater_Items","Repeater_Items_Tab_" + _loc12_);
               if(§5n§.§0?§().§]!Q§.length > 0)
               {
                  _loc1_.§-!3§("Repeater_Tabs_Tab_0").§<!_§(§5n§.§0?§().§]!Q§[_loc12_].name as String);
               }
            }
            this.§!w§ = null;
         }
         this.§[!B§();
      }
      
      private function onUiInteraction(param1:§@!4§) : void
      {
         this.uiInteractionHandler(param1.§5!X§,param1.§[!1§,param1.§,!^§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:§&! § = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§,D§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§16§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§16§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §&! §)
         {
            _loc4_ = param3 as §&! §;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §,!5§)
               {
                  if(((_loc4_.mParentContainer as §,!5§).mParentContainer as §31§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§&!m§ as §`7§).§+!+§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§&!m§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§&!m§.§>!]§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §,!5§).§6!§)
                        {
                           (_loc7_ as §16§).§=!C§();
                        }
                        (param3 as §16§).§?4§();
                        this.§?G§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §,!5§).mParentContainer as §31§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§85§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§+2§(param2.substring("REMOVE_".length));
                     }
                     this.§[!B§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§&!m§ as §`7§).§+!+§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §&! §).mParentContainer as §,!5§).§6!§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §16§).§=!C§();
               }
               else
               {
                  (_loc12_ as §16§).§?4§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§&!m§ as §`7§).§+!+§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §&! §).mParentContainer as §,!5§).§6!§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §16§).§=!C§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §5n§.§%!_§.§3c§();
               this.§[!B§();
               this.§?G§();
               break;
            case "RANDOMIZE_AVATAR":
               §5n§.§%!_§.§1!<§();
               this.§[!B§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§9!v§();
               break;
            case "CANCEL_SHARE":
               this.§&!m§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§&!m§.getItemByName("WaitingForReply").setVisibility(true);
               this.§-!5§();
               break;
            case "BUY_THESE":
               _loc16_ = §#v§.§3!9§(this.§'B§);
               AngryBirdsFP11.§3l§.§&2§();
               this.§-!"§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §@!J§.§-;§(_loc19_);
                  this.§-!"§.push(_loc19_);
               }
               §>!l§.addCallback("purchaseComplete",this.§%Q§);
               §>!l§.§ a§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§^_§ = false;
               this.§&!m§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §5n§.§%!_§.§6!`§();
               this.§%L§(_loc18_);
               this.§?G§();
               break;
            case "SET_PROFILE":
               this.§^_§ = true;
               this.§&!m§.getItemByName("WaitingForReply").setVisibility(true);
               this.§%L§("");
               this.§?G§();
               break;
            case "CLOSE_AVATAR":
               this.§<!o§.removeEventListener(§@!4§.§!!o§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§&!m§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §![§).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§?G§();
               break;
            case "SCROLL_LEFT":
               this.§?G§();
         }
      }
      
      private function §-!5§() : void
      {
         §@!J§.§7!0§();
         AngryBirdsFP11.§3l§.§&2§();
         §>!l§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §>!l§.§ a§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§3M§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§&! § = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §@!J§.§;J§();
         §>!l§.§&!0§("permissionRequestComplete",this.permissionRequestComplete);
         this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§&!m§.getItemByName("AvatarSharing").setVisibility(true);
            this.§&!m§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §3M§();
            _loc2_.§&!X§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§5n§.§%!_§.§6!`§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§&!m§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §9!v§() : void
      {
         this.§&!m§.getItemByName("AvatarSharing").setVisibility(false);
         this.§&!m§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§&!m§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§3M§ = new §3M§();
         _loc1_.§&!X§();
         var _loc3_:BitmapData = _loc1_.render(§5n§.§%!_§.§6!`§(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §`!t§.§=J§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §![§).§-H§;
         §>!s§.§3!3§(_loc3_,§&!T§,_loc8_,this.§^!=§,this.§>!L§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §>!l§.§&!0§("purchaseComplete",this.§%Q§);
         this.§<!o§.removeEventListener(§@!4§.§!!o§,this.onUiInteraction);
         preClose();
      }
      
      private function §^!=§(param1:*) : void
      {
         var _loc2_:String = param1.toString();
         this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §>!L§() : void
      {
         this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§;>§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:§<!b§ = null;
         super.open(param1);
         §@!J§.§4!"§();
         var _loc2_:§1!=§ = this.§&!m§.getItemByName("AvatarSavedAnimation") as §1!=§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§+!,§)
         {
            this.§+!,§ = false;
            this.§&!p§();
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §;!]§.length)
         {
            (_loc4_ = §;!]§[_loc3_]).hide();
            _loc3_++;
         }
         if(§9!1§.§7!l§ == null)
         {
            §9!1§.§6y§(§7h§,§!!Q§,§&!f§,§;!]§);
         }
         if(!this.§;>§)
         {
            this.§;D§();
         }
      }
      
      public function §[!B§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§31§ = this.§&!m§.getItemByName("Repeater_Items") as §31§;
         var _loc2_:Number = 0;
         while(_loc2_ < §5n§.§0?§().§]!Q§.length)
         {
            _loc3_ = §5n§.§0?§().§]!Q§[_loc2_].name;
            if((_loc4_ = §5n§.§%!_§.§9!V§(_loc3_)) == null)
            {
               _loc1_.§-!3§("Repeater_Items_Tab_" + _loc2_).§<!_§(_loc3_);
            }
            else
            {
               _loc1_.§-!3§("Repeater_Items_Tab_" + _loc2_).§<!_§(_loc4_.§@H§);
            }
            _loc2_++;
         }
         this.§?G§();
      }
      
      public function §%Q§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§-!"§)
         {
            §@!J§.§]!D§(_loc1_);
         }
         this.§-!"§ = [];
         §>!l§.§&!0§("purchaseComplete",this.§%Q§);
         this.§&J§();
      }
      
      private function §%L§(param1:String) : void
      {
         this.§2!5§ = this.§8D§;
         this.§8D§ = param1;
         var _loc2_:URLRequest = §+!p§.§`;§(§[D§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§@X§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§1!>§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!=§);
         _loc3_.load(_loc2_);
      }
      
      protected function §=!=§(param1:SecurityErrorEvent) : void
      {
         §]!e§.§-!1§();
      }
      
      private function §@X§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§1!=§ = null;
         if(this.§8D§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §![§).avatarString = this.§8D§;
            §!o§.§[b§(new §8;§(this.§8D§,(AngryBirdsFP11.sUserProgress as §![§).§-H§),true,true);
            §9!7§.§%>§(this.§8D§);
            _loc2_ = this.§8D§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§2!5§)
               {
                  if(this.§2!5§.indexOf(_loc3_) == -1)
                  {
                     §@!J§.§]!3§(_loc3_);
                  }
               }
               else
               {
                  §@!J§.§]!3§(_loc3_);
               }
            }
         }
         if(this.§;>§)
         {
            this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§&!m§.getItemByName("AvatarSavedAnimation") as §1!=§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§?G§();
         }
      }
      
      private function §1!>§(param1:IOErrorEvent) : void
      {
         var _loc2_:§1!=§ = null;
         if(this.§;>§)
         {
            this.§&!m§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§&!m§.getItemByName("AvatarSavedAnimation") as §1!=§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §+2§(param1:String) : void
      {
         §5n§.§%!_§.§+2§(param1);
         this.§?G§();
      }
      
      public function §85§(param1:String) : void
      {
         var _loc4_:§<!b§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §5n§.§0?§().§4!^§(param1);
         var _loc3_:§<!b§ = §5n§.§%!_§;
         if(_loc2_)
         {
            if(_loc2_.§0!R§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§^6§().§@H§ != _loc2_.§@H§)
            {
               (_loc4_ = §9!1§.§6y§(_loc2_.§@H§,_loc2_.sId,_loc2_.§0!R§,§;!]§,110,174)).§3c§();
               _loc4_.§1!!§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§^q§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §9!1§.§38§(_loc6_.§@H§);
                        }
                        _loc4_.§1!!§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§9!V§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§1!!§(§5n§.§0?§().§4!^§("Backgrounds1"));
               }
            }
            else if(_loc2_.§0!R§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §9!1§.§38§(_loc2_.§@H§);
               §5n§.§%!_§.§1!!§(_loc2_);
            }
            else
            {
               §5n§.§%!_§.§1!!§(_loc2_);
            }
         }
         else
         {
            §-8§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§?G§();
      }
      
      private function §?G§() : void
      {
         var _loc4_:§"!K§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§16§ = null;
         var _loc15_:§16§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §![§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §5n§.§%!_§.§6!`§()).split("-");
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
         for each(_loc4_ in §5n§.§0?§().§]!Q§)
         {
            (_loc14_ = this.§&!m§.getItemByName(_loc4_.name.toUpperCase()) as §16§).§7!k§();
         }
         this.§'B§ = [];
         for each(_loc5_ in §5n§.§%!_§.§^q§)
         {
            _loc15_ = this.§&!m§.getItemByName(_loc5_.category.toUpperCase()) as §16§;
            _loc16_ = §-0§(_loc5_.§@H§);
            _loc15_.§%Y§(_loc5_.§@H§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§'B§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§&!m§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§&!m§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§&!m§.getItemByName("Textfield_Price").setVisibility(true);
            this.§&!m§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§&!m§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§&!m§.getItemByName("Textfield_Price").setVisibility(false);
            this.§&!m§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§^_§)
         {
            (this.§&!m§.getItemByName("SetAvatarProfileButton") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§&!m§.getItemByName("SetFacebookProfileButton") as §==§).setComponentState(§4+§.§ !M§);
         }
         else if(_loc1_ > 0)
         {
            (this.§&!m§.getItemByName("SetAvatarProfileButton") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§&!m§.getItemByName("SetFacebookProfileButton") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§&!m§.getItemByName("SetFacebookProfileButton") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§&!m§.getItemByName("SetAvatarProfileButton") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§&!m§.getItemByName("SetAvatarProfileButton") as §==§).setComponentState(§4+§.§ !M§);
               this.§&!m§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§&!m§.setText(§`7§.§&K§(_loc1_),"Textfield_Price");
         if(this.§,!Q§ == null)
         {
            this.§,!Q§ = new §3M§();
            this.§,!Q§.§&!X§();
         }
         var _loc6_:§==§ = this.§&!m§.getItemByName("SetAvatarProfileButton") as §==§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §5n§.§%!_§.§6!`§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§,!Q§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§,!5§;
         if(_loc9_ = this.§&!m§.getItemByName(this.§&!m§.§[!?§("Repeater_Items")) as §,!5§)
         {
            this.§&!m§.setText("Page " + (_loc9_.§2!D§ + 1).toString() + "/" + _loc9_.§]!@§,"Textfield_PageNumber");
            if(_loc9_.§]!@§ == 1)
            {
               this.§&!m§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§&!m§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§&!m§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§&!m§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§&!m§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§&!m§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
