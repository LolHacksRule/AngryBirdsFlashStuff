package § true§
{
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §+[§.§%G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§!E§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §&D§ extends §,!?§
   {
      
      public static const §`W§:String = "ChapterSelectionState";
      
      private static const §6t§:Number = 0.5;
       
      
      private var §0!@§:Sprite;
      
      private var §,3§:§58§;
      
      private var §2!0§:Array;
      
      private var §@L§:Array;
      
      private var §9=§:int = 0;
      
      private var § !+§:Number = 0;
      
      private var §2!$§:Number = 0;
      
      private var §!'§:Dictionary;
      
      private var §<E§:Dictionary;
      
      private var §5!'§:§'a§ = null;
      
      private var §,a§:Boolean = false;
      
      private var §5t§:Number = 0;
      
      public function §&D§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_ChapterSelection[0]);
         this.§2#§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§!E§ = null;
         super.activate();
         §[+§.§,!&§.§`9§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!0§)
         {
            _loc3_ = §`R§.§<!I§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§5!9§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§^6§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9q§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§=!5§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4@§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §2#§() : void
      {
         var _loc3_:§!E§ = null;
         var _loc4_:String = null;
         this.§,3§ = §while§.getItemByName("Container_ChapterSelection") as §58§;
         this.§2!0§ = [];
         this.§@L§ = [];
         var _loc1_:Number = 0;
         this.§0!@§ = new Sprite();
         this.§0!@§.y = AngryBirdsFP11.screenHeight / 2;
         this.§ !+§ = AngryBirdsFP11.screenWidth / 2;
         this.§0!@§.x = this.§ !+§;
         this.§,3§.mClip.addChild(this.§0!@§);
         this.§<E§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §`R§.§[<§())
         {
            _loc3_ = §`R§.§<!I§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§;t§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§;t§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§;t§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§6!9§();
      }
      
      private function §6!9§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§!'§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§2!0§.length)
         {
            _loc1_ = §%!?§.§4"§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§9=§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§2!0§.length * _loc2_.width / 2;
            _loc2_.y = (§while§.getItemByName("Button_Next") as §+!9§).y - _loc2_.height / 2;
            this.§,3§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§!'§[_loc2_] = _loc4_;
            this.§@L§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!5§);
            _loc4_++;
         }
         _loc3_ = this.§2!0§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§while§.getItemByName("Button_Next") as §+!9§).x = AngryBirdsFP11.screenWidth / 2;
         (§while§.getItemByName("Button_Prev") as §+!9§).x = AngryBirdsFP11.screenWidth / 2;
         (§while§.getItemByName("Button_Next") as §+!9§).x = (§while§.getItemByName("Button_Next") as §+!9§).x + (_loc3_ + 10);
         (§while§.getItemByName("Button_Prev") as §+!9§).x = (§while§.getItemByName("Button_Prev") as §+!9§).x - (_loc3_ + 10);
      }
      
      private function §;t§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§!E§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§%!?§.§%]§(param1))
         {
            _loc4_ = §`R§.§<!I§(param3);
            (_loc6_ = new (_loc5_ = §%!?§.§4"§(param1))()).x = param2;
            this.§0!@§.addChild(_loc6_);
            this.§2!0§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§<E§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§?!G§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9q§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§=!5§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4@§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§5!9§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§^6§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §<!5§(param1:MouseEvent) : void
      {
         if(!this.§,a§)
         {
            this.§]]§(this.§!'§[param1.target]);
         }
      }
      
      private function §?!G§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§,a§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§9=§ != this.§<E§[_loc2_])
            {
               this.§]]§(this.§<E§[_loc2_]);
            }
            else if(this.§<E§[_loc2_] < §`R§.§[<§())
            {
               §`R§.§=o§ = this.§<E§[_loc2_];
               mNextState = §&!F§.§`W§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]!4§();
         this.§5R§();
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      private function §5R§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!0§.length)
         {
            _loc2_ = this.§0!@§.x + this.§2!0§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§2!0§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§2!0§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§2!0§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§2!0§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §]!4§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            if(-this.§0!@§.x + 800 >= this.§2!0§[_loc1_].x && -this.§5t§ < this.§2!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@L§.length)
               {
                  this.§@L§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@L§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§0!@§.x + 800 <= this.§2!0§[_loc1_].x && -this.§5t§ > this.§2!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@L§.length)
               {
                  this.§@L§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@L§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§5t§ = this.§0!@§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[+§.§,!&§.clearLevel();
         (§while§.getItemByName("Button_Back") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "BACK":
               §%G§.§48§("Menu_Back");
               mNextState = §?,§.§`W§;
               break;
            case "PREV":
               §%G§.§48§("Menu_Confirm");
               if(!this.§,a§)
               {
                  --this.§9=§;
                  this.§]]§(this.§9=§);
               }
               break;
            case "NEXT":
               §%G§.§48§("Menu_Confirm");
               if(!this.§,a§)
               {
                  ++this.§9=§;
                  this.§]]§(this.§9=§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §%G§.§48§("Menu_Confirm");
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      private function §]]§(param1:int) : void
      {
         this.§,a§ = true;
         if(param1 > this.§2!0§.length - 1)
         {
            param1 = this.§2!0§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§9=§ = param1;
         var _loc2_:Number = -this.§2!0§[param1].x + this.§ !+§;
         var _loc3_:Number = this.§0!@§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §6t§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§5!'§ != null)
         {
            this.§5!'§.stop();
         }
         this.§5!'§ = §-!&§.§;R§.§2w§(this.§0!@§,{"x":_loc2_},null,_loc4_,§-!&§.§#! §);
         this.§5!'§.onComplete = this.§0!!§;
         this.§5!'§.play();
      }
      
      private function §0!!§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            if(_loc1_ == this.§9=§)
            {
               this.§@L§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§@L§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,a§ = false;
      }
   }
}
