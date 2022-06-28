package §;m§
{
   import §#h§.§ !H§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §8R§ extends §>3§
   {
      
      public static const §-!A§:String = "ChapterSelectionState";
      
      private static const §<!@§:Number = 0.5;
       
      
      private var §^!8§:Sprite;
      
      private var §>6§:§1!=§;
      
      private var §1+§:Array;
      
      private var §!V§:Array;
      
      private var §+!#§:int = 0;
      
      private var §^t§:Number = 0;
      
      private var §1h§:Number = 0;
      
      private var §5!&§:Dictionary;
      
      private var §"]§:Dictionary;
      
      private var §]!0§:§3_§ = null;
      
      private var §0Y§:Boolean = false;
      
      private var §!!9§:Number = 0;
      
      public function §8R§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_ChapterSelection[0]);
         this.§<v§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=e§ = null;
         super.activate();
         §"h§.§1C§.§]!!§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1+§)
         {
            _loc3_ = §59§.§+!!§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§?!B§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§!X§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§%P§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§2!=§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§6!3§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §<v§() : void
      {
         var _loc3_:§=e§ = null;
         var _loc4_:String = null;
         this.§>6§ = §-f§.getItemByName("Container_ChapterSelection") as §1!=§;
         this.§1+§ = [];
         this.§!V§ = [];
         var _loc1_:Number = 0;
         this.§^!8§ = new Sprite();
         this.§^!8§.y = AngryBirdsFP11.screenHeight / 2;
         this.§^t§ = AngryBirdsFP11.screenWidth / 2;
         this.§^!8§.x = this.§^t§;
         this.§>6§.mClip.addChild(this.§^!8§);
         this.§"]§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §59§.§<L§())
         {
            _loc3_ = §59§.§+!!§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§'y§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§'y§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§'y§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§'R§();
      }
      
      private function §'R§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§5!&§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§1+§.length)
         {
            _loc1_ = §!Q§.§^!H§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§+!#§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§1+§.length * _loc2_.width / 2;
            _loc2_.y = (§-f§.getItemByName("Button_Next") as §6<§).y - _loc2_.height / 2;
            this.§>6§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§5!&§[_loc2_] = _loc4_;
            this.§!V§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%1§);
            _loc4_++;
         }
         _loc3_ = this.§1+§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§-f§.getItemByName("Button_Next") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
         (§-f§.getItemByName("Button_Prev") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
         (§-f§.getItemByName("Button_Next") as §6<§).x = (§-f§.getItemByName("Button_Next") as §6<§).x + (_loc3_ + 10);
         (§-f§.getItemByName("Button_Prev") as §6<§).x = (§-f§.getItemByName("Button_Prev") as §6<§).x - (_loc3_ + 10);
      }
      
      private function §'y§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=e§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§!Q§.§,!%§(param1))
         {
            _loc4_ = §59§.§+!!§(param3);
            (_loc6_ = new (_loc5_ = §!Q§.§^!H§(param1))()).x = param2;
            this.§^!8§.addChild(_loc6_);
            this.§1+§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§"]§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§0B§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§%P§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§2!=§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§6!3§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§?!B§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§!X§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §%1§(param1:MouseEvent) : void
      {
         if(!this.§0Y§)
         {
            this.§<i§(this.§5!&§[param1.target]);
         }
      }
      
      private function §0B§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§0Y§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§+!#§ != this.§"]§[_loc2_])
            {
               this.§<i§(this.§"]§[_loc2_]);
            }
            else if(this.§"]§[_loc2_] < §59§.§<L§())
            {
               §59§.§2>§ = this.§"]§[_loc2_];
               mNextState = §>!B§.§-!A§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#v§();
         this.§&u§();
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      private function §&u§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1+§.length)
         {
            _loc2_ = this.§^!8§.x + this.§1+§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§1+§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§1+§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§1+§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§1+§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §#v§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!V§.length)
         {
            if(-this.§^!8§.x + 800 >= this.§1+§[_loc1_].x && -this.§!!9§ < this.§1+§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!V§.length)
               {
                  this.§!V§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!V§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§^!8§.x + 800 <= this.§1+§[_loc1_].x && -this.§!!9§ > this.§1+§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!V§.length)
               {
                  this.§!V§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!V§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§!!9§ = this.§^!8§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §"h§.§1C§.clearLevel();
         (§-f§.getItemByName("Button_Back") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "BACK":
               § !H§.§ !%§("Menu_Back");
               mNextState = §1!§.§-!A§;
               break;
            case "PREV":
               § !H§.§ !%§("Menu_Confirm");
               if(!this.§0Y§)
               {
                  --this.§+!#§;
                  this.§<i§(this.§+!#§);
                  break;
               }
               break;
            case "NEXT":
               § !H§.§ !%§("Menu_Confirm");
               if(!this.§0Y§)
               {
                  ++this.§+!#§;
                  this.§<i§(this.§+!#§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               § !H§.§ !%§("Menu_Confirm");
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      private function §<i§(param1:int) : void
      {
         this.§0Y§ = true;
         if(param1 > this.§1+§.length - 1)
         {
            param1 = this.§1+§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§+!#§ = param1;
         var _loc2_:Number = -this.§1+§[param1].x + this.§^t§;
         var _loc3_:Number = this.§^!8§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §<!@§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§]!0§ != null)
         {
            this.§]!0§.stop();
         }
         this.§]!0§ = §,!G§.§@j§.§47§(this.§^!8§,{"x":_loc2_},null,_loc4_,§,!G§.§,&§);
         this.§]!0§.onComplete = this.§5,§;
         this.§]!0§.play();
      }
      
      private function §5,§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!V§.length)
         {
            if(_loc1_ == this.§+!#§)
            {
               this.§!V§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§!V§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§0Y§ = false;
      }
   }
}
