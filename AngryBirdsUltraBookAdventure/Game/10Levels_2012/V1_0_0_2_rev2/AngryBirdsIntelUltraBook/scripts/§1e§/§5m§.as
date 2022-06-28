package §1e§
{
   import §+!Q§.§<[§;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §3!8§.§%!5§;
   import §3!8§.§0z§;
   import §6F§.§+!k§;
   import §7=§.§7j§;
   import §7r§.§#!q§;
   import §7r§.§?V§;
   import §7r§.Item;
   import §89§.§,;§;
   import §89§.§7A§;
   import §89§.§?O§;
   import §8u§.§2!A§;
   import §8u§.§3?§;
   import §9!y§.§@M§;
   import §9!y§.StatePopupManager;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §;!5§.§ v§;
   import §;<§.§4!d§;
   import §?!7§.§5!I§;
   import §?!7§.§7p§;
   import §?!7§.§=!#§;
   import §?!7§.§?!x§;
   import §?!7§.§[I§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import §^_§.§ b§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import §`!%§.§2x§;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import §finally§.§4!S§;
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
   
   public class §5m§ extends Popup
   {
      
      private static var §4+§:Class = §2U§;
      
      public static var §[c§:String;
      
      private static var §9!n§:Array = [{
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
      
      public static const §?h§:String = "CreatorState";
      
      public static const §@!_§:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const §5[§:String = "RedBird";
      
      public static const §>!3§:String = "NoHat";
      
      public static const §2V§:String = "10001";
      
      public static const §@!j§:String = "CategoryBirds";
      
      public static var §0!&§:Array;
      
      private static var §6!d§:§,;§;
      
      public static var §,X§:String;
      
      private static var §`]§:String;
      
      public static var §8J§:Array;
      
      public static var §#%§:URLLoader;
      
      public static var §<!m§:Array;
      
      private static var §@!h§:Boolean = true;
       
      
      private var §0q§:StatePopupManager;
      
      private var §,F§:Item = null;
      
      private var §8q§:Boolean = false;
      
      private var §8o§:String;
      
      private var §#0§:Array;
      
      private var §!z§:Array;
      
      private var §2H§:Boolean = false;
      
      private var §[_§:Boolean = false;
      
      private var §5!P§:§'!^§;
      
      private var §<!H§:§2x§;
      
      private var §'!2§:String;
      
      private var §]!i§:String;
      
      public function §5m§(param1:§'!^§, param2:StatePopupManager, param3:String = null)
      {
         var _loc5_:§#!q§ = null;
         this.§#0§ = [];
         this.§!z§ = [];
         this.§0q§ = param2;
         super(§,>§.§%2§(§4+§),param1);
         if(param3)
         {
            this.§'!2§ = param3;
         }
         this.§0q§.addEventListener(§+!k§.§=m§,this.onUiInteraction);
         this.§5!P§ = param1;
         if((AngryBirdsFP11.sUserProgress as §<[§).isEggUnlocked("1000-2"))
         {
            this.§5!P§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§5!P§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §,X§ = AngryBirdsFP11.§8!`§;
         var _loc4_:§6!_§ = new §6!_§();
         if(§<!m§ == null)
         {
            §<!m§ = [];
            for each(_loc5_ in §6!_§.§`;§().characters)
            {
               §<!m§.push(new §7A§(_loc5_));
            }
         }
         if(§6!d§ == null)
         {
            §6!d§ = new §,;§();
         }
         if(§#%§ == null)
         {
            this.§^!F§();
         }
      }
      
      public static function §+!d§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §8!]§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §6A§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §4!E§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §6S§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!&§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §<!n§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §9!n§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §^!F§() : void
      {
         this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = § v§.§<N§(§,X§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §#%§ = new URLLoader();
         §#%§.addEventListener(Event.COMPLETE,this.onComplete);
         §#%§.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         §#%§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%<§);
         §#%§.load(_loc1_);
      }
      
      protected function §%<§(param1:SecurityErrorEvent) : void
      {
         §@M§.§-5§();
         §#%§ = null;
      }
      
      private function §"[§(param1:IOErrorEvent) : void
      {
         §@M§.§-5§();
         §#%§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §8J§ = §4!d§.§6!p§(param1.currentTarget.data);
         if(!this.§8q§)
         {
            this.§[_§ = true;
            return;
         }
         this.§"§();
         this.§ f§();
      }
      
      private function §"§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§?!x§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§5!P§)
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §8J§)
         {
            this.§9!Z§(_loc2_,§5m§.§9!n§);
            if(_loc4_ = §4!S§.§"!>§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§&!X§,
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
         §0!&§ = _loc1_;
         _loc3_ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§;
         _loc3_.§8!2§(null,§?O§);
         this.§5!P§.§;!!§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §9!Z§(param1:Object, param2:Array) : void
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
      
      private function §--§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§6!d§)
         {
            if(§6!d§.parent)
            {
               if(§6!d§.parent.contains(§6!d§))
               {
                  §6!d§.parent.removeChild(§6!d§);
               }
            }
         }
         param1.addChild(§6!d§);
         §6!d§.scaleX = §6!d§.scaleY = param2;
         §6!d§.x = param3;
         §6!d§.y = param4;
      }
      
      private function § f§() : void
      {
         var _loc5_:§#!q§ = null;
         var _loc6_:§[I§ = null;
         var _loc7_:Array = null;
         var _loc8_:§7A§ = null;
         var _loc9_:§[I§ = null;
         var _loc10_:§#!q§ = null;
         var _loc11_:§?!x§ = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         this.§8q§ = true;
         var _loc1_:§?!x§ = this.§5!P§.getItemByName("Repeater_Tabs") as §?!x§;
         _loc1_.§8!2§(null,§?O§);
         if(§0!&§ == null)
         {
            return;
         }
         if(§<!m§ == null)
         {
            §<!m§ = [];
            for each(_loc5_ in §6!_§.§`;§().characters)
            {
               §<!m§.push(new §7A§(_loc5_));
            }
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §<[§).§0u§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §<[§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§2H§ = true;
         }
         var _loc4_:§%!5§;
         (_loc4_ = new §%!5§(_loc2_,false,§%!5§.§+a§)).x = 13;
         _loc4_.y = 9;
         this.§5!P§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§@!h§)
         {
            _loc6_ = this.§5!P§.getItemByName("AvatarHolderClip") as §[I§;
            this.§--§(_loc6_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc7_ = §4!S§.§`x§(_loc3_);
               _loc8_ = §6!d§.§5!7§(_loc7_);
               §6!_§.§+!e§ = _loc8_;
            }
            else
            {
               this.§>!N§(§5[§);
               §6!d§.§=P§("backgrounds1");
            }
            (this.§5!P§ as §7j§).§[!E§();
            §@!h§ = false;
         }
         else
         {
            _loc9_ = this.§5!P§.getItemByName("AvatarHolderClip") as §[I§;
            this.§--§(_loc9_.mClip);
            _loc10_ = §6!d§.§%!y§.§6;§();
            §6!d§.§^7§(_loc10_.§&!X§,_loc10_.sId,_loc10_.§@§,§<!m§,110,174);
            §6!d§.§%!y§.§1! §();
            (_loc11_ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§).§8!2§(null,§?O§);
            (this.§5!P§ as §7j§).§[!E§();
         }
         if(this.§'!2§)
         {
            if((_loc12_ = (this.§5!P§ as §7j§).§,!8§(this.§'!2§)) != -1)
            {
               _loc13_ = this.§'!2§.substr("CATEGORY".length);
               this.§5!P§.setText(_loc13_,"Textfield_CategoryTitle");
               this.§5!P§.§;!!§("Repeater_Items","Repeater_Items_Tab_" + _loc12_);
               if(§6!_§.§1w§().§=!b§.length > 0)
               {
                  _loc1_.§#!0§("Repeater_Tabs_Tab_0").§`N§(§6!_§.§1w§().§=!b§[_loc12_].name as String);
               }
            }
            this.§'!2§ = null;
         }
         this.§+h§();
      }
      
      private function onUiInteraction(param1:§+!k§) : void
      {
         this.uiInteractionHandler(param1.§1![§,param1.§?n§,param1.§>$§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:§9j§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§=!#§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§?O§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§?O§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §9j§)
         {
            _loc4_ = param3 as §9j§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §7p§)
               {
                  if(((_loc4_.mParentContainer as §7p§).mParentContainer as §?!x§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§5!P§ as §7j§).§,!8§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§5!P§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§5!P§.§;!!§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §7p§).§>!!§)
                        {
                           (_loc7_ as §?O§).§!!1§();
                        }
                        (param3 as §?O§).§<!§();
                        this.§=G§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §7p§).mParentContainer as §?!x§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§>!N§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§'!X§(param2.substring("REMOVE_".length));
                     }
                     this.§+h§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§5!P§ as §7j§).§,!8§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §9j§).mParentContainer as §7p§).§>!!§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §?O§).§!!1§();
               }
               else
               {
                  (_loc12_ as §?O§).§<!§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§5!P§ as §7j§).§,!8§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §9j§).mParentContainer as §7p§).§>!!§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §?O§).§!!1§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §6!_§.§+!e§.§,!!§();
               this.§+h§();
               this.§=G§();
               break;
            case "RANDOMIZE_AVATAR":
               §6!_§.§+!e§.§ !5§();
               this.§+h§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§[!;§();
               break;
            case "CANCEL_SHARE":
               this.§5!P§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
               this.§!!r§();
               break;
            case "BUY_THESE":
               _loc16_ = §4!S§.§#D§(this.§#0§);
               AngryBirdsFP11.§3!a§.§5C§();
               this.§!z§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §'N§.§0[§(_loc19_);
                  this.§!z§.push(_loc19_);
               }
               §=r§.addCallback("purchaseComplete",this.§4!e§);
               §=r§.§[!3§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§2H§ = false;
               this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §6!_§.§+!e§.§?!_§();
               this.§&!j§(_loc18_);
               this.§=G§();
               break;
            case "SET_PROFILE":
               this.§2H§ = true;
               this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
               this.§&!j§("");
               this.§=G§();
               break;
            case "CLOSE_AVATAR":
               this.§0q§.removeEventListener(§+!k§.§=m§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§5!P§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §<[§).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§=G§();
               break;
            case "SCROLL_LEFT":
               this.§=G§();
         }
      }
      
      private function §!!r§() : void
      {
         §'N§.§<=§();
         AngryBirdsFP11.§3!a§.§5C§();
         §=r§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §=r§.§[!3§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§2x§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§9j§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §'N§.§+!w§();
         §=r§.§<a§("permissionRequestComplete",this.permissionRequestComplete);
         this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§5!P§.getItemByName("AvatarSharing").setVisibility(true);
            this.§5!P§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §2x§();
            _loc2_.§ !-§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§6!_§.§+!e§.§?!_§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§5!P§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §[!;§() : void
      {
         this.§5!P§.getItemByName("AvatarSharing").setVisibility(false);
         this.§5!P§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§5!P§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§2x§ = new §2x§();
         _loc1_.§ !-§();
         var _loc3_:BitmapData = _loc1_.render(§6!_§.§+!e§.§?!_§(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §%!G§.§^!B§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §<[§).§0u§;
         § b§.§1#§(_loc3_,§[c§,_loc8_,this.§;!U§,this.§"!7§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=r§.§<a§("purchaseComplete",this.§4!e§);
         this.§0q§.removeEventListener(§+!k§.§=m§,this.onUiInteraction);
         preClose();
      }
      
      private function §;!U§(param1:*) : void
      {
         var _loc2_:String = param1.toString();
         this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §"!7§() : void
      {
         this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§8q§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:§7A§ = null;
         super.open(param1);
         §'N§.§4j§();
         var _loc2_:§[I§ = this.§5!P§.getItemByName("AvatarSavedAnimation") as §[I§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§[_§)
         {
            this.§[_§ = false;
            this.§"§();
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §<!m§.length)
         {
            (_loc4_ = §<!m§[_loc3_]).hide();
            _loc3_++;
         }
         if(§6!d§.§%!y§ == null)
         {
            §6!d§.§^7§(§5[§,§2V§,§@!j§,§<!m§);
         }
         if(!this.§8q§)
         {
            this.§ f§();
         }
      }
      
      public function §+h§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§?!x§ = this.§5!P§.getItemByName("Repeater_Items") as §?!x§;
         var _loc2_:Number = 0;
         while(_loc2_ < §6!_§.§1w§().§=!b§.length)
         {
            _loc3_ = §6!_§.§1w§().§=!b§[_loc2_].name;
            if((_loc4_ = §6!_§.§+!e§.§66§(_loc3_)) == null)
            {
               _loc1_.§#!0§("Repeater_Items_Tab_" + _loc2_).§`N§(_loc3_);
            }
            else
            {
               _loc1_.§#!0§("Repeater_Items_Tab_" + _loc2_).§`N§(_loc4_.§&!X§);
            }
            _loc2_++;
         }
         this.§=G§();
      }
      
      public function §4!e§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§!z§)
         {
            §'N§.§47§(_loc1_);
         }
         this.§!z§ = [];
         §=r§.§<a§("purchaseComplete",this.§4!e§);
         this.§^!F§();
      }
      
      private function §&!j§(param1:String) : void
      {
         this.§]!i§ = this.§8o§;
         this.§8o§ = param1;
         var _loc2_:URLRequest = § v§.§<N§(§,X§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§ F§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§^!>§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
         _loc3_.load(_loc2_);
      }
      
      protected function §9?§(param1:SecurityErrorEvent) : void
      {
         §@M§.§-5§();
      }
      
      private function § F§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§[I§ = null;
         if(this.§8o§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §<[§).avatarString = this.§8o§;
            §3?§.§!`§(new §2!A§(this.§8o§,(AngryBirdsFP11.sUserProgress as §<[§).§0u§),true,true);
            §0z§.§%?§(this.§8o§);
            _loc2_ = this.§8o§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§]!i§)
               {
                  if(this.§]!i§.indexOf(_loc3_) == -1)
                  {
                     §'N§.§3!e§(_loc3_);
                  }
               }
               else
               {
                  §'N§.§3!e§(_loc3_);
               }
            }
         }
         if(this.§8q§)
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§5!P§.getItemByName("AvatarSavedAnimation") as §[I§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§=G§();
         }
      }
      
      private function §^!>§(param1:IOErrorEvent) : void
      {
         var _loc2_:§[I§ = null;
         if(this.§8q§)
         {
            this.§5!P§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§5!P§.getItemByName("AvatarSavedAnimation") as §[I§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §'!X§(param1:String) : void
      {
         §6!_§.§+!e§.§'!X§(param1);
         this.§=G§();
      }
      
      public function §>!N§(param1:String) : void
      {
         var _loc4_:§7A§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §6!_§.§1w§().§1]§(param1);
         var _loc3_:§7A§ = §6!_§.§+!e§;
         if(_loc2_)
         {
            if(_loc2_.§@§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§6;§().§&!X§ != _loc2_.§&!X§)
            {
               (_loc4_ = §6!d§.§^7§(_loc2_.§&!X§,_loc2_.sId,_loc2_.§@§,§<!m§,110,174)).§,!!§();
               _loc4_.§9!r§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§]H§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §6!d§.§=P§(_loc6_.§&!X§);
                        }
                        _loc4_.§9!r§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§66§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§9!r§(§6!_§.§1w§().§1]§("Backgrounds1"));
               }
            }
            else if(_loc2_.§@§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §6!d§.§=P§(_loc2_.§&!X§);
               §6!_§.§+!e§.§9!r§(_loc2_);
            }
            else
            {
               §6!_§.§+!e§.§9!r§(_loc2_);
            }
         }
         else
         {
            §!>§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§=G§();
      }
      
      private function §=G§() : void
      {
         var _loc4_:§?V§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§?O§ = null;
         var _loc15_:§?O§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §<[§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §6!_§.§+!e§.§?!_§()).split("-");
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
         for each(_loc4_ in §6!_§.§1w§().§=!b§)
         {
            (_loc14_ = this.§5!P§.getItemByName(_loc4_.name.toUpperCase()) as §?O§).§@!C§();
         }
         this.§#0§ = [];
         for each(_loc5_ in §6!_§.§+!e§.§]H§)
         {
            _loc15_ = this.§5!P§.getItemByName(_loc5_.category.toUpperCase()) as §?O§;
            _loc16_ = §8!]§(_loc5_.§&!X§);
            _loc15_.§#!S§(_loc5_.§&!X§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§#0§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§5!P§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§5!P§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§5!P§.getItemByName("Textfield_Price").setVisibility(true);
            this.§5!P§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§5!P§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§5!P§.getItemByName("Textfield_Price").setVisibility(false);
            this.§5!P§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§2H§)
         {
            (this.§5!P§.getItemByName("SetAvatarProfileButton") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§5!P§.getItemByName("SetFacebookProfileButton") as §5!I§).setComponentState(§+!!§.§ H§);
         }
         else if(_loc1_ > 0)
         {
            (this.§5!P§.getItemByName("SetAvatarProfileButton") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§5!P§.getItemByName("SetFacebookProfileButton") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§5!P§.getItemByName("SetFacebookProfileButton") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§5!P§.getItemByName("SetAvatarProfileButton") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§5!P§.getItemByName("SetAvatarProfileButton") as §5!I§).setComponentState(§+!!§.§ H§);
               this.§5!P§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§5!P§.setText(§7j§.§`B§(_loc1_),"Textfield_Price");
         if(this.§<!H§ == null)
         {
            this.§<!H§ = new §2x§();
            this.§<!H§.§ !-§();
         }
         var _loc6_:§5!I§ = this.§5!P§.getItemByName("SetAvatarProfileButton") as §5!I§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §6!_§.§+!e§.§?!_§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§<!H§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§7p§;
         if(_loc9_ = this.§5!P§.getItemByName(this.§5!P§.§4r§("Repeater_Items")) as §7p§)
         {
            this.§5!P§.setText("Page " + (_loc9_.§;!q§ + 1).toString() + "/" + _loc9_.§9!;§,"Textfield_PageNumber");
            if(_loc9_.§9!;§ == 1)
            {
               this.§5!P§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§5!P§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§5!P§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§5!P§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§5!P§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§5!P§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
