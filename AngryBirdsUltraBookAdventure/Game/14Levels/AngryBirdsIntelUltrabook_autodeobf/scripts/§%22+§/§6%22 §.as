package §"+§
{
   import §!!j§.Popup;
   import §#!c§.§!I§;
   import §#!c§.§#!Z§;
   import §#!c§.§=""§;
   import §#!o§.§5#§;
   import §#!o§.§>!,§;
   import §#!o§.Item;
   import §,@§.§8@§;
   import §,@§.§`D§;
   import §-^§.§7!6§;
   import §0!B§.§%9§;
   import §1!B§.§,!?§;
   import §1!B§.§<m§;
   import §1!B§.§>!s§;
   import §2y§.§7!p§;
   import §2y§.§8!k§;
   import §2y§.§;!=§;
   import §2y§.§<N§;
   import §2y§.§[!i§;
   import §9j§.§2A§;
   import §;#§.§&L§;
   import §;#§.§;?§;
   import §<-§.§!!K§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §?4§.§5D§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import §@!Z§.§,Z§;
   import §[;§.§#!6§;
   import §^!m§.§4!i§;
   import §^!m§.StatePopupManager;
   import §^`§.§,!K§;
   import §^`§.§14§;
   import com.rovio.assets.§,!j§;
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
   
   public class §6" § extends Popup
   {
      
      private static var §]!>§:Class = §"H§;
      
      public static var §&l§:String;
      
      private static var §&!H§:Array = [{
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
      
      public static const §'!q§:String = "CreatorState";
      
      public static const §1!k§:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const §'!u§:String = "RedBird";
      
      public static const §#5§:String = "NoHat";
      
      public static const §0!C§:String = "10001";
      
      public static const §<!+§:String = "CategoryBirds";
      
      public static var §]!r§:Array;
      
      private static var §@9§:§#!Z§;
      
      public static var §>O§:String;
      
      private static var §%!i§:String;
      
      public static var §`T§:Array;
      
      public static var §03§:URLLoader;
      
      public static var §;!O§:Array;
      
      private static var §6U§:Boolean = true;
       
      
      private var §,i§:StatePopupManager;
      
      private var §-Z§:Item = null;
      
      private var §6K§:Boolean = false;
      
      private var §2!!§:String;
      
      private var §>!B§:Array;
      
      private var §-4§:Array;
      
      private var §@M§:Boolean = false;
      
      private var §"!o§:Boolean = false;
      
      private var §'!Q§:§&!G§;
      
      private var §?!'§:§&L§;
      
      private var § !'§:String;
      
      private var §,!f§:String;
      
      public function §6" §(param1:§&!G§, param2:StatePopupManager, param3:String = null)
      {
         var _loc5_:§5#§ = null;
         this.§>!B§ = [];
         this.§-4§ = [];
         this.§,i§ = param2;
         super(§>!s§.§;§(§]!>§),param1);
         if(param3)
         {
            this.§ !'§ = param3;
         }
         this.§,i§.addEventListener(§5D§.§5=§,this.onUiInteraction);
         this.§'!Q§ = param1;
         if((AngryBirdsFP11.sUserProgress as §#!6§).§8E§("1000-2"))
         {
            this.§'!Q§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§'!Q§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §>O§ = AngryBirdsFP11.§[!S§;
         var _loc4_:§;?§ = new §;?§();
         if(§;!O§ == null)
         {
            §;!O§ = [];
            for each(_loc5_ in §;?§.§6!V§().characters)
            {
               §;!O§.push(new §!I§(_loc5_));
            }
         }
         if(§@9§ == null)
         {
            §@9§ = new §#!Z§();
         }
         if(§03§ == null)
         {
            this.§1r§();
         }
      }
      
      public static function §=?§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]!r§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §3x§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]!r§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §+m§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]!r§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §&!n§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]!r§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §^!1§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]!r§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §&!&§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §&!H§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §1r§() : void
      {
         this.§'!Q§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §7!6§.§7V§(§>O§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §03§ = new URLLoader();
         §03§.addEventListener(Event.COMPLETE,this.onComplete);
         §03§.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
         §03§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0I§);
         §03§.load(_loc1_);
      }
      
      protected function §0I§(param1:SecurityErrorEvent) : void
      {
         §4!i§.§^!P§();
         §03§ = null;
      }
      
      private function §%""§(param1:IOErrorEvent) : void
      {
         §4!i§.§^!P§();
         §03§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §`T§ = §,Z§.§'o§(param1.currentTarget.data);
         if(!this.§6K§)
         {
            this.§"!o§ = true;
            return;
         }
         this.§8O§();
         this.§1"!§();
      }
      
      private function §8O§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§<N§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§'!Q§)
         {
            this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §`T§)
         {
            this.§!6§(_loc2_,§6" §.§&!H§);
            if(_loc4_ = §%9§.§"6§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§9!^§,
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
         §]!r§ = _loc1_;
         _loc3_ = this.§'!Q§.getItemByName("Repeater_Items") as §<N§;
         _loc3_.§>k§(null,§=""§);
         this.§'!Q§.§?!]§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §!6§(param1:Object, param2:Array) : void
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
      
      private function §=s§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§@9§)
         {
            if(§@9§.parent)
            {
               if(§@9§.parent.contains(§@9§))
               {
                  §@9§.parent.removeChild(§@9§);
               }
            }
         }
         param1.addChild(§@9§);
         §@9§.scaleX = §@9§.scaleY = param2;
         §@9§.x = param3;
         §@9§.y = param4;
      }
      
      private function §1"!§() : void
      {
         var _loc5_:§5#§ = null;
         var _loc6_:§7!p§ = null;
         var _loc7_:Array = null;
         var _loc8_:§!I§ = null;
         var _loc9_:§7!p§ = null;
         var _loc10_:§5#§ = null;
         var _loc11_:§<N§ = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         this.§6K§ = true;
         var _loc1_:§<N§ = this.§'!Q§.getItemByName("Repeater_Tabs") as §<N§;
         _loc1_.§>k§(null,§=""§);
         if(§]!r§ == null)
         {
            return;
         }
         if(§;!O§ == null)
         {
            §;!O§ = [];
            for each(_loc5_ in §;?§.§6!V§().characters)
            {
               §;!O§.push(new §!I§(_loc5_));
            }
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!6§).§ z§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §#!6§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§@M§ = true;
         }
         var _loc4_:§14§;
         (_loc4_ = new §14§(_loc2_,false,§14§.§93§)).x = 13;
         _loc4_.y = 9;
         this.§'!Q§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§6U§)
         {
            _loc6_ = this.§'!Q§.getItemByName("AvatarHolderClip") as §7!p§;
            this.§=s§(_loc6_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc7_ = §%9§.§62§(_loc3_);
               _loc8_ = §@9§.§[F§(_loc7_);
               §;?§.§,K§ = _loc8_;
            }
            else
            {
               this.§ >§(§'!u§);
               §@9§.§>!§("backgrounds1");
            }
            (this.§'!Q§ as §2A§).§each §();
            §6U§ = false;
         }
         else
         {
            _loc9_ = this.§'!Q§.getItemByName("AvatarHolderClip") as §7!p§;
            this.§=s§(_loc9_.mClip);
            _loc10_ = §@9§.§=W§.§&o§();
            §@9§.§+e§(_loc10_.§9!^§,_loc10_.sId,_loc10_.§^w§,§;!O§,110,174);
            §@9§.§=W§.§@!R§();
            (_loc11_ = this.§'!Q§.getItemByName("Repeater_Items") as §<N§).§>k§(null,§=""§);
            (this.§'!Q§ as §2A§).§each §();
         }
         if(this.§ !'§)
         {
            if((_loc12_ = (this.§'!Q§ as §2A§).§6!,§(this.§ !'§)) != -1)
            {
               _loc13_ = this.§ !'§.substr("CATEGORY".length);
               this.§'!Q§.setText(_loc13_,"Textfield_CategoryTitle");
               this.§'!Q§.§?!]§("Repeater_Items","Repeater_Items_Tab_" + _loc12_);
               if(§;?§.§]0§().§>!J§.length > 0)
               {
                  _loc1_.§1!@§("Repeater_Tabs_Tab_0").§@G§(§;?§.§]0§().§>!J§[_loc12_].name as String);
               }
            }
            this.§ !'§ = null;
         }
         this.§4!p§();
      }
      
      private function onUiInteraction(param1:§5D§) : void
      {
         this.uiInteractionHandler(param1.§]!6§,param1.§1!>§,param1.§4!q§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:§7!>§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§8!k§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§=""§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§=""§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §7!>§)
         {
            _loc4_ = param3 as §7!>§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §;!=§)
               {
                  if(((_loc4_.mParentContainer as §;!=§).mParentContainer as §<N§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§'!Q§ as §2A§).§6!,§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§'!Q§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§'!Q§.§?!]§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §;!=§).§&O§)
                        {
                           (_loc7_ as §=""§).§>!e§();
                        }
                        (param3 as §=""§).§7!E§();
                        this.§=r§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §;!=§).mParentContainer as §<N§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§ >§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§`!I§(param2.substring("REMOVE_".length));
                     }
                     this.§4!p§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§'!Q§ as §2A§).§6!,§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §7!>§).mParentContainer as §;!=§).§&O§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §=""§).§>!e§();
               }
               else
               {
                  (_loc12_ as §=""§).§7!E§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§'!Q§ as §2A§).§6!,§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §7!>§).mParentContainer as §;!=§).§&O§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §=""§).§>!e§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §;?§.§,K§.§2<§();
               this.§4!p§();
               this.§=r§();
               break;
            case "RANDOMIZE_AVATAR":
               §;?§.§,K§.§6[§();
               this.§4!p§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§7!!§();
               break;
            case "CANCEL_SHARE":
               this.§'!Q§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§'!Q§.getItemByName("WaitingForReply").setVisibility(true);
               this.§+P§();
               break;
            case "BUY_THESE":
               _loc16_ = §%9§.§?_§(this.§>!B§);
               AngryBirdsFP11.§'!g§.§5!M§();
               this.§-4§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §!!K§.§^!X§(_loc19_);
                  this.§-4§.push(_loc19_);
               }
               §+!i§.addCallback("purchaseComplete",this.§<!I§);
               §+!i§.§>!y§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§@M§ = false;
               this.§'!Q§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §;?§.§,K§.§1n§();
               this.§9!r§(_loc18_);
               this.§=r§();
               break;
            case "SET_PROFILE":
               this.§@M§ = true;
               this.§'!Q§.getItemByName("WaitingForReply").setVisibility(true);
               this.§9!r§("");
               this.§=r§();
               break;
            case "CLOSE_AVATAR":
               this.§,i§.removeEventListener(§5D§.§5=§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§'!Q§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §#!6§).§<!_§("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§=r§();
               break;
            case "SCROLL_LEFT":
               this.§=r§();
         }
      }
      
      private function §+P§() : void
      {
         §!!K§.§-z§();
         AngryBirdsFP11.§'!g§.§5!M§();
         §+!i§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §+!i§.§>!y§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§&L§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§7!>§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §!!K§.§'!s§();
         §+!i§.§=+§("permissionRequestComplete",this.permissionRequestComplete);
         this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§'!Q§.getItemByName("AvatarSharing").setVisibility(true);
            this.§'!Q§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §&L§();
            _loc2_.§50§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§;?§.§,K§.§1n§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§'!Q§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §7!!§() : void
      {
         this.§'!Q§.getItemByName("AvatarSharing").setVisibility(false);
         this.§'!Q§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§'!Q§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§&L§ = new §&L§();
         _loc1_.§50§();
         var _loc3_:BitmapData = _loc1_.render(§;?§.§,K§.§1n§(),null,500);
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(2.5,2.5);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §,!j§.§!!N§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §#!6§).§ z§;
         §,!?§.§4!?§(_loc3_,§&l§,_loc8_,this.§ $§,this.§%!B§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §+!i§.§=+§("purchaseComplete",this.§<!I§);
         this.§,i§.removeEventListener(§5D§.§5=§,this.onUiInteraction);
         preClose();
      }
      
      private function § $§(param1:*) : void
      {
         var _loc2_:String = param1.toString();
         this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §%!B§() : void
      {
         this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§6K§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:§!I§ = null;
         super.open(param1);
         §!!K§.§+!F§();
         var _loc2_:§7!p§ = this.§'!Q§.getItemByName("AvatarSavedAnimation") as §7!p§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§"!o§)
         {
            this.§"!o§ = false;
            this.§8O§();
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §;!O§.length)
         {
            (_loc4_ = §;!O§[_loc3_]).hide();
            _loc3_++;
         }
         if(§@9§.§=W§ == null)
         {
            §@9§.§+e§(§'!u§,§0!C§,§<!+§,§;!O§);
         }
         if(!this.§6K§)
         {
            this.§1"!§();
         }
      }
      
      public function §4!p§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§<N§ = this.§'!Q§.getItemByName("Repeater_Items") as §<N§;
         var _loc2_:Number = 0;
         while(_loc2_ < §;?§.§]0§().§>!J§.length)
         {
            _loc3_ = §;?§.§]0§().§>!J§[_loc2_].name;
            if((_loc4_ = §;?§.§,K§.§-I§(_loc3_)) == null)
            {
               _loc1_.§1!@§("Repeater_Items_Tab_" + _loc2_).§@G§(_loc3_);
            }
            else
            {
               _loc1_.§1!@§("Repeater_Items_Tab_" + _loc2_).§@G§(_loc4_.§9!^§);
            }
            _loc2_++;
         }
         this.§=r§();
      }
      
      public function §<!I§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§-4§)
         {
            §!!K§.§,! §(_loc1_);
         }
         this.§-4§ = [];
         §+!i§.§=+§("purchaseComplete",this.§<!I§);
         this.§1r§();
      }
      
      private function §9!r§(param1:String) : void
      {
         this.§,!f§ = this.§2!!§;
         this.§2!!§ = param1;
         var _loc2_:URLRequest = §7!6§.§7V§(§>O§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§!!x§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§2!p§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!'§);
         _loc3_.load(_loc2_);
      }
      
      protected function §3!'§(param1:SecurityErrorEvent) : void
      {
         §4!i§.§^!P§();
      }
      
      private function §!!x§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§7!p§ = null;
         if(this.§2!!§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §#!6§).avatarString = this.§2!!§;
            §8@§.§ #§(new §`D§(this.§2!!§,(AngryBirdsFP11.sUserProgress as §#!6§).§ z§),true,true);
            §,!K§.§2!Y§(this.§2!!§);
            _loc2_ = this.§2!!§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§,!f§)
               {
                  if(this.§,!f§.indexOf(_loc3_) == -1)
                  {
                     §!!K§.§-G§(_loc3_);
                  }
               }
               else
               {
                  §!!K§.§-G§(_loc3_);
               }
            }
         }
         if(this.§6K§)
         {
            this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§'!Q§.getItemByName("AvatarSavedAnimation") as §7!p§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§=r§();
         }
      }
      
      private function §2!p§(param1:IOErrorEvent) : void
      {
         var _loc2_:§7!p§ = null;
         if(this.§6K§)
         {
            this.§'!Q§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§'!Q§.getItemByName("AvatarSavedAnimation") as §7!p§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §`!I§(param1:String) : void
      {
         §;?§.§,K§.§`!I§(param1);
         this.§=r§();
      }
      
      public function § >§(param1:String) : void
      {
         var _loc4_:§!I§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §;?§.§]0§().§`!H§(param1);
         var _loc3_:§!I§ = §;?§.§,K§;
         if(_loc2_)
         {
            if(_loc2_.§^w§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§&o§().§9!^§ != _loc2_.§9!^§)
            {
               (_loc4_ = §@9§.§+e§(_loc2_.§9!^§,_loc2_.sId,_loc2_.§^w§,§;!O§,110,174)).§2<§();
               _loc4_.§'<§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§6!d§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §@9§.§>!§(_loc6_.§9!^§);
                        }
                        _loc4_.§'<§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§-I§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§'<§(§;?§.§]0§().§`!H§("Backgrounds1"));
               }
            }
            else if(_loc2_.§^w§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §@9§.§>!§(_loc2_.§9!^§);
               §;?§.§,K§.§'<§(_loc2_);
            }
            else
            {
               §;?§.§,K§.§'<§(_loc2_);
            }
         }
         else
         {
            §<m§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§=r§();
      }
      
      private function §=r§() : void
      {
         var _loc4_:§>!,§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§=""§ = null;
         var _loc15_:§=""§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §#!6§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §;?§.§,K§.§1n§()).split("-");
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
         for each(_loc4_ in §;?§.§]0§().§>!J§)
         {
            (_loc14_ = this.§'!Q§.getItemByName(_loc4_.name.toUpperCase()) as §=""§).§3!R§();
         }
         this.§>!B§ = [];
         for each(_loc5_ in §;?§.§,K§.§6!d§)
         {
            _loc15_ = this.§'!Q§.getItemByName(_loc5_.category.toUpperCase()) as §=""§;
            _loc16_ = §3x§(_loc5_.§9!^§);
            _loc15_.§1!A§(_loc5_.§9!^§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§>!B§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§'!Q§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§'!Q§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§'!Q§.getItemByName("Textfield_Price").setVisibility(true);
            this.§'!Q§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§'!Q§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§'!Q§.getItemByName("Textfield_Price").setVisibility(false);
            this.§'!Q§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§@M§)
         {
            (this.§'!Q§.getItemByName("SetAvatarProfileButton") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§'!Q§.getItemByName("SetFacebookProfileButton") as §[!i§).setComponentState(§-0§.§6!q§);
         }
         else if(_loc1_ > 0)
         {
            (this.§'!Q§.getItemByName("SetAvatarProfileButton") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§'!Q§.getItemByName("SetFacebookProfileButton") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§'!Q§.getItemByName("SetFacebookProfileButton") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§'!Q§.getItemByName("SetAvatarProfileButton") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§'!Q§.getItemByName("SetAvatarProfileButton") as §[!i§).setComponentState(§-0§.§6!q§);
               this.§'!Q§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§'!Q§.setText(§2A§.§>!=§(_loc1_),"Textfield_Price");
         if(this.§?!'§ == null)
         {
            this.§?!'§ = new §&L§();
            this.§?!'§.§50§();
         }
         var _loc6_:§[!i§ = this.§'!Q§.getItemByName("SetAvatarProfileButton") as §[!i§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §;?§.§,K§.§1n§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§?!'§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§;!=§;
         if(_loc9_ = this.§'!Q§.getItemByName(this.§'!Q§.§]!8§("Repeater_Items")) as §;!=§)
         {
            this.§'!Q§.setText("Page " + (_loc9_.§<#§ + 1).toString() + "/" + _loc9_.§7!=§,"Textfield_PageNumber");
            if(_loc9_.§7!=§ == 1)
            {
               this.§'!Q§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§'!Q§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§'!Q§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§'!Q§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§'!Q§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§'!Q§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
