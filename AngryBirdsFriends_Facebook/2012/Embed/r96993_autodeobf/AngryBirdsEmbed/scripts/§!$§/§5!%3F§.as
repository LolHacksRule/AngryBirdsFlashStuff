package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §-!'§.§;f§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §-!C§.§=W§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §5!?§ extends §3!'§
   {
      
      public static const §9"§:String = "ChapterSelectionState";
      
      private static const §&!4§:Number = 0.5;
       
      
      private var §0P§:Sprite;
      
      private var §+!8§:§in §;
      
      private var §^%§:Array;
      
      private var §9s§:Array;
      
      private var §=!8§:int = 0;
      
      private var §<l§:Number = 0;
      
      private var §4-§:Number = 0;
      
      private var §<!9§:Dictionary;
      
      private var §`v§:Dictionary;
      
      private var §`p§:§`!-§ = null;
      
      private var § !2§:Boolean = false;
      
      private var §?!B§:Number = 0;
      
      public function §5!?§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_ChapterSelection[0]);
         this.§1F§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=W§ = null;
         super.activate();
         §]3§.§;v§.§@!A§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^%§)
         {
            _loc3_ = §#!G§.§^<§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§96§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§8=§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§7X§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§ 7§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7=§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §1F§() : void
      {
         var _loc3_:§=W§ = null;
         var _loc4_:String = null;
         this.§+!8§ = §+!2§.getItemByName("Container_ChapterSelection") as §in §;
         this.§^%§ = [];
         this.§9s§ = [];
         var _loc1_:Number = 0;
         this.§0P§ = new Sprite();
         this.§0P§.y = AngryBirdsFP11.screenHeight / 2;
         this.§<l§ = AngryBirdsFP11.screenWidth / 2;
         this.§0P§.x = this.§<l§;
         this.§+!8§.mClip.addChild(this.§0P§);
         this.§`v§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §#!G§.§^!?§())
         {
            _loc3_ = §#!G§.§^<§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§-!B§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§-!B§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§-!B§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§4>§();
      }
      
      private function §4>§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§<!9§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§^%§.length)
         {
            _loc1_ = §''§.§-C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§=!8§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§^%§.length * _loc2_.width / 2;
            _loc2_.y = (§+!2§.getItemByName("Button_Next") as §;f§).y - _loc2_.height / 2;
            this.§+!8§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§<!9§[_loc2_] = _loc4_;
            this.§9s§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§'R§);
            _loc4_++;
         }
         _loc3_ = this.§^%§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!2§.getItemByName("Button_Next") as §;f§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!2§.getItemByName("Button_Prev") as §;f§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!2§.getItemByName("Button_Next") as §;f§).x = (§+!2§.getItemByName("Button_Next") as §;f§).x + (_loc3_ + 10);
         (§+!2§.getItemByName("Button_Prev") as §;f§).x = (§+!2§.getItemByName("Button_Prev") as §;f§).x - (_loc3_ + 10);
      }
      
      private function §-!B§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=W§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§''§.§^!D§(param1))
         {
            _loc4_ = §#!G§.§^<§(param3);
            (_loc6_ = new (_loc5_ = §''§.§-C§(param1))()).x = param2;
            this.§0P§.addChild(_loc6_);
            this.§^%§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§`v§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§-b§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§7X§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§ 7§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7=§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§96§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§8=§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §'R§(param1:MouseEvent) : void
      {
         if(!this.§ !2§)
         {
            this.§;G§(this.§<!9§[param1.target]);
         }
      }
      
      private function §-b§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§ !2§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§=!8§ != this.§`v§[_loc2_])
            {
               this.§;G§(this.§`v§[_loc2_]);
            }
            else if(this.§`v§[_loc2_] < §#!G§.§^!?§())
            {
               §#!G§.§7!?§ = this.§`v§[_loc2_];
               mNextState = §#u§.§9"§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,w§();
         this.§@!8§();
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      private function §@!8§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^%§.length)
         {
            _loc2_ = this.§0P§.x + this.§^%§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§^%§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§^%§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§^%§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§^%§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §,w§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9s§.length)
         {
            if(-this.§0P§.x + 800 >= this.§^%§[_loc1_].x && -this.§?!B§ < this.§^%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9s§.length)
               {
                  this.§9s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9s§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§0P§.x + 800 <= this.§^%§[_loc1_].x && -this.§?!B§ > this.§^%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9s§.length)
               {
                  this.§9s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9s§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§?!B§ = this.§0P§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §]3§.§;v§.clearLevel();
         (§+!2§.getItemByName("Button_Back") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "BACK":
               §^]§.§1g§("Menu_Back");
               mNextState = § &§.§9"§;
               break;
            case "PREV":
               §^]§.§1g§("Menu_Confirm");
               if(!this.§ !2§)
               {
                  --this.§=!8§;
                  this.§;G§(this.§=!8§);
                  break;
               }
               break;
            case "NEXT":
               §^]§.§1g§("Menu_Confirm");
               if(!this.§ !2§)
               {
                  ++this.§=!8§;
                  this.§;G§(this.§=!8§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §^]§.§1g§("Menu_Confirm");
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      private function §;G§(param1:int) : void
      {
         this.§ !2§ = true;
         if(param1 > this.§^%§.length - 1)
         {
            param1 = this.§^%§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=!8§ = param1;
         var _loc2_:Number = -this.§^%§[param1].x + this.§<l§;
         var _loc3_:Number = this.§0P§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §&!4§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§`p§ != null)
         {
            this.§`p§.stop();
         }
         this.§`p§ = §;q§.§9r§.§%!#§(this.§0P§,{"x":_loc2_},null,_loc4_,§;q§.§-'§);
         this.§`p§.onComplete = this.§-3§;
         this.§`p§.play();
      }
      
      private function §-3§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9s§.length)
         {
            if(_loc1_ == this.§=!8§)
            {
               this.§9s§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§9s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§ !2§ = false;
      }
   }
}
