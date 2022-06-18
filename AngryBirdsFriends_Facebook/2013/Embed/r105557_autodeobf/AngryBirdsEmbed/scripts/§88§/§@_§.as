package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8T§.§@o§;
   import §<!M§.§#W§;
   import §<!M§.§[i§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §@_§ extends §2q§
   {
      
      public static const §&! §:String = "ChapterSelectionState";
      
      private static const §<E§:Number = 0.5;
       
      
      private var §?%§:Sprite;
      
      private var §4!>§:§05§;
      
      private var §"a§:Array;
      
      private var §,G§:Array;
      
      private var §-s§:int = 0;
      
      private var § !@§:Number = 0;
      
      private var §`5§:Number = 0;
      
      private var §@f§:Dictionary;
      
      private var §&]§:Dictionary;
      
      private var § w§:§+!B§ = null;
      
      private var §%!#§:Boolean = false;
      
      private var §,"§:Number = 0;
      
      public function §@_§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_ChapterSelection[0]);
         this.§5K§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§#W§ = null;
         super.activate();
         §'5§.§^;§.§]g§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"a§)
         {
            _loc3_ = §[i§.§'4§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§!4§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§%!&§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§>O§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§@!D§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§^X§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §5K§() : void
      {
         var _loc3_:§#W§ = null;
         var _loc4_:String = null;
         this.§4!>§ = §=V§.getItemByName("Container_ChapterSelection") as §05§;
         this.§"a§ = [];
         this.§,G§ = [];
         var _loc1_:Number = 0;
         this.§?%§ = new Sprite();
         this.§?%§.y = AngryBirdsFP11.screenHeight / 2;
         this.§ !@§ = AngryBirdsFP11.screenWidth / 2;
         this.§?%§.x = this.§ !@§;
         this.§4!>§.mClip.addChild(this.§?%§);
         this.§&]§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §[i§.§7x§())
         {
            _loc3_ = §[i§.§'4§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§=!M§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§=!M§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§=!M§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§!!D§();
      }
      
      private function §!!D§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§@f§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§"a§.length)
         {
            _loc1_ = §&%§.§<7§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§-s§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§"a§.length * _loc2_.width / 2;
            _loc2_.y = (§=V§.getItemByName("Button_Next") as §^!@§).y - _loc2_.height / 2;
            this.§4!>§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§@f§[_loc2_] = _loc4_;
            this.§,G§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!N§);
            _loc4_++;
         }
         _loc3_ = this.§"a§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§=V§.getItemByName("Button_Next") as §^!@§).x = AngryBirdsFP11.screenWidth / 2;
         (§=V§.getItemByName("Button_Prev") as §^!@§).x = AngryBirdsFP11.screenWidth / 2;
         (§=V§.getItemByName("Button_Next") as §^!@§).x = (§=V§.getItemByName("Button_Next") as §^!@§).x + (_loc3_ + 10);
         (§=V§.getItemByName("Button_Prev") as §^!@§).x = (§=V§.getItemByName("Button_Prev") as §^!@§).x - (_loc3_ + 10);
      }
      
      private function §=!M§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§#W§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§&%§.§^%§(param1))
         {
            _loc4_ = §[i§.§'4§(param3);
            (_loc6_ = new (_loc5_ = §&%§.§<7§(param1))()).x = param2;
            this.§?%§.addChild(_loc6_);
            this.§"a§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§&]§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§>!<§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§>O§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§@!D§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§^X§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§!4§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§%!&§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §]!N§(param1:MouseEvent) : void
      {
         if(!this.§%!#§)
         {
            this.§]! §(this.§@f§[param1.target]);
         }
      }
      
      private function §>!<§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§%!#§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§-s§ != this.§&]§[_loc2_])
            {
               this.§]! §(this.§&]§[_loc2_]);
            }
            else if(this.§&]§[_loc2_] < §[i§.§7x§())
            {
               §[i§.§%M§ = this.§&]§[_loc2_];
               mNextState = §!G§.§&! §;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<!$§();
         this.§7f§();
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      private function §7f§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"a§.length)
         {
            _loc2_ = this.§?%§.x + this.§"a§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§"a§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§"a§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§"a§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§"a§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §<!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,G§.length)
         {
            if(-this.§?%§.x + 800 >= this.§"a§[_loc1_].x && -this.§,"§ < this.§"a§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,G§.length)
               {
                  this.§,G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,G§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?%§.x + 800 <= this.§"a§[_loc1_].x && -this.§,"§ > this.§"a§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,G§.length)
               {
                  this.§,G§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,G§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§,"§ = this.§?%§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'5§.§^;§.clearLevel();
         (§=V§.getItemByName("Button_Back") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "BACK":
               §@o§.playSound("Menu_Back");
               mNextState = §'W§.§&! §;
               break;
            case "PREV":
               §@o§.playSound("Menu_Confirm");
               if(!this.§%!#§)
               {
                  --this.§-s§;
                  this.§]! §(this.§-s§);
                  break;
               }
               break;
            case "NEXT":
               §@o§.playSound("Menu_Confirm");
               if(!this.§%!#§)
               {
                  ++this.§-s§;
                  this.§]! §(this.§-s§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §@o§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      private function §]! §(param1:int) : void
      {
         this.§%!#§ = true;
         if(param1 > this.§"a§.length - 1)
         {
            param1 = this.§"a§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§-s§ = param1;
         var _loc2_:Number = -this.§"a§[param1].x + this.§ !@§;
         var _loc3_:Number = this.§?%§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §<E§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§ w§ != null)
         {
            this.§ w§.stop();
         }
         this.§ w§ = §6;§.§&e§.§42§(this.§?%§,{"x":_loc2_},null,_loc4_,§6;§.§+!K§);
         this.§ w§.onComplete = this.§-?§;
         this.§ w§.play();
      }
      
      private function §-?§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,G§.length)
         {
            if(_loc1_ == this.§-s§)
            {
               this.§,G§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§,G§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%!#§ = false;
      }
   }
}
