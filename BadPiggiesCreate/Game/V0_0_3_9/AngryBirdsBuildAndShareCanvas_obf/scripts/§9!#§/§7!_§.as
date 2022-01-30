package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6!&§.§68§;
   import §6p§.§'!B§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §7!_§ extends §<"+§
   {
      
      public static const §8G§:String = "ChapterSelectionState";
      
      private static const §-R§:Number = 0.5;
       
      
      private var §"!j§:Sprite;
      
      private var §6!H§:§>"-§;
      
      private var §[7§:Array;
      
      private var §[!g§:Array;
      
      private var §#!m§:int = 0;
      
      private var §!s§:Number = 0;
      
      private var § !5§:Number = 0;
      
      private var §`!k§:Dictionary;
      
      private var § h§:Dictionary;
      
      private var §-K§:§^!#§ = null;
      
      private var §=!r§:Boolean = false;
      
      private var §8o§:Number = 0;
      
      public function §7!_§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_ChapterSelection[0]);
         this.§#!%§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§68§ = null;
         super.activate();
         §%s§.§`!f§.§6M§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[7§)
         {
            _loc3_ = §1!c§.§?a§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§5!c§.§;!E§(_loc3_) + "/" + AngryBirdsFP11.§5!c§.§8]§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§5!c§.§[l§(_loc3_) + "/" + AngryBirdsFP11.§5!c§.§9"4§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§5!c§.§0J§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §#!%§() : void
      {
         var _loc3_:§68§ = null;
         var _loc4_:String = null;
         this.§6!H§ = §;i§.getItemByName("Container_ChapterSelection") as §>"-§;
         this.§[7§ = [];
         this.§[!g§ = [];
         var _loc1_:Number = 0;
         this.§"!j§ = new Sprite();
         this.§"!j§.y = AngryBirdsFP11.§ "2§ / 2;
         this.§!s§ = AngryBirdsFP11.§`6§ / 2;
         this.§"!j§.x = this.§!s§;
         this.§6!H§.mClip.addChild(this.§"!j§);
         this.§ h§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §1!c§.§7m§())
         {
            _loc3_ = §1!c§.§?a§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§8!y§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§8!y§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§8!y§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§6<§();
      }
      
      private function §6<§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§`!k§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§[7§.length)
         {
            _loc1_ = §8!q§.§2^§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§#!m§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§`6§ / 2 + _loc3_ - this.§[7§.length * _loc2_.width / 2;
            _loc2_.y = (§;i§.getItemByName("Button_Next") as §="5§).y - _loc2_.height / 2;
            this.§6!H§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§`!k§[_loc2_] = _loc4_;
            this.§[!g§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!E§);
            _loc4_++;
         }
         _loc3_ = this.§[7§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§;i§.getItemByName("Button_Next") as §="5§).x = AngryBirdsFP11.§`6§ / 2;
         (§;i§.getItemByName("Button_Prev") as §="5§).x = AngryBirdsFP11.§`6§ / 2;
         (§;i§.getItemByName("Button_Next") as §="5§).x = (§;i§.getItemByName("Button_Next") as §="5§).x + (_loc3_ + 10);
         (§;i§.getItemByName("Button_Prev") as §="5§).x = (§;i§.getItemByName("Button_Prev") as §="5§).x - (_loc3_ + 10);
      }
      
      private function §8!y§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§68§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§8!q§.§@!?§(param1))
         {
            _loc4_ = §1!c§.§?a§(param3);
            (_loc6_ = new (_loc5_ = §8!q§.§2^§(param1))()).x = param2;
            this.§"!j§.addChild(_loc6_);
            this.§[7§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§ h§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§3!!§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§5!c§.§[l§(_loc4_) + "/" + AngryBirdsFP11.§5!c§.§9"4§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§5!c§.§0J§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§5!c§.§;!E§(_loc4_) + "/" + AngryBirdsFP11.§5!c§.§8]§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §?!E§(param1:MouseEvent) : void
      {
         if(!this.§=!r§)
         {
            this.§?-§(this.§`!k§[param1.target]);
         }
      }
      
      private function §3!!§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§=!r§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§#!m§ != this.§ h§[_loc2_])
            {
               this.§?-§(this.§ h§[_loc2_]);
            }
            else if(this.§ h§[_loc2_] < §1!c§.§7m§())
            {
               §1!c§.§+$§ = this.§ h§[_loc2_];
               mNextState = §#B§.§8G§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§2!j§();
         this.§5y§();
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      private function §5y§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[7§.length)
         {
            _loc2_ = this.§"!j§.x + this.§[7§[_loc1_].x - AngryBirdsFP11.§`6§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§[7§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§[7§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§[7§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§[7§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §2!j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!g§.length)
         {
            if(-this.§"!j§.x + 800 >= this.§[7§[_loc1_].x && -this.§8o§ < this.§[7§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!g§.length)
               {
                  this.§[!g§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!g§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§"!j§.x + 800 <= this.§[7§[_loc1_].x && -this.§8o§ > this.§[7§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!g§.length)
               {
                  this.§[!g§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!g§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§8o§ = this.§"!j§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §%s§.§`!f§.clearLevel();
         (§;i§.getItemByName("Button_Back") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "BACK":
               §'!B§.playSound("Menu_Back");
               mNextState = §+e§.§8G§;
               break;
            case "PREV":
               §'!B§.playSound("Menu_Confirm");
               if(!this.§=!r§)
               {
                  --this.§#!m§;
                  this.§?-§(this.§#!m§);
                  break;
               }
               break;
            case "NEXT":
               §'!B§.playSound("Menu_Confirm");
               if(!this.§=!r§)
               {
                  ++this.§#!m§;
                  this.§?-§(this.§#!m§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §'!B§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      private function §?-§(param1:int) : void
      {
         this.§=!r§ = true;
         if(param1 > this.§[7§.length - 1)
         {
            param1 = this.§[7§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#!m§ = param1;
         var _loc2_:Number = -this.§[7§[param1].x + this.§!s§;
         var _loc3_:Number = this.§"!j§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §-R§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§-K§ != null)
         {
            this.§-K§.stop();
         }
         this.§-K§ = §"g§.§'!o§.§while§(this.§"!j§,{"x":_loc2_},null,_loc4_,§"g§.§+!a§);
         this.§-K§.onComplete = this.§#!D§;
         this.§-K§.play();
      }
      
      private function §#!D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!g§.length)
         {
            if(_loc1_ == this.§#!m§)
            {
               this.§[!g§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§[!g§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=!r§ = false;
      }
   }
}
