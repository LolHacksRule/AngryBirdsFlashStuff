package §?'§
{
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;f§.§9y§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import §in§.§%K§;
   import §in§.§9c§;
   
   public class §1w§ extends §,!6§
   {
      
      public static const §`%§:String = "ChapterSelectionState";
      
      private static const §>!B§:Number = 0.5;
       
      
      private var §>?§:Sprite;
      
      private var §[!1§:§,1§;
      
      private var §1x§:Array;
      
      private var §=;§:Array;
      
      private var §7z§:int = 0;
      
      private var §<!?§:Number = 0;
      
      private var §&M§:Number = 0;
      
      private var §=5§:Dictionary;
      
      private var §1_§:Dictionary;
      
      private var §3g§:§]G§ = null;
      
      private var §6W§:Boolean = false;
      
      private var § !7§:Number = 0;
      
      public function §1w§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_ChapterSelection[0]);
         this.§3§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§9y§ = null;
         super.activate();
         §8[§.§import§.§5q§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1x§)
         {
            _loc3_ = §&#§.§0+§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§[l§.§+;§(_loc3_) + "/" + AngryBirdsFP11.§[l§.§5;§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§[l§.§;Y§(_loc3_) + "/" + AngryBirdsFP11.§[l§.§`!4§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§[l§.§^!-§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §3§() : void
      {
         var _loc3_:§9y§ = null;
         var _loc4_:String = null;
         this.§[!1§ = §<o§.getItemByName("Container_ChapterSelection") as §,1§;
         this.§1x§ = [];
         this.§=;§ = [];
         var _loc1_:Number = 0;
         this.§>?§ = new Sprite();
         this.§>?§.y = AngryBirdsFP11.screenHeight / 2;
         this.§<!?§ = AngryBirdsFP11.screenWidth / 2;
         this.§>?§.x = this.§<!?§;
         this.§[!1§.mClip.addChild(this.§>?§);
         this.§1_§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §&#§.§5[§())
         {
            _loc3_ = §&#§.§0+§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§2z§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§2z§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§2z§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§#<§();
      }
      
      private function §#<§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§=5§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§1x§.length)
         {
            _loc1_ = §-!1§.§-T§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§7z§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§1x§.length * _loc2_.width / 2;
            _loc2_.y = (§<o§.getItemByName("Button_Next") as §%X§).y - _loc2_.height / 2;
            this.§[!1§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§=5§[_loc2_] = _loc4_;
            this.§=;§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!'§);
            _loc4_++;
         }
         _loc3_ = this.§1x§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§<o§.getItemByName("Button_Next") as §%X§).x = AngryBirdsFP11.screenWidth / 2;
         (§<o§.getItemByName("Button_Prev") as §%X§).x = AngryBirdsFP11.screenWidth / 2;
         (§<o§.getItemByName("Button_Next") as §%X§).x = (§<o§.getItemByName("Button_Next") as §%X§).x + (_loc3_ + 10);
         (§<o§.getItemByName("Button_Prev") as §%X§).x = (§<o§.getItemByName("Button_Prev") as §%X§).x - (_loc3_ + 10);
      }
      
      private function §2z§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§9y§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§-!1§.§]!F§(param1))
         {
            _loc4_ = §&#§.§0+§(param3);
            (_loc6_ = new (_loc5_ = §-!1§.§-T§(param1))()).x = param2;
            this.§>?§.addChild(_loc6_);
            this.§1x§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§1_§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§'n§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§[l§.§;Y§(_loc4_) + "/" + AngryBirdsFP11.§[l§.§`!4§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§[l§.§^!-§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§[l§.§+;§(_loc4_) + "/" + AngryBirdsFP11.§[l§.§5;§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §-!'§(param1:MouseEvent) : void
      {
         if(!this.§6W§)
         {
            this.§#M§(this.§=5§[param1.target]);
         }
      }
      
      private function §'n§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§6W§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§7z§ != this.§1_§[_loc2_])
            {
               this.§#M§(this.§1_§[_loc2_]);
            }
            else if(this.§1_§[_loc2_] < §&#§.§5[§())
            {
               §&#§.§3!@§ = this.§1_§[_loc2_];
               mNextState = §8m§.§`%§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§>j§();
         this.§`q§();
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      private function §`q§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1x§.length)
         {
            _loc2_ = this.§>?§.x + this.§1x§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§1x§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§1x§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§1x§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§1x§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §>j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=;§.length)
         {
            if(-this.§>?§.x + 800 >= this.§1x§[_loc1_].x && -this.§ !7§ < this.§1x§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=;§.length)
               {
                  this.§=;§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=;§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>?§.x + 800 <= this.§1x§[_loc1_].x && -this.§ !7§ > this.§1x§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=;§.length)
               {
                  this.§=;§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=;§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§ !7§ = this.§>?§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8[§.§import§.clearLevel();
         (§<o§.getItemByName("Button_Back") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "BACK":
               §2;§.playSound("Menu_Back");
               mNextState = § 1§.§`%§;
               break;
            case "PREV":
               §2;§.playSound("Menu_Confirm");
               if(!this.§6W§)
               {
                  --this.§7z§;
                  this.§#M§(this.§7z§);
                  break;
               }
               break;
            case "NEXT":
               §2;§.playSound("Menu_Confirm");
               if(!this.§6W§)
               {
                  ++this.§7z§;
                  this.§#M§(this.§7z§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §2;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      private function §#M§(param1:int) : void
      {
         this.§6W§ = true;
         if(param1 > this.§1x§.length - 1)
         {
            param1 = this.§1x§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§7z§ = param1;
         var _loc2_:Number = -this.§1x§[param1].x + this.§<!?§;
         var _loc3_:Number = this.§>?§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §>!B§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§3g§ != null)
         {
            this.§3g§.stop();
         }
         this.§3g§ = §!j§.§5!B§.§+I§(this.§>?§,{"x":_loc2_},null,_loc4_,§!j§.§?!F§);
         this.§3g§.onComplete = this.§"T§;
         this.§3g§.play();
      }
      
      private function §"T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=;§.length)
         {
            if(_loc1_ == this.§7z§)
            {
               this.§=;§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§=;§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§6W§ = false;
      }
   }
}
