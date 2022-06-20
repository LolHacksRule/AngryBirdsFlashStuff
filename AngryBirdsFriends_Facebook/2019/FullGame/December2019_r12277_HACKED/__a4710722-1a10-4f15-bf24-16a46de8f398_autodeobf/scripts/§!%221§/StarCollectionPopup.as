package §!"1§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § null§.§0!N§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§'#S§;
   import §2E§.§]!P§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §>#Y§.§!",§;
   import §[#A§.§&n§;
   import §[#v§.§4e§;
   import §]M§.§=!a§;
   import com.rovio.assets.§=@§;
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
       
      
      protected var §;!X§:§=!a§;
      
      protected var § "R§:§9!X§;
      
      private var §3`§:MovieClip;
      
      private var §4!u§:TextField;
      
      private var §9!2§:TextField;
      
      private var §6#0§:TextField;
      
      private var § !t§:Vector.<MovieClip>;
      
      private var §&!b§:Vector.<MovieClip>;
      
      private var §]!S§:Vector.<MovieClip>;
      
      private var §<#G§:§5"f§;
      
      private var §-!#§:§@#5§;
      
      private var §]!z§:int = -1;
      
      private var §1!`§:Boolean;
      
      private var native:Array;
      
      private var §#"D§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §&n§.§7a§.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§;!X§ = §=!a§.§3"1§;
         this.§ "R§ = this.§;!X§.§>"Q§() as §9!X§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3`§ = §'o§.mClip;
         this.§4!u§ = this.§3`§.Stats.Textfield_Tournament as TextField;
         this.§9!2§ = this.§3`§.Stats.Textfield_Total as TextField;
         this.§6#0§ = this.§3`§.Time.Textfield_TimeLeft as TextField;
         this.§4!u§.text = "";
         this.§9!2§.text = "";
         this.§6#0§.text = "";
         this.§;!X§.addEventListener(§=!a§.§9!e§,this.§ "3§);
         this.§[=§();
      }
      
      private function §[=§() : void
      {
         this.§ !t§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§ !t§.push(this.§3`§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§&!b§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§&!b§.push(this.§3`§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§]!S§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§]!S§.push(this.§3`§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§@$§();
         this.§#"D§ = §4$4§.§4!0§(AngryBirdsBase.§>"u§);
         §4$4§.§!!k§(AngryBirdsBase.§>"u§,this.§#"D§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         §4$4§.§!!k§(AngryBirdsBase.§>"u§,this.§#"D§);
      }
      
      private function §@$§() : void
      {
         var _loc3_:§4#q§ = null;
         if(!this.§ "R§)
         {
            return;
         }
         this.§4!u§.text = this.§ "R§.§"#I§ + "/" + this.§ "R§.§!$§;
         this.§9!2§.text = this.§ "R§.§]!k§ + "/" + this.§ "R§.§%#W§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !t§.length)
         {
            _loc3_ = this.§ "R§.§5!g§(_loc2_);
            this.§ !t§[_loc2_].visible = false;
            this.§&!b§[_loc2_].visible = false;
            this.§]!S§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§ "R§.§]!k§ < _loc3_.starsNeeded)
               {
                  this.§ !t§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§ !t§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§ "R§.§]!k§ + "/" + _loc3_.starsNeeded;
                     this.§ !t§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§ !t§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§ !t§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§ !t§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§ !t§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§ "R§.§]$?§(_loc3_.ID))
               {
                  this.§&!b§[_loc2_].visible = true;
                  this.§&!b§[_loc2_].addEventListener(MouseEvent.CLICK,this.§&]§);
               }
               else
               {
                  this.§]!S§[_loc2_].gotoAndStop(this.§]!S§[_loc2_].totalFrames);
                  this.§]!S§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function §&]§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§4#q§ = null;
         var e:MouseEvent = param1;
         if(this.§]!z§ > -1)
         {
            return;
         }
         if(!this.§ "R§)
         {
            return;
         }
         i = 0;
         while(i < this.§&!b§.length)
         {
            if(this.§&!b§[i] == e.currentTarget)
            {
               rewardItem = this.§ "R§.§5!g§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§%H§();
               this.§]!z§ = rewardItem.ID;
               this.§4&§();
               this.§&!b§[i].removeEventListener(MouseEvent.CLICK,this.§&]§);
               this.§&!b§[i].visible = false;
               this.§]!S§[i].gotoAndPlay(1);
               this.§]!S§[i].addFrameScript(this.§]!S§[i].totalFrames - 1,function():void
               {
                  §]!S§[i].stop();
                  §1!`§ = true;
               });
               this.§]!S§[i].visible = true;
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            }
            i++;
         }
      }
      
      private function § "3§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§;!X§.§"$?§();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§6#0§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§6#0§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§6#0§.text = "0h 0min 0s";
            close();
         }
         if(this.§]!z§ > -1)
         {
            if(this.§1!`§ && this.native && this.§ "R§)
            {
               this.§`!>§(this.native,this.§ "R§.§&#m§(this.§]!z§));
               this.§@$§();
               §4e§.§^H§();
               this.§%H§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "INFO":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§-!S§.INFO,§## §.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§;!X§.removeEventListener(§=!a§.§9!e§,this.§ "3§);
         if(this.§-!#§)
         {
            this.§-!#§.stop();
            this.§-!#§ = null;
         }
         super.dispose();
      }
      
      private function §4&§() : void
      {
         §]!P§.§1!7§().§3!5§(this.§]!z§);
         this.§<#G§ = new §5"f§();
         this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<#G§.addEventListener(Event.COMPLETE,this.§'#e§);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!-§);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!-§);
         this.§<#G§.addEventListener(§;" §.§`S§,this.§[!-§);
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§]!z§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§<#G§.load(_loc1_);
      }
      
      private function §'#e§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §'#S§.§2A§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@w§));
            this.§0!Z§();
            this.§%H§();
            return;
         }
         this.native = _loc2_.items;
         if(this.§ "R§)
         {
            this.§ "R§.§9"g§(_loc2_.eventInfo.cp);
         }
         this.§0!Z§();
      }
      
      private function §[!-§(param1:Event) : void
      {
         this.§0!Z§();
         this.§%H§();
      }
      
      private function §%H§() : void
      {
         this.§1!`§ = false;
         this.§]!z§ = -1;
         this.native = null;
      }
      
      private function §0!Z§() : void
      {
         if(this.§<#G§)
         {
            this.§<#G§.removeEventListener(Event.COMPLETE,this.§'#e§);
            this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!-§);
            this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!-§);
            this.§<#G§.removeEventListener(§;" §.§`S§,this.§[!-§);
            this.§<#G§ = null;
         }
      }
      
      private function §`!>§(param1:Array, param2:§4#q§) : void
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
         var rewardItem:§4#q§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§3`§.addChild(dimmerSprite);
         §4$4§.playSound("league_promotion_diamond",§4$4§.§6!H§);
         this.§-!#§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§["b§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §=@§.§9!x§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §=@§.§9!x§(ri.i);
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
         claimAnimationFrame.x = this.§ !t§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§ !t§[6].y;
         this.§3`§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§0!N§ = §5"<§.§3"1§.§3#§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§0!N§ = §5"<§.§3"1§.§3#§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§-!#§ = §5"<§.§3"1§.§]#6§(tween1,tween2);
         this.§-!#§.onComplete = function():void
         {
            §3`§.removeChild(claimAnimationFrame);
            §3`§.removeChild(dimmerSprite);
         };
         this.§-!#§.play();
         §!",§.§3"1§.§"#t§(actualClaimedItems);
         §!",§.§3"1§.§,"&§();
      }
   }
}
