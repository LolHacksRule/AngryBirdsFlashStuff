package §]!W§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §%#A§.§,#w§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §1#W§.§!#&§;
   import §2`§.§<"I§;
   import §6V§.§?!=§;
   import §8#D§.§=>§;
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import §;#r§.§"g§;
   import §<!b§.§8-§;
   import §<!b§.§>#&§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<#m§.AbstractPopup;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
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
      
      private static var §6$%§:uint = 6;
      
      private static var §9"V§:uint = 2;
      
      private static const §-"A§:uint = 0;
      
      private static const §+"5§:uint = 1;
      
      private static const §,#P§:uint = 2;
      
      private static const §3"]§:uint = 200;
      
      private static const §"#d§:uint = 500;
      
      private static const §[!N§:int = 1500;
       
      
      private var §+!v§:uint = 0;
      
      private var §8b§:DisplayObject;
      
      private var §""!§:Array;
      
      private var §+"§:§4"v§;
      
      private var §+#j§:Vector.<§,#w§>;
      
      private var §'#J§:§`!s§;
      
      private var §!"Z§:int;
      
      private var § #H§:uint = 0;
      
      private var §1#§:uint = 0;
      
      private var §^"T§:int;
      
      private var §>!Y§:int;
      
      private var §&O§:Vector.<§8-§>;
      
      private var §3!s§:Point;
      
      private var §;!>§:Dictionary;
      
      private var §2$ §:Boolean;
      
      private var §`##§:int;
      
      private var §^g§:DisplayObject;
      
      public function QualifierRewardPopUp(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§+#j§ = new Vector.<§,#w§>();
         this.§;!>§ = new Dictionary();
         super(param1,param2,§=>§.§%" §.Views.PopupView_QualifierGiftGachaPopUp[0]);
      }
      
      override protected function init() : void
      {
         var _loc3_:§,#w§ = null;
         super.init();
         this.§8b§ = §1"6§.mClip.doneButton;
         this.§8b§.addEventListener(MouseEvent.CLICK,this.§3">§);
         this.§3!s§ = new Point(this.§8b§.scaleX,this.§8b§.scaleY);
         this.§8b§.scaleY = 0;
         this.§8b§.scaleX = 0;
         this.§^g§ = §1"6§.mClip.tipMC;
         this.§^g§.visible = false;
         var _loc1_:DisplayObject = §1"6§.mClip.bg;
         _loc1_.visible = false;
         this.§""!§ = §4"W§.§ "D§.§^$!§.§6#'§(§-!t§.§7$#§);
         var _loc2_:int = 1;
         while(_loc2_ <= §6$%§)
         {
            _loc3_ = §,#w§(§1"6§.getItemByName("chest" + _loc2_));
            this.§+#j§.push(_loc3_);
            _loc3_.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            _loc2_++;
         }
         if(this.§""!§ == null || this.§""!§.length < §6$%§)
         {
            throw new Error("Rewards from " + §-!t§.§7$#§ + " does not match the chest count");
         }
         this.§&O§ = new Vector.<§8-§>();
      }
      
      private function §5"p§(param1:uint) : void
      {
         this.§ #H§ = param1;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§!"Z§ = getTimer();
         §1"6§.mClip.addEventListener(Event.ENTER_FRAME,this.§#!Q§);
         this.§5"p§(§+"5§);
      }
      
      private function §#!Q§(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.§!"Z§;
         this.§!"Z§ = _loc2_;
         this.update(_loc3_);
      }
      
      private function update(param1:int) : void
      {
         if(this.§ #H§ != §-"A§ && this.§ #H§ != this.§1#§)
         {
            this.§9!5§();
         }
         this.updateState(param1);
         this.§^P§(param1);
      }
      
      private function §^P§(param1:int) : void
      {
         var _loc3_:§8-§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&O§.length)
         {
            _loc3_ = this.§&O§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
      }
      
      private function updateState(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:§,#w§ = null;
         var _loc5_:§`!s§ = null;
         var _loc6_:§`!s§ = null;
         var _loc7_:§`!s§ = null;
         var _loc8_:§`!s§ = null;
         switch(this.§1#§)
         {
            case §+"5§:
               if(this.§^"T§ < §3"]§)
               {
                  this.§^"T§ += param1;
                  if(this.§^"T§ >= §3"]§)
                  {
                     this.§'#J§.play();
                     _loc2_ = 0;
                     while(_loc2_ < this.§+#j§.length)
                     {
                        (_loc4_ = this.§+#j§[_loc2_]).setVisibility(true);
                        _loc2_++;
                     }
                     _loc3_ = §1"6§.mClip.bg;
                     _loc3_.visible = true;
                  }
               }
               if(this.§2$ §)
               {
                  this.§`##§ += param1;
                  if(this.§`##§ >= §[!N§)
                  {
                     _loc5_ = §6"w§.§ "D§.§""3§(this.§^g§,{
                        "scaleX":this.§^g§.scaleX,
                        "scaleY":this.§^g§.scaleY
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.3,§<"I§.easeOut);
                     this.§^g§.visible = true;
                     this.§^g§.scaleX = this.§^g§.scaleY = 0;
                     _loc5_.play();
                     this.§2$ § = false;
                     break;
                  }
                  break;
               }
               break;
            case §,#P§:
               if(this.§>!Y§ < §"#d§)
               {
                  this.§>!Y§ += param1;
                  if(this.§>!Y§ >= §"#d§)
                  {
                     _loc6_ = §6"w§.§ "D§.§""3§(this.§8b§,{
                        "scaleX":this.§3!s§.x,
                        "scaleY":this.§3!s§.y
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.5,Back.easeOut);
                     if(this.§^g§.visible)
                     {
                        _loc7_ = §6"w§.§ "D§.§""3§(this.§^g§,{
                           "scaleX":0,
                           "scaleY":0
                        },{
                           "scaleX":this.§^g§.scaleX,
                           "scaleY":this.§^g§.scaleY
                        },0.5,§<"I§.easeOut);
                        (_loc8_ = §6"w§.§ "D§.§=!b§(_loc7_,_loc6_)).play();
                        break;
                     }
                     _loc6_.play();
                     break;
                  }
                  break;
               }
         }
      }
      
      private function §>"5§() : void
      {
         var _loc2_:§,#w§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:§`!s§ = null;
         var _loc7_:§`!s§ = null;
         var _loc8_:§`!s§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+#j§.length)
         {
            _loc2_ = this.§+#j§[_loc1_];
            _loc2_.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc3_ = _loc2_.mClip.scaleX;
            _loc4_ = _loc2_.mClip.scaleY;
            _loc5_ = 0.1;
            _loc6_ = §6"w§.§ "D§.§""3§(_loc2_.mClip,{
               "scaleX":_loc3_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },3 + Math.random() * 1.5,§<"I§.easeIn);
            _loc7_ = §6"w§.§ "D§.§""3§(_loc2_.mClip,{
               "scaleX":_loc3_,
               "scaleY":_loc4_
            },{
               "scaleX":_loc4_ + _loc5_,
               "scaleY":_loc4_ + _loc5_
            },3 + Math.random() * 1.5,§<"I§.easeOut);
            (_loc8_ = §6"w§.§ "D§.§=!b§(_loc6_,_loc7_)).§&#X§ = false;
            _loc8_.delay = Math.random() * 2;
            _loc8_.play();
            this.§;!>§[_loc2_] = _loc8_;
            _loc1_++;
         }
         this.§2$ § = true;
         this.§`##§ = 0;
      }
      
      private function §9!5§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:§`!s§ = null;
         var _loc4_:§`!s§ = null;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc7_:§`!s§ = null;
         this.§1#§ = this.§ #H§;
         this.§ #H§ = §-"A§;
         switch(this.§1#§)
         {
            case §+"5§:
               this.§^"T§ = 0;
               _loc1_ = [];
               _loc2_ = §1"6§.mClip.bg;
               _loc3_ = §6"w§.§ "D§.§""3§(_loc2_,{"alpha":_loc2_.alpha},{"alpha":0},1,§6"w§.§]i§);
               _loc2_.alpha = 0;
               _loc5_ = 0;
               while(_loc5_ < §6$%§)
               {
                  _loc6_ = this.§+#j§[_loc5_].mClip;
                  _loc7_ = §6"w§.§ "D§.§""3§(_loc6_,{
                     "scaleX":_loc6_.scaleX,
                     "scaleY":_loc6_.scaleY
                  },{
                     "scaleX":_loc6_.scaleX * 0.25,
                     "scaleY":_loc6_.scaleY * 0.25
                  },1.5,§<"I§.easeOut);
                  _loc6_.scaleX = _loc6_.scaleY = 0;
                  _loc1_.push(_loc7_);
                  _loc5_++;
               }
               _loc4_ = §6"w§.§ "D§.§5"L§(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5]);
               this.§'#J§ = §6"w§.§ "D§.§=!b§(_loc3_,_loc4_);
               this.§'#J§.onComplete = this.§>"5§;
               break;
            case §,#P§:
               this.§>!Y§ = 0;
         }
      }
      
      private function §3">§(param1:MouseEvent) : void
      {
         this.§8b§.removeEventListener(MouseEvent.CLICK,this.§3">§);
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:§`!s§ = null;
         switch(param2)
         {
            case "CHEST_OPENED":
               this.§2$ § = false;
               _loc4_ = (param3 as §,#w§).mClip;
               (param3 as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
               (_loc5_ = this.§;!>§[param3 as §,#w§]).stop();
               _loc5_.dispose();
               this.§&""§(_loc4_,_loc4_.scaleX,_loc4_.scaleY,this.§+!v§);
               ++this.§+!v§;
               if(this.§+!v§ == §9"V§)
               {
                  this.§ M§();
               }
               if(this.§+!v§ == §6$%§)
               {
                  this.§5"p§(§,#P§);
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §&""§(param1:MovieClip, param2:Number, param3:Number, param4:int) : void
      {
         var chestMC:MovieClip = param1;
         var scaleX:Number = param2;
         var scaleY:Number = param3;
         var index:int = param4;
         var reward:Object = this.§""!§[index];
         chestMC.gotoAndStop("claimed");
         chestMC.scaleX = scaleX;
         chestMC.scaleY = scaleY;
         var holderMC:DisplayObjectContainer = DisplayObjectContainer(§1"6§.mClip.getChildByName("holder" + chestMC.name.charAt(5)));
         var tempStarSplash:§8-§ = new §8-§(800,800,0,0,§8-§.§1!z§,20,§>#&§.§3"S§);
         this.§&O§.push(tempStarSplash);
         holderMC.addChild(tempStarSplash);
         var chestClosingTween:§`!s§ = §6"w§.§ "D§.§""3§(chestMC,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":chestMC.scaleX,
            "scaleY":chestMC.scaleY
         },1,§6"w§.§]i§);
         chestClosingTween.onComplete = function():void
         {
            chestMC.visible = false;
         };
         chestClosingTween.play();
         var rewardClass:Class = §+$#§.§["`§("QualiReward_" + reward.i);
         var rewardMC:MovieClip = new rewardClass();
         rewardMC.count.text = reward.q;
         holderMC.addChild(rewardMC);
         rewardMC.mouseChildren = false;
         rewardMC.mouseEnabled = false;
         var rewardShowingTween:§`!s§ = §6"w§.§ "D§.§""3§(rewardMC,{
            "scaleX":rewardMC.scaleX,
            "scaleY":rewardMC.scaleY
         },{
            "scaleX":0,
            "scaleY":0
         },0.75,Back.easeOut);
         rewardShowingTween.play();
         var shineMC:MovieClip = rewardMC.shine;
         var shineTween:§`!s§ = §6"w§.§ "D§.§""3§(shineMC,{"rotation":0},{"rotation":-360},23,§6"w§.§ # §);
         shineTween.§&#X§ = false;
         shineTween.play();
         var soundName:String = "chest_open_regular" + (this.§+!v§ % 3 + 1);
         §!#&§.playSound(soundName,§!#&§.§6#h§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §1"6§.mClip.removeEventListener(Event.ENTER_FRAME,this.§#!Q§);
         this.§`!w§();
         super.hide(param1,param2);
      }
      
      private function §`!w§() : void
      {
         var _loc2_:§8-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&O§.length)
         {
            _loc2_ = this.§&O§[_loc1_];
            _loc2_.§;!?§();
            _loc1_++;
         }
      }
      
      private function § M§() : void
      {
         this.§+"§ = new §4"v§();
         this.§+"§.addEventListener(Event.COMPLETE,this.§?"i§);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
         this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§+"§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + §-!t§.§7$#§));
      }
      
      private function §5!9§(param1:IOErrorEvent) : void
      {
         this.§+"§.removeEventListener(Event.COMPLETE,this.§?"i§);
         this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
      }
      
      private function §?"i§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§"g§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.§""!§)
         {
            (_loc4_ = new §"g§()).screen = ID;
            _loc4_.amount = _loc3_.q;
            if(_loc3_.i == §6$0§.§3#j§)
            {
               _loc4_.currency = "IVC";
            }
            _loc4_.itemType = _loc3_.i;
            _loc4_.§>"j§ = §?!=§.§'#g§;
            if(!_loc2_)
            {
               _loc2_ = new Array();
            }
            _loc2_.push(_loc4_);
         }
         §4"W§.§ "D§.§+#<§(param1.currentTarget.data,false,_loc2_);
         this.§+"§.removeEventListener(Event.COMPLETE,this.§?"i§);
         this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
      }
   }
}
