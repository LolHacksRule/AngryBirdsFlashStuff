package §9$8§
{
   import § §.§7#L§;
   import §%$!§.§%h§;
   import §%$!§.§=]§;
   import §&#S§.§""Z§;
   import §&#S§.§^#[§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §3!B§.§9##§;
   import §5"$§.§]!m§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §<!=§.§#!A§;
   import §<!=§.§`#w§;
   import §<!O§.§@#`§;
   import §>!#§.§-#A§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.effects.easing.Back;
   
   public class QualifierRewardPopUp extends AbstractPopup
   {
      
      public static const ID:String = "QualifierRewardPopUp";
      
      private static var §33§:uint = 6;
      
      private static var §+z§:uint = 2;
      
      private static const §^n§:uint = 0;
      
      private static const §6"U§:uint = 1;
      
      private static const §5"4§:uint = 2;
      
      private static const §<"x§:uint = 200;
      
      private static const §!"h§:uint = 500;
      
      private static const §0!<§:int = 1500;
       
      
      private var §0"A§:uint = 0;
      
      private var §-#+§:DisplayObject;
      
      private var §^!^§:Array;
      
      private var § each§:§5$!§;
      
      private var §5J§:Vector.<§=O§>;
      
      private var §^"+§:§^#[§;
      
      private var §&#w§:int;
      
      private var §="U§:uint = 0;
      
      private var §8",§:uint = 0;
      
      private var §5"§:int;
      
      private var §>#'§:int;
      
      private var §'#X§:Vector.<§#!A§>;
      
      private var §#+§:Point;
      
      private var §@z§:Dictionary;
      
      private var §1d§:Boolean;
      
      private var §3"i§:int;
      
      private var §6!L§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§5J§ = new Vector.<§=O§>();
         this.§@z§ = new Dictionary();
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§=O§ = null;
         super.init();
         this.§-#+§ = §7!j§.mClip.doneButton;
         this.§-#+§.addEventListener(MouseEvent.CLICK,this.§,"^§);
         this.§#+§ = new Point(this.§-#+§.scaleX,this.§-#+§.scaleY);
         this.§-#+§.scaleY = 0;
         this.§-#+§.scaleX = 0;
         this.§6!L§ = §7!j§.mClip.tipMC;
         this.§6!L§.visible = false;
         var _loc1_:DisplayObject = §7!j§.mClip.bg;
         _loc1_.visible = false;
         this.§^!^§ = §%h§.§3!]§.§@!3§.§^!!§(§]!m§.§3"[§);
         var _loc2_:int = 1;
         while(_loc2_ <= §33§)
         {
            _loc3_ = §=O§(§7!j§.getItemByName("chest" + _loc2_));
            this.§5J§.push(_loc3_);
            _loc3_.setComponentState(§4P§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§^!^§ == null || this.§^!^§.length < §33§)
         {
            throw new Error("Rewards from " + §]!m§.§3"[§ + " does not match the chest count");
         }
         this.§'#X§ = new Vector.<§#!A§>();
      }
      
      private function §7P§(param1:uint) : void
      {
         this.§="U§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§&#w§ = getTimer();
         §7!j§.mClip.addEventListener(Event.ENTER_FRAME,this.§ #l§);
         this.§7P§(§6"U§);
      }
      
      private function § #l§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§&#w§;
         this.§&#w§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§="U§ != §^n§ && this.§="U§ != this.§8",§)
         {
            this.§;A§();
         }
         this.updateState(param1);
         this.§&!f§(param1);
      }
      
      private function §&!f§(param1:int) : void
      {
         var _loc3_:§#!A§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'#X§.length)
         {
            _loc3_ = this.§'#X§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc5_:§^#[§ = null;
         var _loc6_:§^#[§ = null;
         var _loc7_:§^#[§ = null;
         switch(this.§8",§)
         {
            case §6"U§:
               if(this.§5"§ < §<"x§)
               {
                  this.§5"§ += param1;
                  if(this.§5"§ >= §<"x§)
                  {
                     this.§^"+§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§5J§.length)
                     {
                        this.§5J§[_loc2_].setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §7!j§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§1d§)
               {
                  this.§3"i§ += param1;
                  if(this.§3"i§ >= §0!<§)
                  {
                     _loc5_ = §""Z§.§3!]§.§5"0§(this.§6!L§,{
                        "scaleX":this.§6!L§.scaleX,
                        "scaleY":this.§6!L§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§7#L§.easeOut);
                     this.§6!L§.visible = true;
                     this.§6!L§.scaleX = this.§6!L§.scaleY = 0;
                     _loc5_.play();
                     this.§1d§ = false;
                     break;
                  }
                  break;
               }
               break;
            case §5"4§:
               if(this.§>#'§ < §!"h§)
               {
                  this.§>#'§ += param1;
                  if(this.§>#'§ >= §!"h§)
                  {
                     _loc6_ = §""Z§.§3!]§.§5"0§(this.§-#+§,{
                        "scaleX":this.§#+§.x,
                        "scaleY":this.§#+§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§6!L§.visible)
                     {
                        _loc7_ = §""Z§.§3!]§.§5"0§(this.§6!L§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§6!L§.scaleX,
                           "scaleY":this.§6!L§.scaleY
                        },0.5,§7#L§.easeOut);
                        §""Z§.§3!]§.§[#h§(_loc7_,_loc6_).play();
                     }
                     else
                     {
                        _loc6_.play();
                     }
                  }
               }
         }
      }
      
      private function §@H§() : void
      {
         var _loc2_:§=O§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§^#[§ = null;
         var _loc7_:§^#[§ = null;
         var _loc8_:§^#[§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5J§.length)
         {
            _loc2_ = this.§5J§[_loc1_];
            _loc2_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §""Z§.§3!]§.§5"0§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§7#L§.easeIn);
            _loc7_ = §""Z§.§3!]§.§5"0§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§7#L§.easeOut);
            (_loc8_ = §""Z§.§3!]§.§[#h§(_loc6_,_loc7_)).§^"c§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§@z§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§1d§ = true;
         this.§3"i§ = 0;
      }
      
      private function §;A§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§^#[§ = null;
         var _loc4_:§^#[§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§^#[§ = null;
         this.§8",§ = this.§="U§;
         this.§="U§ = §^n§;
         switch(this.§8",§)
         {
            case §6"U§:
               this.§5"§ = 0;
               _loc1_ = [];
               _loc2_ = §7!j§.mClip.bg;
               _loc3_ = §""Z§.§3!]§.§5"0§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§""Z§.§[$1§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §33§)
               {
                  _loc6_ = this.§5J§[_loc5_].mClip;
                  _loc7_ = §""Z§.§3!]§.§5"0§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§7#L§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §""Z§.§3!]§.§[$2§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§^"+§ = §""Z§.§3!]§.§[#h§(_loc3_,_loc4_);
               this.§^"+§.onComplete = this.§@H§;
               break;
            case §5"4§:
               this.§>#'§ = 0;
         }
      }
      
      private function §,"^§(param1:MouseEvent) : void
      {
         this.§-#+§.removeEventListener(MouseEvent.CLICK,this.§,"^§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§^#[§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§1d§ = false;
               _loc4_ = (param3 as §=O§).mClip;
               (param3 as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§@z§[param3 as §=O§]).stop();
               _loc5_.dispose();
               this.§#"+§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§0"A§);
               ++this.§0"A§;
               if(this.§0"A§ == §+z§)
               {
                  this.§`#7§();
               }
               if(this.§0"A§ == §33§)
               {
                  this.§7P§(§5"4§);
                  break;
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §#"+§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var _loc5_:Object = this.§^!^§[param4];
         param1.gotoAndStop("claimed");
         param1.scaleX = param2;
         param1.scaleY = param3;
         var _loc6_:DisplayObjectContainer = DisplayObjectContainer(§7!j§.mClip.getChildByName("holder" + param1.name.charAt(5)));
         var _loc7_:§#!A§ = new §#!A§(800,800,0,0,§#!A§.§&$<§,20,§`#w§.§else§);
         this.§'#X§.push(_loc7_);
         _loc6_.addChild(_loc7_);
         §""Z§.§3!]§.§5"0§(param1,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":param1.scaleX,
            "scaleY":param1.scaleY
         },1,§""Z§.§[$1§).play();
         var _loc10_:MovieClip;
         (_loc10_ = new §@`§.§4!i§("QualiReward_" + _loc5_.i)()).count.text = _loc5_.q;
         _loc6_.addChild(_loc10_);
         _loc10_.mouseChildren = false;
         _loc10_.mouseEnabled = false;
         §""Z§.§3!]§.§5"0§(_loc10_,{
            "scaleX":_loc10_.scaleX,
            "scaleY":_loc10_.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut).play();
         var _loc12_:MovieClip = _loc10_.shine;
         var _loc13_:§^#[§;
         (_loc13_ = §""Z§.§3!]§.§5"0§(_loc12_,{"rotation":0},{"rotation":-360},23,§""Z§.§?!Y§)).§^"c§ = false;
         _loc13_.play();
         var _loc14_:String = "chest_open_regular" + (this.§0"A§ % 3 + 1);
         §#$+§.playSound(_loc14_,§#$+§.§'!o§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §7!j§.mClip.removeEventListener(Event.ENTER_FRAME,this.§ #l§);
         this.§&!w§();
         super.hide(param1,param2);
      }
      
      private function §&!w§() : void
      {
         var _loc2_:§#!A§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'#X§.length)
         {
            _loc2_ = this.§'#X§[_loc1_];
            _loc2_.§4#1§();
            _loc1_++;
         }
      }
      
      private function §`#7§() : void
      {
         this.§ each§ = new §5$!§();
         this.§ each§.addEventListener(Event.COMPLETE,this.§9#L§);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
         this.§ each§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ each§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §]!m§.§3"[§));
      }
      
      private function §[^§(param1:IOErrorEvent) : void
      {
         this.§ each§.removeEventListener(Event.COMPLETE,this.§9#L§);
         this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
      }
      
      private function §9#L§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9##§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§^!^§)
         {
            (_loc4_ = new §9##§()).§;"O§ = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §=]§.§;Q§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.gainType = §-#A§.§4u§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §%h§.§3!]§.§1!0§(param1.currentTarget.data,false,_loc2_);
         this.§ each§.removeEventListener(Event.COMPLETE,this.§9#L§);
         this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
      }
   }
}
