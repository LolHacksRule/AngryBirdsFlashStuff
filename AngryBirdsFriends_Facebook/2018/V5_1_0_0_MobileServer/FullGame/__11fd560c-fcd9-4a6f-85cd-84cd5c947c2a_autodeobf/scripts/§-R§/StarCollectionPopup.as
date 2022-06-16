package §-R§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!#"§.§7Y§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §9#B§.§=!L§;
   import §="h§.§`"O§;
   import §?P§.ErrorPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §[#[§.§[$;§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
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
       
      
      protected var §-#$§:§`"O§;
      
      protected var §8#$§:§2#c§;
      
      private var §0!Q§:MovieClip;
      
      private var §,$!§:TextField;
      
      private var §3Q§:TextField;
      
      private var §"#;§:TextField;
      
      private var §"##§:Vector.<MovieClip>;
      
      private var §<S§:Vector.<MovieClip>;
      
      private var §'#A§:Vector.<MovieClip>;
      
      private var §>v§:§1"V§;
      
      private var §@!@§:§4[§;
      
      private var §<"W§:int = -1;
      
      private var §,"S§:Boolean;
      
      private var §>!A§:Array;
      
      private var §`#]§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §1Q§.§5T§.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§-#$§ = §`"O§.§6!§;
         this.§8#$§ = this.§-#$§.§!!I§() as §2#c§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!Q§ = §,#2§.mClip;
         this.§,$!§ = this.§0!Q§.Stats.Textfield_Tournament as TextField;
         this.§3Q§ = this.§0!Q§.Stats.Textfield_Total as TextField;
         this.§"#;§ = this.§0!Q§.Time.Textfield_TimeLeft as TextField;
         this.§,$!§.text = "";
         this.§3Q§.text = "";
         this.§"#;§.text = "";
         this.§-#$§.addEventListener(§`"O§.§9"v§,this.§<2§);
         this.§3!V§();
      }
      
      private function §3!V§() : void
      {
         this.§"##§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§"##§.push(this.§0!Q§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§<S§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§<S§.push(this.§0!Q§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§'#A§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§'#A§.push(this.§0!Q§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§>#<§();
         this.§`#]§ = §!"p§.§%B§(AngryBirdsBase.§<!f§);
         §!"p§.§2!G§(AngryBirdsBase.§<!f§,this.§`#]§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         §!"p§.§2!G§(AngryBirdsBase.§<!f§,this.§`#]§);
      }
      
      private function §>#<§() : void
      {
         var _loc3_:§[#X§ = null;
         if(!this.§8#$§)
         {
            return;
         }
         this.§,$!§.text = this.§8#$§.§`t§ + "/" + this.§8#$§.§5!S§;
         this.§3Q§.text = this.§8#$§.§-j§ + "/" + this.§8#$§.§!"K§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"##§.length)
         {
            _loc3_ = this.§8#$§.§+!l§(_loc2_);
            this.§"##§[_loc2_].visible = false;
            this.§<S§[_loc2_].visible = false;
            this.§'#A§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§8#$§.§-j§ < _loc3_.starsNeeded)
               {
                  this.§"##§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§"##§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§8#$§.§-j§ + "/" + _loc3_.starsNeeded;
                     this.§"##§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§"##§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§"##§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§"##§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§"##§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§8#$§.§^A§(_loc3_.ID))
               {
                  this.§<S§[_loc2_].visible = true;
                  this.§<S§[_loc2_].addEventListener(MouseEvent.CLICK,this.§97§);
               }
               else
               {
                  this.§'#A§[_loc2_].gotoAndStop(this.§'#A§[_loc2_].totalFrames);
                  this.§'#A§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function §97§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§[#X§ = null;
         var e:MouseEvent = param1;
         if(this.§<"W§ > -1)
         {
            return;
         }
         if(!this.§8#$§)
         {
            return;
         }
         i = 0;
         while(i < this.§<S§.length)
         {
            if(this.§<S§[i] == e.currentTarget)
            {
               rewardItem = this.§8#$§.§+!l§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§'A§();
               this.§<"W§ = rewardItem.ID;
               this.§^b§();
               this.§<S§[i].removeEventListener(MouseEvent.CLICK,this.§97§);
               this.§<S§[i].visible = false;
               this.§'#A§[i].gotoAndPlay(1);
               this.§'#A§[i].addFrameScript(this.§'#A§[i].totalFrames - 1,function():void
               {
                  §'#A§[i].stop();
                  §,"S§ = true;
               });
               this.§'#A§[i].visible = true;
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            }
            i++;
         }
      }
      
      private function §<2§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§-#$§.§[!n§();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§"#;§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§"#;§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§"#;§.text = "0h 0min 0s";
            close();
         }
         if(this.§<"W§ > -1)
         {
            if(this.§,"S§ && this.§>!A§ && this.§8#$§)
            {
               this.§"#]§(this.§>!A§,this.§8#$§.§!1§(this.§<"W§));
               this.§>#<§();
               §=!L§.§4K§();
               this.§'A§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "INFO":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§-#$§.removeEventListener(§`"O§.§9"v§,this.§<2§);
         if(this.§@!@§)
         {
            this.§@!@§.stop();
            this.§@!@§ = null;
         }
         super.dispose();
      }
      
      private function §^b§() : void
      {
         § try§.§!!t§().§;#-§(this.§<"W§);
         this.§>v§ = new §1"V§();
         this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§>v§.addEventListener(Event.COMPLETE,this.§?4§);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§6"S§);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6"S§);
         this.§>v§.addEventListener(§;m§.§!$5§,this.§6"S§);
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§<"W§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§>v§.load(_loc1_);
      }
      
      private function §?4§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §[$;§.§,#P§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[!%§));
            this.§-!2§();
            this.§'A§();
            return;
         }
         this.§>!A§ = _loc2_.items;
         if(this.§8#$§)
         {
            this.§8#$§.§?"^§(_loc2_.eventInfo.cp);
         }
         this.§-!2§();
      }
      
      private function §6"S§(param1:Event) : void
      {
         this.§-!2§();
         this.§'A§();
      }
      
      private function §'A§() : void
      {
         this.§,"S§ = false;
         this.§<"W§ = -1;
         this.§>!A§ = null;
      }
      
      private function §-!2§() : void
      {
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§?4§);
            this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6"S§);
            this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6"S§);
            this.§>v§.removeEventListener(§;m§.§!$5§,this.§6"S§);
            this.§>v§ = null;
         }
      }
      
      private function §"#]§(param1:Array, param2:§[#X§) : void
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
         var rewardItem:§[#X§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§0!Q§.addChild(dimmerSprite);
         §!"p§.playSound("league_promotion_diamond",§!"p§.§^#@§);
         this.§@!@§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§=![§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §!"f§.§##?§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §!"f§.§##?§(ri.i);
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
         claimAnimationFrame.x = this.§"##§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§"##§[6].y;
         this.§0!Q§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§7Y§ = §&"H§.§6!§.§6C§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§7Y§ = §&"H§.§6!§.§6C§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§@!@§ = §&"H§.§6!§.§>##§(tween1,tween2);
         this.§@!@§.onComplete = function():void
         {
            §0!Q§.removeChild(claimAnimationFrame);
            §0!Q§.removeChild(dimmerSprite);
         };
         this.§@!@§.play();
         §-#+§.§6!§.§,"0§(actualClaimedItems);
         §-#+§.§6!§.§<"k§();
      }
   }
}
