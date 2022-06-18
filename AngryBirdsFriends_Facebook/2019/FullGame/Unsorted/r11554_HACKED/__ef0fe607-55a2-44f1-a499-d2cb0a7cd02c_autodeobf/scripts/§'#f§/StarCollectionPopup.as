package §'#f§
{
   import §!!T§.§1"9§;
   import §!!t§.§'8§;
   import §%#v§.§0"j§;
   import §+#B§.§+$A§;
   import §4!n§.§'!,§;
   import §6§.§'#n§;
   import §6§.§6$'§;
   import §6§.§]%§;
   import §8"b§.§?$8§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import com.rovio.assets.§2"O§;
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
       
      
      protected var § #5§:§1"9§;
      
      protected var §0b§:§!!"§;
      
      private var §%§:MovieClip;
      
      private var §6!7§:TextField;
      
      private var §]#K§:TextField;
      
      private var §3$!§:TextField;
      
      private var §]#J§:Vector.<MovieClip>;
      
      private var §>!I§:Vector.<MovieClip>;
      
      private var §9#P§:Vector.<MovieClip>;
      
      private var §&![§:§'!n§;
      
      private var §[![§:§]%§;
      
      private var §&f§:int = -1;
      
      private var §>!s§:Boolean;
      
      private var §'"R§:Array;
      
      private var §94§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §0"j§.§-i§.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§ #5§ = §1"9§.§?q§;
         this.§0b§ = this.§ #5§.§[!8§() as §!!"§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%§ = §8#Y§.mClip;
         this.§6!7§ = this.§%§.Stats.Textfield_Tournament as TextField;
         this.§]#K§ = this.§%§.Stats.Textfield_Total as TextField;
         this.§3$!§ = this.§%§.Time.Textfield_TimeLeft as TextField;
         this.§6!7§.text = "";
         this.§]#K§.text = "";
         this.§3$!§.text = "";
         this.§ #5§.addEventListener(§1"9§.§2#!§,this.§@Z§);
         this.§&@§();
      }
      
      private function §&@§() : void
      {
         this.§]#J§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§]#J§.push(this.§%§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§>!I§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§>!I§.push(this.§%§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§9#P§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§9#P§.push(this.§%§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§%6§();
         this.§94§ = §[#%§.§`!q§(AngryBirdsBase.§9!2§);
         §[#%§.§""k§(AngryBirdsBase.§9!2§,this.§94§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         §[#%§.§""k§(AngryBirdsBase.§9!2§,this.§94§);
      }
      
      private function §%6§() : void
      {
         var _loc3_:§0#<§ = null;
         if(!this.§0b§)
         {
            return;
         }
         this.§6!7§.text = this.§0b§.§"#d§ + "/" + this.§0b§.§%!<§;
         this.§]#K§.text = this.§0b§.§>$A§ + "/" + this.§0b§.§ if§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]#J§.length)
         {
            _loc3_ = this.§0b§.§[!2§(_loc2_);
            this.§]#J§[_loc2_].visible = false;
            this.§>!I§[_loc2_].visible = false;
            this.§9#P§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§0b§.§>$A§ < _loc3_.starsNeeded)
               {
                  this.§]#J§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§]#J§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§0b§.§>$A§ + "/" + _loc3_.starsNeeded;
                     this.§]#J§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§]#J§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§]#J§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§]#J§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§]#J§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§0b§.§=!f§(_loc3_.ID))
               {
                  this.§>!I§[_loc2_].visible = true;
                  this.§>!I§[_loc2_].addEventListener(MouseEvent.CLICK,this.§ #^§);
               }
               else
               {
                  this.§9#P§[_loc2_].gotoAndStop(this.§9#P§[_loc2_].totalFrames);
                  this.§9#P§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function § #^§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§0#<§ = null;
         var e:MouseEvent = param1;
         if(this.§&f§ > -1)
         {
            return;
         }
         if(!this.§0b§)
         {
            return;
         }
         i = 0;
         while(i < this.§>!I§.length)
         {
            if(this.§>!I§[i] == e.currentTarget)
            {
               rewardItem = this.§0b§.§[!2§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§4#d§();
               this.§&f§ = rewardItem.ID;
               this.§15§();
               this.§>!I§[i].removeEventListener(MouseEvent.CLICK,this.§ #^§);
               this.§>!I§[i].visible = false;
               this.§9#P§[i].gotoAndPlay(1);
               this.§9#P§[i].addFrameScript(this.§9#P§[i].totalFrames - 1,function():void
               {
                  §9#P§[i].stop();
                  §>!s§ = true;
               });
               this.§9#P§[i].visible = true;
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            }
            i++;
         }
      }
      
      private function §@Z§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§ #5§.§;"m§();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§3$!§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§3$!§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§3$!§.text = "0h 0min 0s";
            close();
         }
         if(this.§&f§ > -1)
         {
            if(this.§>!s§ && this.§'"R§ && this.§0b§)
            {
               this.§>!J§(this.§'"R§,this.§0b§.§+L§(this.§&f§));
               this.§%6§();
               §'8§.§`"O§();
               this.§4#d§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "INFO":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§ #5§.removeEventListener(§1"9§.§2#!§,this.§@Z§);
         if(this.§[![§)
         {
            this.§[![§.stop();
            this.§[![§ = null;
         }
         super.dispose();
      }
      
      private function §15§() : void
      {
         §+$A§.§@"i§().§^#1§(this.§&f§);
         this.§&![§ = new §'!n§();
         this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&![§.addEventListener(Event.COMPLETE,this.§<^§);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!Q§);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!Q§);
         this.§&![§.addEventListener(§"!;§.§ #x§,this.§=!Q§);
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§&f§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§&![§.load(_loc1_);
      }
      
      private function §<^§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §?$8§.§,!2§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§"$-§));
            this.§[#"§();
            this.§4#d§();
            return;
         }
         this.§'"R§ = _loc2_.items;
         if(this.§0b§)
         {
            this.§0b§.§0!R§(_loc2_.eventInfo.cp);
         }
         this.§[#"§();
      }
      
      private function §=!Q§(param1:Event) : void
      {
         this.§[#"§();
         this.§4#d§();
      }
      
      private function §4#d§() : void
      {
         this.§>!s§ = false;
         this.§&f§ = -1;
         this.§'"R§ = null;
      }
      
      private function §[#"§() : void
      {
         if(this.§&![§)
         {
            this.§&![§.removeEventListener(Event.COMPLETE,this.§<^§);
            this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!Q§);
            this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!Q§);
            this.§&![§.removeEventListener(§"!;§.§ #x§,this.§=!Q§);
            this.§&![§ = null;
         }
      }
      
      private function §>!J§(param1:Array, param2:§0#<§) : void
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
         var rewardItem:§0#<§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§%§.addChild(dimmerSprite);
         §[#%§.playSound("league_promotion_diamond",§[#%§.§0"f§);
         this.§[![§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§%$9§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §2"O§.§`>§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §2"O§.§`>§(ri.i);
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
         claimAnimationFrame.x = this.§]#J§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§]#J§[6].y;
         this.§%§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§6$'§ = §'#n§.§?q§.§9!N§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§6$'§ = §'#n§.§?q§.§9!N§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§[![§ = §'#n§.§?q§.§[#F§(tween1,tween2);
         this.§[![§.onComplete = function():void
         {
            §%§.removeChild(claimAnimationFrame);
            §%§.removeChild(dimmerSprite);
         };
         this.§[![§.play();
         §#$D§.§?q§.§["a§(actualClaimedItems);
         §#$D§.§?q§.§>!'§();
      }
   }
}
