package §8" §
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import §&"J§.§4"W§;
   import §1#W§.§!#&§;
   import §6V§.§?!=§;
   import §8"X§.§^!E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §8Z§.§`!s§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §^#]§.§;!&§;
   import com.rovio.assets.§+$#§;
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
       
      
      protected var §@!y§:§ "a§;
      
      protected var §>$'§:§]#&§;
      
      private var §>"g§:MovieClip;
      
      private var §,"y§:TextField;
      
      private var §1"t§:TextField;
      
      private var §0#t§:TextField;
      
      private var §&#x§:Vector.<MovieClip>;
      
      private var §>#2§:Vector.<MovieClip>;
      
      private var §=""§:Vector.<MovieClip>;
      
      private var §+"§:§4"v§;
      
      private var §+#c§:§-#C§;
      
      private var §""T§:int = -1;
      
      private var §!"X§:Boolean;
      
      private var §`!g§:Array;
      
      private var §#!1§:Number;
      
      public function StarCollectionPopup(param1:int, param2:int)
      {
         var _loc3_:XML = §=>§.§%" §.Views.PopupView_StartCollector[0];
         super(param1,param2,_loc3_,ID);
         this.§@!y§ = § "a§.§ "D§;
         this.§>$'§ = this.§@!y§.§^W§() as §]#&§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>"g§ = §1"6§.mClip;
         this.§,"y§ = this.§>"g§.Stats.Textfield_Tournament as TextField;
         this.§1"t§ = this.§>"g§.Stats.Textfield_Total as TextField;
         this.§0#t§ = this.§>"g§.Time.Textfield_TimeLeft as TextField;
         this.§,"y§.text = "";
         this.§1"t§.text = "";
         this.§0#t§.text = "";
         this.§@!y§.addEventListener(§ "a§.§<$1§,this.§"!;§);
         this.§^#1§();
      }
      
      private function §^#1§() : void
      {
         this.§&#x§ = new Vector.<MovieClip>();
         var _loc1_:int = 1;
         while(_loc1_ <= 8)
         {
            this.§&#x§.push(this.§>"g§["SC_ChestLocked" + _loc1_]);
            _loc1_++;
         }
         this.§>#2§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§>#2§.push(this.§>"g§["SC_ChestClaimable" + _loc1_]);
            _loc1_++;
         }
         this.§=""§ = new Vector.<MovieClip>();
         _loc1_ = 1;
         while(_loc1_ <= 8)
         {
            this.§=""§.push(this.§>"g§["SC_ChestClaim" + _loc1_]);
            _loc1_++;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§5a§();
         this.§#!1§ = §!#&§.§5"X§(AngryBirdsBase.§2#a§);
         §!#&§.§%$6§(AngryBirdsBase.§2#a§,this.§#!1§ / 3);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         §!#&§.§%$6§(AngryBirdsBase.§2#a§,this.§#!1§);
      }
      
      private function §5a§() : void
      {
         var _loc3_:§<"e§ = null;
         if(!this.§>$'§)
         {
            return;
         }
         this.§,"y§.text = this.§>$'§.§=#R§ + "/" + this.§>$'§.§-#s§;
         this.§1"t§.text = this.§>$'§.§!#H§ + "/" + this.§>$'§.§<#2§;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&#x§.length)
         {
            _loc3_ = this.§>$'§.§6!L§(_loc2_);
            this.§&#x§[_loc2_].visible = false;
            this.§>#2§[_loc2_].visible = false;
            this.§=""§[_loc2_].visible = false;
            if(_loc3_)
            {
               if(this.§>$'§.§!#H§ < _loc3_.starsNeeded)
               {
                  this.§&#x§[_loc2_].visible = true;
                  if(!_loc1_)
                  {
                     (this.§&#x§[_loc2_].getChildByName("TextField_Value") as TextField).text = this.§>$'§.§!#H§ + "/" + _loc3_.starsNeeded;
                     this.§&#x§[_loc2_].getChildByName("bgNormal").visible = false;
                     this.§&#x§[_loc2_].getChildByName("bgActive").visible = true;
                     _loc1_ = true;
                  }
                  else
                  {
                     (this.§&#x§[_loc2_].getChildByName("TextField_Value") as TextField).text = "Locked";
                     this.§&#x§[_loc2_].getChildByName("bgNormal").visible = true;
                     this.§&#x§[_loc2_].getChildByName("bgActive").visible = false;
                  }
               }
               else if(this.§>$'§.§5$,§(_loc3_.ID))
               {
                  this.§>#2§[_loc2_].visible = true;
                  this.§>#2§[_loc2_].addEventListener(MouseEvent.CLICK,this.§;#t§);
               }
               else
               {
                  this.§=""§[_loc2_].gotoAndStop(this.§=""§[_loc2_].totalFrames);
                  this.§=""§[_loc2_].visible = true;
               }
            }
            _loc2_++;
         }
      }
      
      private function §;#t§(param1:MouseEvent) : void
      {
         var i:int = 0;
         var rewardItem:§<"e§ = null;
         var e:MouseEvent = param1;
         if(this.§""T§ > -1)
         {
            return;
         }
         if(!this.§>$'§)
         {
            return;
         }
         i = 0;
         while(i < this.§>#2§.length)
         {
            if(this.§>#2§[i] == e.currentTarget)
            {
               rewardItem = this.§>$'§.§6!L§(i);
               if(!rewardItem)
               {
                  break;
               }
               this.§8!]§();
               this.§""T§ = rewardItem.ID;
               this.§+!^§();
               this.§>#2§[i].removeEventListener(MouseEvent.CLICK,this.§;#t§);
               this.§>#2§[i].visible = false;
               this.§=""§[i].gotoAndPlay(1);
               this.§=""§[i].addFrameScript(this.§=""§[i].totalFrames - 1,function():void
               {
                  §=""§[i].stop();
                  §!"X§ = true;
               });
               this.§=""§[i].visible = true;
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               break;
            }
            i++;
         }
      }
      
      private function §"!;§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.§@!y§.§-#H§();
         if(_loc2_ > 0)
         {
            _loc3_ = Math.floor(_loc2_ / 3600);
            if(_loc3_ >= 48)
            {
               _loc4_ = Math.floor(_loc2_ / 86400);
               this.§0#t§.text = _loc4_ + " days";
            }
            else
            {
               _loc2_ -= _loc3_ * 3600;
               _loc5_ = Math.floor(_loc2_ / 60);
               _loc2_ -= _loc5_ * 60;
               _loc6_ = Math.floor(_loc2_);
               this.§0#t§.text = _loc3_ + "h " + _loc5_ + "min " + _loc6_ + "s";
            }
         }
         else
         {
            this.§0#t§.text = "0h 0min 0s";
            close();
         }
         if(this.§""T§ > -1)
         {
            if(this.§!"X§ && this.§`!g§ && this.§>$'§)
            {
               this.§-![§(this.§`!g§,this.§>$'§.§0#k§(this.§""T§));
               this.§5a§();
               §^!E§.§@#t§();
               this.§8!]§();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "INFO":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.popupManager.openPopup(new StarCollectorInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§@!y§.removeEventListener(§ "a§.§<$1§,this.§"!;§);
         if(this.§+#c§)
         {
            this.§+#c§.stop();
            this.§+#c§ = null;
         }
         super.dispose();
      }
      
      private function §+!^§() : void
      {
         §?!=§.§3!q§().§[#6§(this.§""T§);
         this.§+"§ = new §4"v§();
         this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§+"§.addEventListener(Event.COMPLETE,this.§+"z§);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!<§);
         this.§+"§.addEventListener(§]e§.§5!;§,this.§?!<§);
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/event/claimRewards?id=" + this.§""T§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§+"§.load(_loc1_);
      }
      
      private function §+"z§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         if(_loc2_.errorCode == §;!&§.§=!_§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§%"!§.ERROR,§^#o§.§#!K§,ErrorPopup.§ "S§));
            this.§?# §();
            this.§8!]§();
            return;
         }
         this.§`!g§ = _loc2_.items;
         if(this.§>$'§)
         {
            this.§>$'§.§="7§(_loc2_.eventInfo.cp);
         }
         this.§?# §();
      }
      
      private function §?!<§(param1:Event) : void
      {
         this.§?# §();
         this.§8!]§();
      }
      
      private function §8!]§() : void
      {
         this.§!"X§ = false;
         this.§""T§ = -1;
         this.§`!g§ = null;
      }
      
      private function §?# §() : void
      {
         if(this.§+"§)
         {
            this.§+"§.removeEventListener(Event.COMPLETE,this.§+"z§);
            this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
            this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!<§);
            this.§+"§.removeEventListener(§]e§.§5!;§,this.§?!<§);
            this.§+"§ = null;
         }
      }
      
      private function §-![§(param1:Array, param2:§<"e§) : void
      {
         var dimmerSprite:Sprite = null;
         var claimAnimationFrame:MovieClip = null;
         var ri:Object = null;
         var mc:MovieClip = null;
         var GlowRotatorClass:Class = null;
         var rotatorDsp:DisplayObject = null;
         var cls:Class = null;
         var dsp:DisplayObjectContainer = null;
         var rewardCountClass:Class = null;
         var rewardCountDsp:DisplayObjectContainer = null;
         var countTF:TextField = null;
         var i:int = 0;
         var actualClaimedItems:Array = param1;
         var rewardItem:§<"e§ = param2;
         dimmerSprite = new Sprite();
         dimmerSprite.graphics.beginFill(0);
         dimmerSprite.graphics.drawRect(-AngryBirdsBase.stageWidth,-AngryBirdsBase.stageHeight,AngryBirdsBase.stageWidth * 3,AngryBirdsBase.stageHeight * 3);
         dimmerSprite.graphics.endFill();
         dimmerSprite.alpha = 0.5;
         this.§>"g§.addChild(dimmerSprite);
         §!#&§.playSound("league_promotion_diamond",§!#&§.§>#c§);
         this.§+#c§ = null;
         claimAnimationFrame = new MovieClip();
         var itemX:int = 0;
         var itemsWidth:Number = 0;
         for each(ri in rewardItem.§+r§)
         {
            mc = new MovieClip();
            mc.name = ri.i;
            GlowRotatorClass = §+$#§.§["`§("Shine_Reward");
            rotatorDsp = new GlowRotatorClass();
            rotatorDsp.scaleY = 0.5;
            rotatorDsp.scaleX = 0.5;
            rotatorDsp.x = 0;
            rotatorDsp.y = 0;
            mc.addChild(rotatorDsp);
            cls = §+$#§.§["`§(ri.i);
            dsp = new cls();
            dsp.x = 0;
            dsp.y = 0;
            mc.addChild(dsp);
            rewardCountClass = §+$#§.§["`§("SpinningWheelRewardCount");
            rewardCountDsp = new rewardCountClass();
            rewardCountDsp.x = -5;
            if(ri.q > 99)
            {
               rewardCountDsp.x -= 10;
            }
            else if(ri.q > 9)
            {
               rewardCountDsp.x -= 5;
            }
            rewardCountDsp.y = 40;
            countTF = TextField(rewardCountDsp.getChildByName("count"));
            countTF.text = "x" + ri.q;
            mc.addChild(rewardCountDsp);
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
         claimAnimationFrame.x = this.§&#x§[6].x - claimAnimationFrame.width / 3;
         claimAnimationFrame.y = this.§&#x§[6].y;
         this.§>"g§.addChild(claimAnimationFrame);
         var maxScale:Number = 3;
         var tween1:§`!s§ = §6"w§.§ "D§.§""3§(claimAnimationFrame,{
            "scaleX":maxScale,
            "scaleY":maxScale
         },{
            "scaleX":0,
            "scaleY":0
         },0.5,Back.easeOut,1.5);
         var tween2:§`!s§ = §6"w§.§ "D§.§""3§(claimAnimationFrame,{
            "scaleX":0,
            "scaleY":0
         },{
            "scaleX":maxScale,
            "scaleY":maxScale
         },0.5,Back.easeIn);
         this.§+#c§ = §6"w§.§ "D§.§=!b§(tween1,tween2);
         this.§+#c§.onComplete = function():void
         {
            §>"g§.removeChild(claimAnimationFrame);
            §>"g§.removeChild(dimmerSprite);
         };
         this.§+#c§.play();
         §4"W§.§ "D§.§+#<§(actualClaimedItems);
         §4"W§.§ "D§.§@!z§();
      }
   }
}
