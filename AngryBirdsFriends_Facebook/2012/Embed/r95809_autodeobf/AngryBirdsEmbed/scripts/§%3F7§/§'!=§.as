package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §<!@§.§#c§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §'!=§ extends §true§
   {
      
      public static const §4!&§:String = "ChapterSelectionState";
      
      private static const §#!E§:Number = 0.5;
       
      
      private var §5!'§:Sprite;
      
      private var §+!"§:§=!'§;
      
      private var §%W§:Array;
      
      private var §'0§:Array;
      
      private var §=O§:int = 0;
      
      private var §+!G§:Number = 0;
      
      private var §5!%§:Number = 0;
      
      private var §@7§:Dictionary;
      
      private var §;w§:Dictionary;
      
      private var §9!,§:§ l§ = null;
      
      private var §;!1§:Boolean = false;
      
      private var §#§:Number = 0;
      
      public function §'!=§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_ChapterSelection[0]);
         this.§!a§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§#c§ = null;
         super.activate();
         §?'§.§5!§.§`!?§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%W§)
         {
            _loc3_ = §!P§.§[]§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§!B§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§!!D§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§@E§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§ T§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§;A§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §!a§() : void
      {
         var _loc3_:§#c§ = null;
         var _loc4_:String = null;
         this.§+!"§ = §6!$§.getItemByName("Container_ChapterSelection") as §=!'§;
         this.§%W§ = [];
         this.§'0§ = [];
         var _loc1_:Number = 0;
         this.§5!'§ = new Sprite();
         this.§5!'§.y = AngryBirdsFP11.screenHeight / 2;
         this.§+!G§ = AngryBirdsFP11.screenWidth / 2;
         this.§5!'§.x = this.§+!G§;
         this.§+!"§.mClip.addChild(this.§5!'§);
         this.§;w§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §!P§.§0V§())
         {
            _loc3_ = §!P§.§[]§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§<>§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§<>§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§<>§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§#b§();
      }
      
      private function §#b§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§@7§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%W§.length)
         {
            _loc1_ = §0v§.§#w§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§=O§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%W§.length * _loc2_.width / 2;
            _loc2_.y = (§6!$§.getItemByName("Button_Next") as §1;§).y - _loc2_.height / 2;
            this.§+!"§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§@7§[_loc2_] = _loc4_;
            this.§'0§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,C§);
            _loc4_++;
         }
         _loc3_ = this.§%W§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§6!$§.getItemByName("Button_Next") as §1;§).x = AngryBirdsFP11.screenWidth / 2;
         (§6!$§.getItemByName("Button_Prev") as §1;§).x = AngryBirdsFP11.screenWidth / 2;
         (§6!$§.getItemByName("Button_Next") as §1;§).x = (§6!$§.getItemByName("Button_Next") as §1;§).x + (_loc3_ + 10);
         (§6!$§.getItemByName("Button_Prev") as §1;§).x = (§6!$§.getItemByName("Button_Prev") as §1;§).x - (_loc3_ + 10);
      }
      
      private function §<>§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§#c§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§0v§.§?!-§(param1))
         {
            _loc4_ = §!P§.§[]§(param3);
            (_loc6_ = new (_loc5_ = §0v§.§#w§(param1))()).x = param2;
            this.§5!'§.addChild(_loc6_);
            this.§%W§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§;w§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§[Y§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§@E§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§ T§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§;A§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§!B§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§!!D§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §,C§(param1:MouseEvent) : void
      {
         if(!this.§;!1§)
         {
            this.§=! §(this.§@7§[param1.target]);
         }
      }
      
      private function §[Y§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§;!1§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§=O§ != this.§;w§[_loc2_])
            {
               this.§=! §(this.§;w§[_loc2_]);
            }
            else if(this.§;w§[_loc2_] < §!P§.§0V§())
            {
               §!P§.§>N§ = this.§;w§[_loc2_];
               mNextState = §<!D§.§4!&§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1A§();
         this.§?j§();
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      private function §?j§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%W§.length)
         {
            _loc2_ = this.§5!'§.x + this.§%W§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§%W§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§%W§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§%W§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§%W§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §1A§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'0§.length)
         {
            if(-this.§5!'§.x + 800 >= this.§%W§[_loc1_].x && -this.§#§ < this.§%W§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'0§.length)
               {
                  this.§'0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'0§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§5!'§.x + 800 <= this.§%W§[_loc1_].x && -this.§#§ > this.§%W§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'0§.length)
               {
                  this.§'0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'0§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§#§ = this.§5!'§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?'§.§5!§.clearLevel();
         (§6!$§.getItemByName("Button_Back") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "BACK":
               §;!>§.§>t§("Menu_Back");
               mNextState = §&M§.§4!&§;
               break;
            case "PREV":
               §;!>§.§>t§("Menu_Confirm");
               if(!this.§;!1§)
               {
                  --this.§=O§;
                  this.§=! §(this.§=O§);
                  break;
               }
               break;
            case "NEXT":
               §;!>§.§>t§("Menu_Confirm");
               if(!this.§;!1§)
               {
                  ++this.§=O§;
                  this.§=! §(this.§=O§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §;!>§.§>t§("Menu_Confirm");
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      private function §=! §(param1:int) : void
      {
         this.§;!1§ = true;
         if(param1 > this.§%W§.length - 1)
         {
            param1 = this.§%W§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=O§ = param1;
         var _loc2_:Number = -this.§%W§[param1].x + this.§+!G§;
         var _loc3_:Number = this.§5!'§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#!E§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§9!,§ != null)
         {
            this.§9!,§.stop();
         }
         this.§9!,§ = §?!7§.§^7§.§^!0§(this.§5!'§,{"x":_loc2_},null,_loc4_,§?!7§.§,u§);
         this.§9!,§.onComplete = this.§!!8§;
         this.§9!,§.play();
      }
      
      private function §!!8§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'0§.length)
         {
            if(_loc1_ == this.§=O§)
            {
               this.§'0§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§'0§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;!1§ = false;
      }
   }
}
