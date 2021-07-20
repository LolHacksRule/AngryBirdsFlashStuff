package §+"s§
{
   import §!#C§.§ $?§;
   import §"!n§.§2#f§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import §&$3§.§7$C§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §3+§.§;!H§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import mx.effects.easing.Back;
   
   public class StarCollectionPopup extends AbstractPopup
   {
      
      public static const ID:String = "StarCollectionPopup";
       
      
      protected var §]"§:§7"L§;
      
      protected var §+G§:§>#O§;
      
      private var §&r§:MovieClip;
      
      private var §5"V§:TextField;
      
      private var §"J§:TextField;
      
      private var §6!G§:TextField;
      
      private var §5"k§:Vector.<MovieClip>;
      
      private var §8#v§:Vector.<MovieClip>;
      
      private var §%!R§:Vector.<MovieClip>;
      
      private var §2!N§:§!!o§;
      
      private var §1"'§:§7$C§;
      
      private var §3!7§:int = -1;
      
      private var §]"w§:Boolean;
      
      private var §1#5§:Array;
      
      private var §#!V§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §?l§.§3m§.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§]"§ = §7"L§.§`"H§;
         this.§+G§ = this.§]"§.§9'§() as §>#O§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&r§ = §&!M§.mClip;
         this.§5"V§ = this.§&r§.Stats.Textfield_Tournament as TextField;
         this.§"J§ = this.§&r§.Stats.Textfield_Total as TextField;
         this.§6!G§ = this.§&r§.Time.Textfield_TimeLeft as TextField;
         this.§5"V§.text = "";
         this.§"J§.text = "";
         this.§6!G§.text = "";
         this.§]"§.addEventListener(§7"L§.§ "D§,this.§#"#§);
         this.§4#W§();
      }
      
      private function §4#W§() : void
      {
         this.§5"k§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§5"k§.push(this.§&r§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§8#v§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§8#v§.push(this.§&r§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§%!R§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§%!R§.push(this.§&r§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`#[§();
         this.§#!V§ = §3Z§.§ "m§(AngryBirdsBase.§?#7§);
         §3Z§.§1#j§(AngryBirdsBase.§?#7§,this.§#!V§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         §3Z§.§1#j§(AngryBirdsBase.§?#7§,this.§#!V§);
      }
      
      private function §`#[§() : void
      {
         var _loc3_:§7"D§ = null;
         if(!this.§+G§)
         {
            return;
         }
         this.§5"V§.text = this.§+G§.§,"<§ + "/" + this.§+G§.§<"K§;
         this.§"J§.text = this.§+G§.§^#B§ + "/" + this.§+G§.§]#M§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5"k§.length)
         {
            _loc3_ = this.§+G§.§%H§(_loc2_);
            this.§5"k§[_loc2_].visible = false;
            this.§8#v§[_loc2_].visible = false;
            this.§%!R§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§+G§.§^#B§ < _loc3_.starsNeeded)
               {
                  this.§5"k§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§5"k§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§+G§.§^#B§ + "/" + _loc3_.starsNeeded;
                     this.§5"k§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§5"k§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§5"k§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§5"k§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§5"k§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§+G§.§%"I§(_loc3_.ID))
               {
                  this.§8#v§[_loc2_].visible = true;
                  this.§8#v§[_loc2_].addEventListener(MouseEvent.CLICK,this.§7#,§);
               }
               else
               {
                  this.§%!R§[_loc2_].gotoAndStop(this.§%!R§[_loc2_].totalFrames);
                  this.§%!R§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function §7#,§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§7"D§ = null;
         var e:MouseEvent = param1;
         if(this.§3!7§ > -1)
         {
            return;
         }
         if(!this.§+G§)
         {
            return;
         }
         i = 0;
         while(i < this.§8#v§.length)
         {
            if(this.§8#v§[i] == e.currentTarget)
            {
               rewardItem = this.§+G§.§%H§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§-#<§();
               this.§3!7§ = rewardItem.ID;
               this.§,$$§();
               this.§8#v§[i].removeEventListener(MouseEvent.CLICK,this.§7#,§);
               this.§8#v§[i].visible = false;
               this.§%!R§[i].gotoAndPlay(1);
               this.§%!R§[i].addFrameScript(this.§%!R§[i].totalFrames - 1,function():void
               {
                  §%!R§[i].stop();
                  §]"w§ = true;
               });
               this.§%!R§[i].visible = true;
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            }
            i++;
         }
      }
      
      private function §#"#§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§]"§.§&$ §();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§6!G§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§6!G§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§6!G§.text = "0h 0min 0s";
            close();
         }
         if(this.§3!7§ > -1)
         {
            if(this.§]"w§ && this.§1#5§ && this.§+G§)
            {
               this.§=H§(this.§1#5§,this.§+G§.§ " §(this.§3!7§));
               this.§`#[§();
               §;!H§.§]`§();
               this.§-#<§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "INFO":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§]"§.removeEventListener(§7"L§.§ "D§,this.§#"#§);
         if(this.§1"'§)
         {
            this.§1"'§.stop();
            this.§1"'§ = null;
         }
         super.dispose();
      }
      
      private function §,$$§() : void
      {
         §!!K§.§%#S§().§1$§(this.§3!7§);
         this.§2!N§ = new §!!o§();
         this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2!N§.addEventListener(Event.COMPLETE,this.§-#6§);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!D§);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!D§);
         this.§2!N§.addEventListener(§>5§.§@!@§,this.§5!D§);
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§3!7§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§2!N§.load(_loc1_);
      }
      
      private function §-#6§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §2#f§.§7!g§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§5p§));
            this.§="0§();
            this.§-#<§();
            return;
         }
         this.§1#5§ = _loc2_.items;
         if(this.§+G§)
         {
            this.§+G§.§;!S§(_loc2_.eventInfo.cp);
         }
         this.§="0§();
      }
      
      private function §5!D§(param1:Event) : void
      {
         this.§="0§();
         this.§-#<§();
      }
      
      private function §-#<§() : void
      {
         this.§]"w§ = false;
         this.§3!7§ = -1;
         this.§1#5§ = null;
      }
      
      private function §="0§() : void
      {
         if(this.§2!N§)
         {
            this.§2!N§.removeEventListener(Event.COMPLETE,this.§-#6§);
            this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!D§);
            this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!D§);
            this.§2!N§.removeEventListener(§>5§.§@!@§,this.§5!D§);
            this.§2!N§ = null;
         }
      }
      
      private function §=H§(param1:Array, param2:§7"D§) : void
      {
         var dimmerSprite:Sprite = null;
         var claimAnimationFrame:MovieClip = null;
         var ri:Object = null;
         var mc:MovieClip = null;
         var GlowRotatorClass:Class = null;
         var rotatorDsp:DisplayObject = null;
         var cls:Class = null;
         var dsp:DisplayObjectContainer = null;
         var i:int = 0;
         var actualClaimedItems:Array = param1;
         var rewardItem:§7"D§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§&r§.addChild(dimmerSprite);
         §3Z§.playSound("league_promotion_diamond",§3Z§.§8#R§);
         this.§1"'§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§@!4§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §6$A§.§1!m§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §6$A§.§1!m§(ri.i);
            dsp = new cls();
            dsp.x = 0;
            dsp.y = 0;
            (dsp.getChildByName("count") as TextField).text = "x" + ri.q;
            mc.addChild(dsp);
            mc.x = itemX;
            mc.y = 0;
            itemX += dsp.width;
            itemsWidth += dsp.width;
            claimAnimationFrame.addChild(mc);
         }
         if(claimAnimationFrame.numChildren > 1)
         {
            itemX = -(itemsWidth / 4);
            i = 0;
            while(i < claimAnimationFrame.numChildren)
            {
               claimAnimationFrame.getChildAt(i).x = itemX;
               itemX += claimAnimationFrame.getChildAt(i).width;
               i++;
            }
         }
         claimAnimationFrame.x = this.§5"k§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§5"k§[6].y;
         this.§&r§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§0#m§ = §"!&§.§`"H§.§1"W§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§0#m§ = §"!&§.§`"H§.§1"W§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§1"'§ = §"!&§.§`"H§.§?"§(tween1,tween2);
         this.§1"'§.onComplete = function():void
         {
            §&r§.removeChild(claimAnimationFrame);
            §&r§.removeChild(dimmerSprite);
         };
         this.§1"'§.play();
         § $?§.§`"H§.§ !t§(actualClaimedItems);
         § $?§.§`"H§.§-!P§();
      }
   }
}
