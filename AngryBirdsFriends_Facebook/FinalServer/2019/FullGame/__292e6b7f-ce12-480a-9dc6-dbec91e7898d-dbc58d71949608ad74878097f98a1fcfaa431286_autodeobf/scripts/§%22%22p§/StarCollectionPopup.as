package §""p§
{
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §!!L§.§ !8§;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §'"b§.§ #F§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import §;"5§.§@$-§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §^"3§.§`$4§;
   import §`"t§.§><§;
   import com.rovio.assets.§[a§;
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
       
      
      protected var §]"t§:§ #F§;
      
      protected var §?!_§:§6"Z§;
      
      private var §8#M§:MovieClip;
      
      private var §@">§:TextField;
      
      private var §?#t§:TextField;
      
      private var §-U§:TextField;
      
      private var §@"4§:Vector.<MovieClip>;
      
      private var §7#5§:Vector.<MovieClip>;
      
      private var § B§:Vector.<MovieClip>;
      
      private var §@$2§:§-$C§;
      
      private var §%#$§:§@$-§;
      
      private var §7"k§:int = -1;
      
      private var §6"U§:Boolean;
      
      private var §!$2§:Array;
      
      private var §@!F§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §false§.§4#;§.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§]"t§ = § #F§.§+!,§;
         this.§?!_§ = this.§]"t§.§4#P§() as §6"Z§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8#M§ = §;#'§.mClip;
         this.§@">§ = this.§8#M§.Stats.Textfield_Tournament as TextField;
         this.§?#t§ = this.§8#M§.Stats.Textfield_Total as TextField;
         this.§-U§ = this.§8#M§.Time.Textfield_TimeLeft as TextField;
         this.§@">§.text = "";
         this.§?#t§.text = "";
         this.§-U§.text = "";
         this.§]"t§.addEventListener(§ #F§.§3i§,this.§7!3§);
         this.§9"U§();
      }
      
      private function §9"U§() : void
      {
         this.§@"4§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§@"4§.push(this.§8#M§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§7#5§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§7#5§.push(this.§8#M§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§ B§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§ B§.push(this.§8#M§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§8#y§();
         this.§@!F§ = § b§.§^!,§(AngryBirdsBase.§6#f§);
         § b§.§;k§(AngryBirdsBase.§6#f§,this.§@!F§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         § b§.§;k§(AngryBirdsBase.§6#f§,this.§@!F§);
      }
      
      private function §8#y§() : void
      {
         var _loc3_:§!Q§ = null;
         if(!this.§?!_§)
         {
            return;
         }
         this.§@">§.text = this.§?!_§.§8!P§ + "/" + this.§?!_§.§-#y§;
         this.§?#t§.text = this.§?!_§.§0"S§ + "/" + this.§?!_§.§6#8§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@"4§.length)
         {
            _loc3_ = this.§?!_§.§2#4§(_loc2_);
            this.§@"4§[_loc2_].visible = false;
            this.§7#5§[_loc2_].visible = false;
            this.§ B§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§?!_§.§0"S§ < _loc3_.starsNeeded)
               {
                  this.§@"4§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§@"4§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§?!_§.§0"S§ + "/" + _loc3_.starsNeeded;
                     this.§@"4§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§@"4§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§@"4§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§@"4§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§@"4§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§?!_§.§-#M§(_loc3_.ID))
               {
                  this.§7#5§[_loc2_].visible = true;
                  this.§7#5§[_loc2_].addEventListener(MouseEvent.CLICK,this.§&!4§);
               }
               else
               {
                  this.§ B§[_loc2_].gotoAndStop(this.§ B§[_loc2_].totalFrames);
                  this.§ B§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function §&!4§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§!Q§ = null;
         var e:MouseEvent = param1;
         if(this.§7"k§ > -1)
         {
            return;
         }
         if(!this.§?!_§)
         {
            return;
         }
         i = 0;
         while(i < this.§7#5§.length)
         {
            if(this.§7#5§[i] == e.currentTarget)
            {
               rewardItem = this.§?!_§.§2#4§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§]b§();
               this.§7"k§ = rewardItem.ID;
               this.§=!W§();
               this.§7#5§[i].removeEventListener(MouseEvent.CLICK,this.§&!4§);
               this.§7#5§[i].visible = false;
               this.§ B§[i].gotoAndPlay(1);
               this.§ B§[i].addFrameScript(this.§ B§[i].totalFrames - 1,function():void
               {
                  § B§[i].stop();
                  §6"U§ = true;
               });
               this.§ B§[i].visible = true;
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               break;
            }
            i++;
         }
      }
      
      private function §7!3§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§]"t§.§'7§();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§-U§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§-U§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§-U§.text = "0h 0min 0s";
            close();
         }
         if(this.§7"k§ > -1)
         {
            if(this.§6"U§ && this.§!$2§ && this.§?!_§)
            {
               this.§4"u§(this.§!$2§,this.§?!_§.§%#g§(this.§7"k§));
               this.§8#y§();
               § !8§.§>#_§();
               this.§]b§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "INFO":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§]"t§.removeEventListener(§ #F§.§3i§,this.§7!3§);
         if(this.§%#$§)
         {
            this.§%#$§.stop();
            this.§%#$§ = null;
         }
         super.dispose();
      }
      
      private function §=!W§() : void
      {
         §3";§.§#"'§().§?!0§(this.§7"k§);
         this.§@$2§ = new §-$C§();
         this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§@$2§.addEventListener(Event.COMPLETE,this.§4#5§);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!N§);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!N§);
         this.§@$2§.addEventListener(§+!p§.§2$9§,this.§5!N§);
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§7"k§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§@$2§.load(_loc1_);
      }
      
      private function §4#5§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §><§.§>#$§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§"e§));
            this.§!"0§();
            this.§]b§();
            return;
         }
         this.§!$2§ = _loc2_.items;
         if(this.§?!_§)
         {
            this.§?!_§.§"#d§(_loc2_.eventInfo.cp);
         }
         this.§!"0§();
      }
      
      private function §5!N§(param1:Event) : void
      {
         this.§!"0§();
         this.§]b§();
      }
      
      private function §]b§() : void
      {
         this.§6"U§ = false;
         this.§7"k§ = -1;
         this.§!$2§ = null;
      }
      
      private function §!"0§() : void
      {
         if(this.§@$2§)
         {
            this.§@$2§.removeEventListener(Event.COMPLETE,this.§4#5§);
            this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!N§);
            this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!N§);
            this.§@$2§.removeEventListener(§+!p§.§2$9§,this.§5!N§);
            this.§@$2§ = null;
         }
      }
      
      private function §4"u§(param1:Array, param2:§!Q§) : void
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
         var rewardItem:§!Q§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§8#M§.addChild(dimmerSprite);
         § b§.playSound("league_promotion_diamond",§ b§.§1#-§);
         this.§%#$§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§4Y§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §[a§.§8#k§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §[a§.§8#k§(ri.i);
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
         claimAnimationFrame.x = this.§@"4§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§@"4§[6].y;
         this.§8#M§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§@"§ = §6"W§.§+!,§.§9!n§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§@"§ = §6"W§.§+!,§.§9!n§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§%#$§ = §6"W§.§+!,§.§9S§(tween1,tween2);
         this.§%#$§.onComplete = function():void
         {
            §8#M§.removeChild(claimAnimationFrame);
            §8#M§.removeChild(dimmerSprite);
         };
         this.§%#$§.play();
         §]#0§.§+!,§.§&$@§(actualClaimedItems);
         §]#0§.§+!,§.§@!z§();
      }
   }
}
