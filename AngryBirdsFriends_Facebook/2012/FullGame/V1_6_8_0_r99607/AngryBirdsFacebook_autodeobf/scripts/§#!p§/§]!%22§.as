package §#!p§
{
   import §"",§.§"%§;
   import §"",§.§"Z§;
   import §"",§.§2[§;
   import §"",§.§;!3§;
   import §"",§.§<?§;
   import §,!F§.§4!B§;
   import §,!F§.§;!Z§;
   import §,!F§.§@"B§;
   import §,"-§.§2!P§;
   import §,b§.§4H§;
   import §-"-§.§@!t§;
   import §0!?§.§'!$§;
   import §0!?§.§1!%§;
   import §0!?§.§;""§;
   import §0t§.§"I§;
   import §0t§.§1d§;
   import §1"2§.§ F§;
   import §1"2§.§#z§;
   import §1"2§.§,!]§;
   import §1o§.§'8§;
   import §1o§.§,!c§;
   import §1o§.§;c§;
   import §4!m§.§>x§;
   import §7N§.§43§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §8!-§.§9!e§;
   import §8!-§.Item;
   import §9"%§.§4!J§;
   import §;^§.§8"=§;
   import §<!<§.§%!#§;
   import §<"1§.§,U§;
   import §["@§.§["%§;
   import §]!F§.§"!j§;
   import §`"3§.§8"4§;
   import com.rovio.assets.§#!J§;
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
   
   public class §]!"§ extends Popup
   {
      
      private static var §2k§:Class = §#!s§;
      
      public static var §'!y§:String;
      
      private static var §>!p§:Array = [{
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
      
      private static var §;!@§:String;
      
      public static var §[6§:Array;
      
      private static var §,!I§:§4!B§;
      
      private static var §;"8§:Boolean = true;
      
      public static var §+j§:Array;
      
      public static var §=!Y§:URLLoader;
       
      
      private var §<q§:StatePopupManager;
      
      private var §#"#§:Item = null;
      
      private var §4!;§:Boolean = false;
      
      private var §?"2§:String;
      
      private var §;!S§:Array;
      
      private var §`!6§:Array;
      
      private var §+!8§:Boolean = false;
      
      private var §`,§:Boolean = false;
      
      private var §2"-§:§"!j§;
      
      private var § try§:§;c§;
      
      private var §0!q§:String;
      
      private var §9!X§:String;
      
      public function §]!"§(param1:§"!j§, param2:StatePopupManager, param3:String = null, param4:Boolean = false)
      {
         this.§;!S§ = [];
         this.§`!6§ = [];
         this.§<q§ = param2;
         super(§1!%§.§8!?§(§2k§),param1);
         if(param3)
         {
            this.§0!q§ = param3;
         }
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         this.§2"-§ = param1;
         if((AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked("1000-2"))
         {
            this.§2"-§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§2"-§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §'!y§ = AngryBirdsFP11.§7!!§;
         if(§,!I§ == null)
         {
            §,!I§ = new §4!B§();
         }
         if(§=!Y§ == null || param4)
         {
            this.§"!,§();
         }
      }
      
      public static function §#"$§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[6§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §7!v§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[6§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §9!m§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[6§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §6]§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[6§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §;!K§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[6§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §5"3§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §>!p§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §"!,§() : void
      {
         this.§2"-§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §4!J§.§3j§(§'!y§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §=!Y§ = new URLLoader();
         §=!Y§.addEventListener(Event.COMPLETE,this.onComplete);
         §=!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         §=!Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%u§);
         §=!Y§.load(_loc1_);
      }
      
      protected function §%u§(param1:SecurityErrorEvent) : void
      {
         §43§.§?!S§();
         §=!Y§ = null;
      }
      
      private function §9"<§(param1:IOErrorEvent) : void
      {
         §43§.§?!S§();
         §=!Y§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §+j§ = §8"4§.§,!M§(param1.currentTarget.data);
         if(!this.§4!;§)
         {
            this.§`,§ = true;
            return;
         }
         this.§;!j§();
         this.§4q§();
      }
      
      private function §;!j§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"%§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§2"-§)
         {
            this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §+j§)
         {
            this.§"u§(_loc2_,§]!"§.§>!p§);
            if(_loc4_ = §["%§.§3U§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§4W§,
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
         §[6§ = _loc1_;
         _loc3_ = this.§2"-§.getItemByName("Repeater_Items") as §"%§;
         _loc3_.§7!z§(null,§;!Z§);
         this.§2"-§.§]""§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §"u§(param1:Object, param2:Array) : void
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
      
      private function §@!9§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§,!I§)
         {
            if(§,!I§.parent)
            {
               if(§,!I§.parent.contains(§,!I§))
               {
                  §,!I§.parent.removeChild(§,!I§);
               }
            }
         }
         param1.addChild(§,!I§);
         §,!I§.scaleX = §,!I§.scaleY = param2;
         §,!I§.x = param3;
         §,!I§.y = param4;
      }
      
      private function §4q§() : void
      {
         var _loc5_:§"Z§ = null;
         var _loc6_:Array = null;
         var _loc7_:§@"B§ = null;
         var _loc8_:§"Z§ = null;
         var _loc9_:§"%§ = null;
         this.§4!;§ = true;
         var _loc1_:§"%§ = this.§2"-§.getItemByName("Repeater_Tabs") as §"%§;
         _loc1_.§7!z§(null,§;!Z§);
         if(§[6§ == null)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §2!P§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§+!8§ = true;
         }
         var _loc4_:§'8§;
         (_loc4_ = new §'8§(_loc2_,false,§'8§.§"!Y§)).x = 13;
         _loc4_.y = 9;
         this.§2"-§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§;"8§)
         {
            _loc5_ = this.§2"-§.getItemByName("AvatarHolderClip") as §"Z§;
            this.§@!9§(_loc5_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc6_ = §["%§.§1!q§(_loc3_);
               _loc7_ = §,!I§.§2J§(_loc6_);
               §@!t§.§8c§.avatar = _loc7_;
            }
            else
            {
               this.§&"&§(§@!t§.§^"<§);
               §,!I§.§'X§("backgrounds1");
            }
            (this.§2"-§ as §8"=§).§0!K§();
            §;"8§ = false;
         }
         else
         {
            _loc8_ = this.§2"-§.getItemByName("AvatarHolderClip") as §"Z§;
            this.§@!9§(_loc8_.mClip);
            §,!I§.§`1§();
            §,!I§.§`!v§.§1!l§();
            (_loc9_ = this.§2"-§.getItemByName("Repeater_Items") as §"%§).§7!z§(null,§;!Z§);
            (this.§2"-§ as §8"=§).§0!K§();
         }
         this.§&u§(_loc1_);
         this.§&",§();
      }
      
      private function §&u§(param1:§"%§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§0!q§)
         {
            _loc2_ = (this.§2"-§ as §8"=§).§,W§(this.§0!q§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§0!q§.substr("CATEGORY".length);
               this.§2"-§.setText(_loc3_,"Textfield_CategoryTitle");
               this.§2"-§.§]""§("Repeater_Items","Repeater_Items_Tab_" + _loc2_);
               if(§@!t§.§8c§.items.§"!d§.length > 0)
               {
                  param1.§>!y§("Repeater_Tabs_Tab_0").§%!`§(§@!t§.§8c§.items.§"!d§[_loc2_].name as String);
               }
            }
            this.§0!q§ = null;
         }
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:§#z§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§2[§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§;!Z§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§;!Z§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §#z§)
         {
            _loc4_ = param3 as §#z§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §;!3§)
               {
                  if(((_loc4_.mParentContainer as §;!3§).mParentContainer as §"%§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§2"-§ as §8"=§).§,W§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§2"-§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§2"-§.§]""§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §;!3§).§8%§)
                        {
                           (_loc7_ as §;!Z§).§!'§();
                        }
                        (param3 as §;!Z§).§'n§();
                        this.§45§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §;!3§).mParentContainer as §"%§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§&"&§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§2i§(param2.substring("REMOVE_".length));
                     }
                     this.§&",§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§2"-§ as §8"=§).§,W§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §#z§).mParentContainer as §;!3§).§8%§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §;!Z§).§!'§();
               }
               else
               {
                  (_loc12_ as §;!Z§).§'n§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§2"-§ as §8"=§).§,W§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §#z§).mParentContainer as §;!3§).§8%§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §;!Z§).§!'§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §@!t§.§8c§.avatar.§#!x§();
               this.§&",§();
               this.§45§();
               break;
            case "RANDOMIZE_AVATAR":
               §@!t§.§8c§.avatar.§6!s§();
               this.§&",§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§^!Q§();
               break;
            case "CANCEL_SHARE":
               this.§2"-§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§2"-§.getItemByName("WaitingForReply").setVisibility(true);
               this.§%!9§();
               break;
            case "BUY_THESE":
               _loc16_ = §["%§.§9[§(this.§;!S§);
               AngryBirdsFP11.§`"B§.§'H§();
               this.§`!6§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §%!#§.§`<§(_loc19_);
                  this.§`!6§.push(_loc19_);
               }
               §,U§.addCallback("purchaseComplete",this.§>o§);
               §,U§.§53§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§+!8§ = false;
               this.§2"-§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §@!t§.§8c§.avatar.§9!p§();
               this.§=!A§(_loc18_);
               this.§45§();
               break;
            case "SET_PROFILE":
               this.§+!8§ = true;
               this.§2"-§.getItemByName("WaitingForReply").setVisibility(true);
               this.§=!A§("");
               this.§45§();
               break;
            case "CLOSE_AVATAR":
               this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§2"-§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §2!P§).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§45§();
               break;
            case "SCROLL_LEFT":
               this.§45§();
         }
      }
      
      private function §%!9§() : void
      {
         §%!#§.§9n§();
         AngryBirdsFP11.§`"B§.§'H§();
         §,U§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §,U§.§53§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§;c§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§#z§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §%!#§.§`6§();
         §,U§.§-!N§("permissionRequestComplete",this.permissionRequestComplete);
         this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§2"-§.getItemByName("AvatarSharing").setVisibility(true);
            this.§2"-§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §;c§();
            _loc2_.§0"&§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§@!t§.§8c§.avatar.§9!p§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§2"-§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §^!Q§() : void
      {
         this.§2"-§.getItemByName("AvatarSharing").setVisibility(false);
         this.§2"-§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§2"-§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§;c§ = new §;c§();
         _loc1_.§0"&§();
         var _loc3_:BitmapData = _loc1_.render(§@!t§.§8c§.avatar.§9!p§(),null,500);
         var _loc4_:Matrix = new Matrix();
         var _loc5_:Number = 500 / 100 / 2;
         _loc4_.scale(_loc5_,_loc5_);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §#!J§.§1!Y§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
         §;""§.§9h§(_loc3_,§>x§.§<!#§,_loc8_,this.§#A§,this.§0S§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,U§.§-!N§("purchaseComplete",this.§>o§);
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         preClose();
      }
      
      private function §#A§(param1:*) : void
      {
         this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §0S§() : void
      {
         this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§4!;§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §%!#§.§#!u§();
         var _loc2_:§"Z§ = this.§2"-§.getItemByName("AvatarSavedAnimation") as §"Z§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§`,§)
         {
            this.§`,§ = false;
            this.§;!j§();
         }
         §@!t§.§8c§.§6O§();
         if(§,!I§.§`!v§ == null)
         {
            §,!I§.§=!2§(§@!t§.§8c§.§6!4§());
         }
         if(!this.§4!;§)
         {
            this.§4q§();
         }
      }
      
      private function §>a§(param1:Boolean) : void
      {
         var _loc2_:§9!e§ = null;
         var _loc3_:§;!Z§ = null;
         for each(_loc2_ in §@!t§.§8c§.items.§"!d§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = this.§2"-§.getItemByName(_loc2_.name.toUpperCase()) as §;!Z§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §9!d§(param1:Boolean) : void
      {
         this.§2"-§.getItemByName("Button_Unequip").setVisibility(param1);
         this.§2"-§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §&",§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§"%§ = this.§2"-§.getItemByName("Repeater_Items") as §"%§;
         var _loc2_:Number = 0;
         while(_loc2_ < §@!t§.§8c§.items.§"!d§.length)
         {
            _loc3_ = §@!t§.§8c§.items.§"!d§[_loc2_].name;
            _loc4_ = §@!t§.§8c§.avatar.§>e§(_loc3_);
            if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
            {
               if(_loc4_.§4W§.indexOf("GreenDay") > -1)
               {
                  this.§>a§(false);
                  this.§9!d§(false);
               }
               else
               {
                  this.§>a§(true);
                  this.§9!d§(true);
               }
            }
            if(_loc4_ == null)
            {
               _loc1_.§>!y§("Repeater_Items_Tab_" + _loc2_).§%!`§(_loc3_);
            }
            else
            {
               _loc1_.§>!y§("Repeater_Items_Tab_" + _loc2_).§%!`§(_loc4_.§4W§);
            }
            _loc2_++;
         }
         this.§45§();
      }
      
      public function §>o§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§`!6§)
         {
            §%!#§.§@!h§(_loc1_);
         }
         this.§`!6§ = [];
         §,U§.§-!N§("purchaseComplete",this.§>o§);
         this.§"!,§();
      }
      
      private function §=!A§(param1:String) : void
      {
         this.§9!X§ = this.§?"2§;
         this.§?"2§ = param1;
         var _loc2_:URLRequest = §4!J§.§3j§(§'!y§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§<"-§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§&0§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§import§);
         _loc3_.load(_loc2_);
      }
      
      protected function §import§(param1:SecurityErrorEvent) : void
      {
         §43§.§?!S§();
      }
      
      private function §<"-§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§"Z§ = null;
         if(this.§?"2§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §2!P§).avatarString = this.§?"2§;
            §"I§.§`!q§(new §1d§(this.§?"2§,(AngryBirdsFP11.sUserProgress as §2!P§).§!!'§),true,true);
            §,!c§.§2G§(this.§?"2§);
            _loc2_ = this.§?"2§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§9!X§)
               {
                  if(this.§9!X§.indexOf(_loc3_) == -1)
                  {
                     §%!#§.§,w§(_loc3_);
                  }
               }
               else
               {
                  §%!#§.§,w§(_loc3_);
               }
            }
         }
         if(this.§4!;§)
         {
            this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§2"-§.getItemByName("AvatarSavedAnimation") as §"Z§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§45§();
         }
      }
      
      private function §&0§(param1:IOErrorEvent) : void
      {
         var _loc2_:§"Z§ = null;
         if(this.§4!;§)
         {
            this.§2"-§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§2"-§.getItemByName("AvatarSavedAnimation") as §"Z§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §2i§(param1:String) : void
      {
         §@!t§.§8c§.avatar.§2i§(param1);
         this.§45§();
      }
      
      public function §&"&§(param1:String) : void
      {
         var _loc4_:§@"B§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §@!t§.§8c§.items.§8!]§(param1);
         var _loc3_:§@"B§ = §@!t§.§8c§.avatar;
         if(_loc2_)
         {
            if(_loc2_.§;F§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§"L§().§4W§ != _loc2_.§4W§)
            {
               _loc4_ = §@!t§.§8c§.§2@§(_loc2_.§4W§);
               §,!I§.§=!2§(_loc4_,110,174);
               _loc4_.§#!x§();
               _loc4_.§,"1§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§7!Z§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §,!I§.§'X§(_loc6_.§4W§);
                        }
                        _loc4_.§,"1§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§>e§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§,"1§(§@!t§.§8c§.items.§8!]§("Backgrounds1"));
               }
            }
            else if(_loc2_.§;F§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §,!I§.§'X§(_loc2_.§4W§);
               §@!t§.§8c§.avatar.§,"1§(_loc2_);
            }
            else
            {
               §@!t§.§8c§.avatar.§,"1§(_loc2_);
            }
         }
         else
         {
            §'!$§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§45§();
      }
      
      private function §45§() : void
      {
         var _loc4_:§9!e§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§;!Z§ = null;
         var _loc15_:§;!Z§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §2!P§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §@!t§.§8c§.avatar.§9!p§()).split("-");
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
         for each(_loc4_ in §@!t§.§8c§.items.§"!d§)
         {
            (_loc14_ = this.§2"-§.getItemByName(_loc4_.name.toUpperCase()) as §;!Z§).§ n§();
         }
         this.§;!S§ = [];
         for each(_loc5_ in §@!t§.§8c§.avatar.§7!Z§)
         {
            _loc15_ = this.§2"-§.getItemByName(_loc5_.category.toUpperCase()) as §;!Z§;
            _loc16_ = §7!v§(_loc5_.§4W§);
            _loc15_.§8!!§(_loc5_.§4W§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§;!S§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§2"-§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§2"-§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§2"-§.getItemByName("Textfield_Price").setVisibility(true);
            this.§2"-§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§2"-§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§2"-§.getItemByName("Textfield_Price").setVisibility(false);
            this.§2"-§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§+!8§)
         {
            (this.§2"-§.getItemByName("SetAvatarProfileButton") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2"-§.getItemByName("SetFacebookProfileButton") as §<?§).setComponentState(§ F§.§<!7§);
         }
         else if(_loc1_ > 0)
         {
            (this.§2"-§.getItemByName("SetAvatarProfileButton") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§2"-§.getItemByName("SetFacebookProfileButton") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§2"-§.getItemByName("SetFacebookProfileButton") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§2"-§.getItemByName("SetAvatarProfileButton") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§2"-§.getItemByName("SetAvatarProfileButton") as §<?§).setComponentState(§ F§.§<!7§);
               this.§2"-§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§2"-§.setText(§8"=§.§?!t§(_loc1_),"Textfield_Price");
         if(this.§ try§ == null)
         {
            this.§ try§ = new §;c§();
            this.§ try§.§0"&§();
         }
         var _loc6_:§<?§ = this.§2"-§.getItemByName("SetAvatarProfileButton") as §<?§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §@!t§.§8c§.avatar.§9!p§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§ try§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§;!3§;
         if(_loc9_ = this.§2"-§.getItemByName(this.§2"-§.§^!"§("Repeater_Items")) as §;!3§)
         {
            this.§2"-§.setText("Page " + (_loc9_.§3A§ + 1).toString() + "/" + _loc9_.§3! §,"Textfield_PageNumber");
            if(_loc9_.§3! § == 1)
            {
               this.§2"-§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§2"-§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§2"-§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§2"-§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§2"-§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§2"-§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
