package §,!"§
{
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §@D§ extends §'!#§
   {
      
      public static const §-A§:String = "ChapterSelectionState";
      
      private static const §3!J§:Number = 0.5;
       
      
      private var §8!6§:Sprite;
      
      private var §+q§:§[Q§;
      
      private var §#c§:Array;
      
      private var §'`§:Array;
      
      private var §=!2§:int = 0;
      
      private var §"<§:Number = 0;
      
      private var §;!G§:Number = 0;
      
      private var §&y§:Dictionary;
      
      private var §"z§:Dictionary;
      
      private var §;;§:§[!9§ = null;
      
      private var §%`§:Boolean = false;
      
      private var §">§:Number = 0;
      
      public function §@D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_ChapterSelection[0]);
         this.§'!-§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§7!K§ = null;
         super.activate();
         §#! §.§`'§.§^!6§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#c§)
         {
            _loc3_ = §`!K§.§5!<§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§`I§.§1R§(_loc3_) + "/" + AngryBirdsFP11.§`I§.§&!%§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`I§.§7!;§(_loc3_) + "/" + AngryBirdsFP11.§`I§.§;!3§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§`I§.§;'§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §'!-§() : void
      {
         var _loc3_:§7!K§ = null;
         var _loc4_:String = null;
         this.§+q§ = §0q§.getItemByName("Container_ChapterSelection") as §[Q§;
         this.§#c§ = [];
         this.§'`§ = [];
         var _loc1_:Number = 0;
         this.§8!6§ = new Sprite();
         this.§8!6§.y = AngryBirdsFP11.§8!4§ / 2;
         this.§"<§ = AngryBirdsFP11.§3!<§ / 2;
         this.§8!6§.x = this.§"<§;
         this.§+q§.mClip.addChild(this.§8!6§);
         this.§"z§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §`!K§.§<u§())
         {
            _loc3_ = §`!K§.§5!<§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§8!M§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§8!M§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§8!M§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§"§();
      }
      
      private function §"§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§&y§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#c§.length)
         {
            _loc1_ = §[!D§.§8!N§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§=!2§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§3!<§ / 2 + _loc3_ - this.§#c§.length * _loc2_.width / 2;
            _loc2_.y = (§0q§.getItemByName("Button_Next") as §^'§).y - _loc2_.height / 2;
            this.§+q§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§&y§[_loc2_] = _loc4_;
            this.§'`§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4s§);
            _loc4_++;
         }
         _loc3_ = this.§#c§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§0q§.getItemByName("Button_Next") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
         (§0q§.getItemByName("Button_Prev") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
         (§0q§.getItemByName("Button_Next") as §^'§).x = (§0q§.getItemByName("Button_Next") as §^'§).x + (_loc3_ + 10);
         (§0q§.getItemByName("Button_Prev") as §^'§).x = (§0q§.getItemByName("Button_Prev") as §^'§).x - (_loc3_ + 10);
      }
      
      private function §8!M§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§7!K§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§[!D§.§@1§(param1))
         {
            _loc4_ = §`!K§.§5!<§(param3);
            (_loc6_ = new (_loc5_ = §[!D§.§8!N§(param1))()).x = param2;
            this.§8!6§.addChild(_loc6_);
            this.§#c§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§"z§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§%!$§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`I§.§7!;§(_loc4_) + "/" + AngryBirdsFP11.§`I§.§;!3§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§`I§.§;'§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§`I§.§1R§(_loc4_) + "/" + AngryBirdsFP11.§`I§.§&!%§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §4s§(param1:MouseEvent) : void
      {
         if(!this.§%`§)
         {
            this.§?y§(this.§&y§[param1.target]);
         }
      }
      
      private function §%!$§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§%`§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§=!2§ != this.§"z§[_loc2_])
            {
               this.§?y§(this.§"z§[_loc2_]);
            }
            else if(this.§"z§[_loc2_] < §`!K§.§<u§())
            {
               §`!K§.§%;§ = this.§"z§[_loc2_];
               mNextState = §0!5§.§-A§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-S§();
         this.§7!P§();
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      private function §7!P§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#c§.length)
         {
            _loc2_ = this.§8!6§.x + this.§#c§[_loc1_].x - AngryBirdsFP11.§3!<§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§#c§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§#c§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§#c§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§#c§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §-S§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'`§.length)
         {
            if(-this.§8!6§.x + 800 >= this.§#c§[_loc1_].x && -this.§">§ < this.§#c§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'`§.length)
               {
                  this.§'`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'`§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§8!6§.x + 800 <= this.§#c§[_loc1_].x && -this.§">§ > this.§#c§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'`§.length)
               {
                  this.§'`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'`§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§">§ = this.§8!6§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#! §.§`'§.clearLevel();
         (§0q§.getItemByName("Button_Back") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "BACK":
               §[!7§.playSound("Menu_Back");
               mNextState = §8j§.§-A§;
               break;
            case "PREV":
               §[!7§.playSound("Menu_Confirm");
               if(!this.§%`§)
               {
                  --this.§=!2§;
                  this.§?y§(this.§=!2§);
               }
               break;
            case "NEXT":
               §[!7§.playSound("Menu_Confirm");
               if(!this.§%`§)
               {
                  ++this.§=!2§;
                  this.§?y§(this.§=!2§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §[!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      private function §?y§(param1:int) : void
      {
         this.§%`§ = true;
         if(param1 > this.§#c§.length - 1)
         {
            param1 = this.§#c§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=!2§ = param1;
         var _loc2_:Number = -this.§#c§[param1].x + this.§"<§;
         var _loc3_:Number = this.§8!6§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §3!J§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§;;§ != null)
         {
            this.§;;§.stop();
         }
         this.§;;§ = §3C§.§>o§.§<t§(this.§8!6§,{"x":_loc2_},null,_loc4_,§3C§.§,k§);
         this.§;;§.onComplete = this.§<Z§;
         this.§;;§.play();
      }
      
      private function §<Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'`§.length)
         {
            if(_loc1_ == this.§=!2§)
            {
               this.§'`§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§'`§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%`§ = false;
      }
   }
}
