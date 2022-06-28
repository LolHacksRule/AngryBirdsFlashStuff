package §_-1N§
{
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Gi§;
   import §_-0BH§.§_-ZE§;
   import §_-0EZ§.§_-Dk§;
   import §_-0EZ§.§_-HV§;
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-4§.§_-nq§;
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-Ev§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-Ny§;
   import §_-6C§.§_-k6§;
   import §_-7§.StatePopupManager;
   import §_-7§.§_-EJ§;
   import §_-9Y§.§_-Bt§;
   import §_-Hb§.§_-P-§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Mc§.§_-0-w§;
   import §_-Mc§.§_-059§;
   import §_-Mc§.§in§;
   import §_-Y8§.§_-05J§;
   import §_-Yl§.§_-5q§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import §_-hX§.§_-bT§;
   import §_-hX§.§_-pI§;
   import §_-mh§.§_-09d§;
   import §_-py§.§_-bu§;
   import §_-wA§.§_-0X§;
   import §_-wv§.§_-Pj§;
   import §_-y7§.§_-xe§;
   import §_-y7§.§_-zA§;
   import com.rovio.assets.§_-Fc§;
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
   
   public class §_-Kz§ extends Popup
   {
      
      private static var §_-l3§:Class = §_-XB§;
      
      public static var §_-06E§:String;
      
      private static var §_-Nr§:Array = [{
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
      
      public static const §_-pk§:String = "CreatorState";
      
      public static const §_-X4§:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const §_-j3§:String = "RedBird";
      
      public static const §_-Sl§:String = "NoHat";
      
      public static const §_-xZ§:String = "10001";
      
      public static const §_-17§:String = "CategoryBirds";
      
      public static var §_-s7§:Array;
      
      private static var §_-08§:§in§;
      
      public static var §_-rf§:String;
      
      private static var §_-yr§:String;
      
      public static var §_-TC§:Array;
      
      public static var §_-Vr§:URLLoader;
      
      public static var §_-017§:Array;
      
      private static var §_-qI§:Boolean = true;
       
      
      private var §_-2B§:StatePopupManager;
      
      private var §_-ro§:Item = null;
      
      private var §_-g2§:Boolean = false;
      
      private var §_-0Au§:String;
      
      private var §_-UY§:Array;
      
      private var §_-04a§:Array;
      
      private var §_-0CP§:Boolean = false;
      
      private var §_-Vg§:Boolean = false;
      
      private var §_-s0§:§_-5q§;
      
      private var §_-Oj§:§_-zA§;
      
      private var §_-Ju§:String;
      
      private var §_-dZ§:String;
      
      public function §_-Kz§(param1:§_-5q§, param2:StatePopupManager, param3:String = null)
      {
         var _loc5_:§_-nq§ = null;
         this.§_-UY§ = [];
         this.§_-04a§ = [];
         this.§_-2B§ = param2;
         super(§_-ZE§.§_-ve§(§_-l3§),param1);
         if(param3)
         {
            this.§_-Ju§ = param3;
         }
         this.§_-2B§.addEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
         this.§_-s0§ = param1;
         if((AngryBirdsFP11.sUserProgress as §_-09d§).isEggUnlocked("1000-2"))
         {
            this.§_-s0§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            this.§_-s0§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §_-rf§ = AngryBirdsFP11.§_-08Q§;
         var _loc4_:§_-xe§ = new §_-xe§();
         if(§_-017§ == null)
         {
            §_-017§ = [];
            for each(_loc5_ in §_-xe§.§_-s2§().characters)
            {
               §_-017§.push(new §_-059§(_loc5_));
            }
         }
         if(§_-08§ == null)
         {
            §_-08§ = new §in§();
         }
         if(§_-Vr§ == null)
         {
            this.§_-7q§();
         }
      }
      
      public static function §_-AJ§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §_-iY§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §_-4N§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §_-Gw§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §_-nb§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §_-s7§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §_-0-t§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §_-Nr§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      private function §_-7q§() : void
      {
         this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:URLRequest = §_-P-§.§_-0Ak§(§_-rf§ + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         §_-Vr§ = new URLLoader();
         §_-Vr§.addEventListener(Event.COMPLETE,this.onComplete);
         §_-Vr§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
         §_-Vr§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-q3§);
         §_-Vr§.load(_loc1_);
      }
      
      protected function §_-q3§(param1:SecurityErrorEvent) : void
      {
         §_-EJ§.§_-8H§();
         §_-Vr§ = null;
      }
      
      private function §_-ba§(param1:IOErrorEvent) : void
      {
         §_-EJ§.§_-8H§();
         §_-Vr§ = null;
      }
      
      private function onComplete(param1:Event) : void
      {
         §_-TC§ = §_-bu§.§_-aW§(param1.currentTarget.data);
         if(!this.§_-g2§)
         {
            this.§_-Vg§ = true;
            return;
         }
         this.§_-02u§();
         this.§_-jx§();
      }
      
      private function §_-02u§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-05d§ = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         if(this.§_-s0§)
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
         }
         for each(_loc2_ in §_-TC§)
         {
            this.§_-Em§(_loc2_,§_-Kz§.§_-Nr§);
            if(_loc4_ = §_-Pj§.§_-08k§(_loc2_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.§_-1h§,
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
         §_-s7§ = _loc1_;
         _loc3_ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§;
         _loc3_.§_-OQ§(null,§_-0-w§);
         this.§_-s0§.§_-oK§("Repeater_Items","Repeater_Items_Tab_0");
      }
      
      private function §_-Em§(param1:Object, param2:Array) : void
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
      
      private function §_-zi§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§_-08§)
         {
            if(§_-08§.parent)
            {
               if(§_-08§.parent.contains(§_-08§))
               {
                  §_-08§.parent.removeChild(§_-08§);
               }
            }
         }
         param1.addChild(§_-08§);
         §_-08§.scaleX = §_-08§.scaleY = param2;
         §_-08§.x = param3;
         §_-08§.y = param4;
      }
      
      private function §_-jx§() : void
      {
         var _loc5_:§_-nq§ = null;
         var _loc6_:§_-k6§ = null;
         var _loc7_:Array = null;
         var _loc8_:§_-059§ = null;
         var _loc9_:§_-k6§ = null;
         var _loc10_:§_-nq§ = null;
         var _loc11_:§_-05d§ = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         this.§_-g2§ = true;
         var _loc1_:§_-05d§ = this.§_-s0§.getItemByName("Repeater_Tabs") as §_-05d§;
         _loc1_.§_-OQ§(null,§_-0-w§);
         if(§_-s7§ == null)
         {
            return;
         }
         if(§_-017§ == null)
         {
            §_-017§ = [];
            for each(_loc5_ in §_-xe§.§_-s2§().characters)
            {
               §_-017§.push(new §_-059§(_loc5_));
            }
         }
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).avatarString;
         if(_loc3_ == null || _loc3_ == "")
         {
            this.§_-0CP§ = true;
         }
         var _loc4_:§_-bT§;
         (_loc4_ = new §_-bT§(_loc2_,false,§_-bT§.§_-N2§)).x = 13;
         _loc4_.y = 9;
         this.§_-s0§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc4_);
         if(§_-qI§)
         {
            _loc6_ = this.§_-s0§.getItemByName("AvatarHolderClip") as §_-k6§;
            this.§_-zi§(_loc6_.mClip);
            if(_loc3_ != "" && _loc3_ != null)
            {
               _loc7_ = §_-Pj§.§_-0Bw§(_loc3_);
               _loc8_ = §_-08§.§_-rJ§(_loc7_);
               §_-xe§.§_-0Ec§ = _loc8_;
            }
            else
            {
               this.§_-BX§(§_-j3§);
               §_-08§.§_-07f§("backgrounds1");
            }
            (this.§_-s0§ as §_-0X§).§_-8i§();
            §_-qI§ = false;
         }
         else
         {
            _loc9_ = this.§_-s0§.getItemByName("AvatarHolderClip") as §_-k6§;
            this.§_-zi§(_loc9_.mClip);
            _loc10_ = §_-08§.§_-C5§.§_-SZ§();
            §_-08§.§_-071§(_loc10_.§_-1h§,_loc10_.sId,_loc10_.§_-4k§,§_-017§,110,174);
            §_-08§.§_-C5§.§_-fs§();
            (_loc11_ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§).§_-OQ§(null,§_-0-w§);
            (this.§_-s0§ as §_-0X§).§_-8i§();
         }
         if(this.§_-Ju§)
         {
            if((_loc12_ = (this.§_-s0§ as §_-0X§).§_-00i§(this.§_-Ju§)) != -1)
            {
               _loc13_ = this.§_-Ju§.substr("CATEGORY".length);
               this.§_-s0§.setText(_loc13_,"Textfield_CategoryTitle");
               this.§_-s0§.§_-oK§("Repeater_Items","Repeater_Items_Tab_" + _loc12_);
               if(§_-xe§.§_-eA§().§_-05v§.length > 0)
               {
                  _loc1_.§_-02B§("Repeater_Tabs_Tab_0").§_-0BT§(§_-xe§.§_-eA§().§_-05v§[_loc12_].name as String);
               }
            }
            this.§_-Ju§ = null;
         }
         this.§_-ak§();
      }
      
      private function onUiInteraction(param1:§_-Bt§) : void
      {
         this.uiInteractionHandler(param1.§_-G§,param1.§_-zT§,param1.§_-02o§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:§_-rD§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§_-Ev§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-0-w§ = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         var _loc15_:§_-0-w§ = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         if(param3 is §_-rD§)
         {
            _loc4_ = param3 as §_-rD§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §_-Ny§)
               {
                  if(((_loc4_.mParentContainer as §_-Ny§).mParentContainer as §_-05d§).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = (this.§_-s0§ as §_-0X§).§_-00i§(param2)) != -1)
                     {
                        _loc6_ = param2.substr("CATEGORY".length);
                        this.§_-s0§.setText(_loc6_,"Textfield_CategoryTitle");
                        this.§_-s0§.§_-oK§("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                        for each(_loc7_ in (_loc4_.mParentContainer as §_-Ny§).§_-057§)
                        {
                           (_loc7_ as §_-0-w§).§_-Is§();
                        }
                        (param3 as §_-0-w§).§_-MM§();
                        this.§_-0-5§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §_-Ny§).mParentContainer as §_-05d§).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc8_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§_-BX§(param2);
                     }
                     else if(_loc8_ == 0)
                     {
                        this.§_-8U§(param2.substring("REMOVE_".length));
                     }
                     this.§_-ak§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc9_ = param2.toUpperCase().substr(4);
            _loc10_ = (this.§_-s0§ as §_-0X§).§_-00i§(_loc9_);
            _loc11_ = 0;
            for each(_loc12_ in ((param3 as §_-rD§).mParentContainer as §_-Ny§).§_-057§)
            {
               if(_loc11_ != _loc10_)
               {
                  (_loc12_ as §_-0-w§).§_-Is§();
               }
               else
               {
                  (_loc12_ as §_-0-w§).§_-MM§();
               }
               _loc11_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc13_ = param2.toUpperCase().substr(3);
            _loc14_ = (this.§_-s0§ as §_-0X§).§_-00i§(_loc13_);
            _loc11_ = 0;
            for each(_loc15_ in ((param3 as §_-rD§).mParentContainer as §_-Ny§).§_-057§)
            {
               if(_loc11_ == _loc14_)
               {
                  (_loc15_ as §_-0-w§).§_-Is§();
               }
               _loc11_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §_-xe§.§_-0Ec§.§_-mI§();
               this.§_-ak§();
               this.§_-0-5§();
               break;
            case "RANDOMIZE_AVATAR":
               §_-xe§.§_-0Ec§.§_-0BC§();
               this.§_-ak§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§_-UP§();
               break;
            case "CANCEL_SHARE":
               this.§_-s0§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
               this.§_-4v§();
               break;
            case "BUY_THESE":
               _loc16_ = §_-Pj§.§_-qM§(this.§_-UY§);
               AngryBirdsFP11.§_-07§.§_-DE§();
               this.§_-04a§ = [];
               _loc17_ = _loc16_.split("-");
               for each(_loc19_ in _loc17_)
               {
                  §_-OY§.§_-nm§(_loc19_);
                  this.§_-04a§.push(_loc19_);
               }
               §_-05J§.addCallback("purchaseComplete",this.§_-04I§);
               §_-05J§.§_-0At§("placeOrder",_loc16_);
               break;
            case "SET_AVATAR":
               this.§_-0CP§ = false;
               this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
               _loc18_ = §_-xe§.§_-0Ec§.§_-Fa§();
               this.§_-XC§(_loc18_);
               this.§_-0-5§();
               break;
            case "SET_PROFILE":
               this.§_-0CP§ = true;
               this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
               this.§_-XC§("");
               this.§_-0-5§();
               break;
            case "CLOSE_AVATAR":
               this.§_-2B§.removeEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
               this.deActivate();
               break;
            case "EASTER_EGG_2":
               this.§_-s0§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               (AngryBirdsFP11.sUserProgress as §_-09d§).setEggUnlocked("1000-2");
               break;
            case "SCROLL_RIGHT":
               this.§_-0-5§();
               break;
            case "SCROLL_LEFT":
               this.§_-0-5§();
         }
      }
      
      private function §_-4v§() : void
      {
         §_-OY§.§_-0-X§();
         AngryBirdsFP11.§_-07§.§_-DE§();
         §_-05J§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §_-05J§.§_-0At§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:§_-zA§ = null;
         var _loc3_:int = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:§_-rD§ = null;
         var _loc8_:int = 0;
         var _loc9_:Bitmap = null;
         var _loc10_:DisplayObject = null;
         §_-OY§.§_-uI§();
         §_-05J§.§_-tG§("permissionRequestComplete",this.permissionRequestComplete);
         this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
         if(param1 == "true")
         {
            this.§_-s0§.getItemByName("AvatarSharing").setVisibility(true);
            this.§_-s0§.getItemByName("ShareAvatarWindow").setVisibility(true);
            _loc2_ = new §_-zA§();
            _loc2_.§_-Cs§();
            _loc3_ = 173;
            _loc4_ = _loc2_.render(§_-xe§.§_-0Ec§.§_-Fa§(),null,_loc3_);
            _loc5_ = new Matrix();
            _loc6_ = _loc3_ / 100 / 2;
            _loc5_.scale(_loc6_,_loc6_);
            _loc8_ = (_loc7_ = this.§_-s0§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
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
      
      private function §_-UP§() : void
      {
         this.§_-s0§.getItemByName("AvatarSharing").setVisibility(false);
         this.§_-s0§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§_-s0§.getItemByName("WaitingForReply").setVisibility(true);
         var _loc1_:§_-zA§ = new §_-zA§();
         _loc1_.§_-Cs§();
         var _loc3_:BitmapData = _loc1_.render(§_-xe§.§_-0Ec§.§_-Fa§(),null,500);
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(2.5,2.5);
         var _loc7_:MovieClip;
         var _loc6_:Class;
         (_loc7_ = new (_loc6_ = §_-Fc§.§_-YE§("WatermarkPlayOnFacebook"))()).x = 500 - _loc7_.width;
         _loc7_.y = 500 - _loc7_.height;
         _loc3_.draw(_loc7_,_loc4_,null,null,null,true);
         var _loc8_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§;
         §_-Gi§.§_-c0§(_loc3_,§_-06E§,_loc8_,this.§_-5e§,this.§_-ZQ§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-05J§.§_-tG§("purchaseComplete",this.§_-04I§);
         this.§_-2B§.removeEventListener(§_-Bt§.§_-KB§,this.onUiInteraction);
         preClose();
      }
      
      private function §_-5e§(param1:*) : void
      {
         var _loc2_:String = param1.toString();
         this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      private function §_-ZQ§() : void
      {
         this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
      }
      
      override public function close() : void
      {
         super.close();
         this.§_-g2§ = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:§_-059§ = null;
         super.open(param1);
         §_-OY§.§_-T6§();
         var _loc2_:§_-k6§ = this.§_-s0§.getItemByName("AvatarSavedAnimation") as §_-k6§;
         _loc2_.setVisibility(false);
         mClip.x = (mClip.stage.stageWidth - 750) / 2;
         mClip.y = (mClip.stage.stageHeight - 525) / 2;
         if(this.§_-Vg§)
         {
            this.§_-Vg§ = false;
            this.§_-02u§();
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §_-017§.length)
         {
            (_loc4_ = §_-017§[_loc3_]).hide();
            _loc3_++;
         }
         if(§_-08§.§_-C5§ == null)
         {
            §_-08§.§_-071§(§_-j3§,§_-xZ§,§_-17§,§_-017§);
         }
         if(!this.§_-g2§)
         {
            this.§_-jx§();
         }
      }
      
      public function §_-ak§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§_-05d§ = this.§_-s0§.getItemByName("Repeater_Items") as §_-05d§;
         var _loc2_:Number = 0;
         while(_loc2_ < §_-xe§.§_-eA§().§_-05v§.length)
         {
            _loc3_ = §_-xe§.§_-eA§().§_-05v§[_loc2_].name;
            if((_loc4_ = §_-xe§.§_-0Ec§.§_-02n§(_loc3_)) == null)
            {
               _loc1_.§_-02B§("Repeater_Items_Tab_" + _loc2_).§_-0BT§(_loc3_);
            }
            else
            {
               _loc1_.§_-02B§("Repeater_Items_Tab_" + _loc2_).§_-0BT§(_loc4_.§_-1h§);
            }
            _loc2_++;
         }
         this.§_-0-5§();
      }
      
      public function §_-04I§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§_-04a§)
         {
            §_-OY§.§_-0h§(_loc1_);
         }
         this.§_-04a§ = [];
         §_-05J§.§_-tG§("purchaseComplete",this.§_-04I§);
         this.§_-7q§();
      }
      
      private function §_-XC§(param1:String) : void
      {
         this.§_-dZ§ = this.§_-0Au§;
         this.§_-0Au§ = param1;
         var _loc2_:URLRequest = §_-P-§.§_-0Ak§(§_-rf§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.§_-lz§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-QE§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-cn§);
         _loc3_.load(_loc2_);
      }
      
      protected function §_-cn§(param1:SecurityErrorEvent) : void
      {
         §_-EJ§.§_-8H§();
      }
      
      private function §_-lz§(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:§_-k6§ = null;
         if(this.§_-0Au§ != null)
         {
            (AngryBirdsFP11.sUserProgress as §_-09d§).avatarString = this.§_-0Au§;
            §_-Dk§.§_-86§(new §_-HV§(this.§_-0Au§,(AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§),true,true);
            §_-pI§.§_-6-§(this.§_-0Au§);
            _loc2_ = this.§_-0Au§.split("-");
            for each(_loc3_ in _loc2_)
            {
               if(this.§_-dZ§)
               {
                  if(this.§_-dZ§.indexOf(_loc3_) == -1)
                  {
                     §_-OY§.§_-Mb§(_loc3_);
                  }
               }
               else
               {
                  §_-OY§.§_-Mb§(_loc3_);
               }
            }
         }
         if(this.§_-g2§)
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
            (_loc4_ = this.§_-s0§.getItemByName("AvatarSavedAnimation") as §_-k6§).setVisibility(true);
            _loc4_.mClip.gotoAndPlay(1);
            this.§_-0-5§();
         }
      }
      
      private function §_-QE§(param1:IOErrorEvent) : void
      {
         var _loc2_:§_-k6§ = null;
         if(this.§_-g2§)
         {
            this.§_-s0§.getItemByName("WaitingForReply").setVisibility(false);
            _loc2_ = this.§_-s0§.getItemByName("AvatarSavedAnimation") as §_-k6§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §_-8U§(param1:String) : void
      {
         §_-xe§.§_-0Ec§.§_-8U§(param1);
         this.§_-0-5§();
      }
      
      public function §_-BX§(param1:String) : void
      {
         var _loc4_:§_-059§ = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §_-xe§.§_-eA§().§_-yf§(param1);
         var _loc3_:§_-059§ = §_-xe§.§_-0Ec§;
         if(_loc2_)
         {
            if(_loc2_.§_-4k§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§_-SZ§().§_-1h§ != _loc2_.§_-1h§)
            {
               (_loc4_ = §_-08§.§_-071§(_loc2_.§_-1h§,_loc2_.sId,_loc2_.§_-4k§,§_-017§,110,174)).§_-mI§();
               _loc4_.§_-QZ§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§_-fm§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §_-08§.§_-07f§(_loc6_.§_-1h§);
                        }
                        _loc4_.§_-QZ§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§_-02n§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§_-QZ§(§_-xe§.§_-eA§().§_-yf§("Backgrounds1"));
               }
            }
            else if(_loc2_.§_-4k§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §_-08§.§_-07f§(_loc2_.§_-1h§);
               §_-xe§.§_-0Ec§.§_-QZ§(_loc2_);
            }
            else
            {
               §_-xe§.§_-0Ec§.§_-QZ§(_loc2_);
            }
         }
         else
         {
            §_-FK§.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§_-0-5§();
      }
      
      private function §_-0-5§() : void
      {
         var _loc4_:§_-044§ = null;
         var _loc5_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§_-0-w§ = null;
         var _loc15_:§_-0-w§ = null;
         var _loc16_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).avatarString;
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc10_ = _loc3_.split("-");
            _loc12_ = (_loc11_ = §_-xe§.§_-0Ec§.§_-Fa§()).split("-");
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
         for each(_loc4_ in §_-xe§.§_-eA§().§_-05v§)
         {
            (_loc14_ = this.§_-s0§.getItemByName(_loc4_.name.toUpperCase()) as §_-0-w§).§_-ZA§();
         }
         this.§_-UY§ = [];
         for each(_loc5_ in §_-xe§.§_-0Ec§.§_-fm§)
         {
            _loc15_ = this.§_-s0§.getItemByName(_loc5_.category.toUpperCase()) as §_-0-w§;
            _loc16_ = §_-iY§(_loc5_.§_-1h§);
            _loc15_.§_-0v§(_loc5_.§_-1h§,_loc16_);
            if(_loc16_ > 0)
            {
               this.§_-UY§.push(_loc5_);
            }
            _loc1_ += _loc16_;
         }
         this.§_-s0§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            this.§_-s0§.getItemByName("BuyTheseButton").setVisibility(true);
            this.§_-s0§.getItemByName("Textfield_Price").setVisibility(true);
            this.§_-s0§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            this.§_-s0§.getItemByName("BuyTheseButton").setVisibility(false);
            this.§_-s0§.getItemByName("Textfield_Price").setVisibility(false);
            this.§_-s0§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§_-0CP§)
         {
            (this.§_-s0§.getItemByName("SetAvatarProfileButton") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§_-s0§.getItemByName("SetFacebookProfileButton") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
         }
         else if(_loc1_ > 0)
         {
            (this.§_-s0§.getItemByName("SetAvatarProfileButton") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (this.§_-s0§.getItemByName("SetFacebookProfileButton") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (this.§_-s0§.getItemByName("SetFacebookProfileButton") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (this.§_-s0§.getItemByName("SetAvatarProfileButton") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (this.§_-s0§.getItemByName("SetAvatarProfileButton") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
               this.§_-s0§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         this.§_-s0§.setText(§_-0X§.§_-Dx§(_loc1_),"Textfield_Price");
         if(this.§_-Oj§ == null)
         {
            this.§_-Oj§ = new §_-zA§();
            this.§_-Oj§.§_-Cs§();
         }
         var _loc6_:§_-Mu§ = this.§_-s0§.getItemByName("SetAvatarProfileButton") as §_-Mu§;
         while(_loc6_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc6_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc7_:String = §_-xe§.§_-0Ec§.§_-Fa§();
         var _loc8_:Bitmap;
         (_loc8_ = new Bitmap(this.§_-Oj§.render(_loc7_,null))).x = -8;
         _loc8_.y = -12;
         _loc6_.mClip.SetAvatarHolder.addChild(_loc8_);
         var _loc9_:§_-Ny§;
         if(_loc9_ = this.§_-s0§.getItemByName(this.§_-s0§.§_-0ER§("Repeater_Items")) as §_-Ny§)
         {
            this.§_-s0§.setText("Page " + (_loc9_.§_-TW§ + 1).toString() + "/" + _loc9_.§_-ep§,"Textfield_PageNumber");
            if(_loc9_.§_-ep§ == 1)
            {
               this.§_-s0§.getItemByName("Textfield_PageNumber").setVisibility(false);
               this.§_-s0§.getItemByName("Button_Scroll1").setVisibility(false);
               this.§_-s0§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               this.§_-s0§.getItemByName("Textfield_PageNumber").setVisibility(true);
               this.§_-s0§.getItemByName("Button_Scroll1").setVisibility(true);
               this.§_-s0§.getItemByName("Button_Scroll2").setVisibility(true);
            }
         }
      }
   }
}
