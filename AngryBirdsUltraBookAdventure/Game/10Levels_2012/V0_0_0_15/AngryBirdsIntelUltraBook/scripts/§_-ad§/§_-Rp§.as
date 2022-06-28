package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §_-Rp§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "ChapterSelectionState";
      
      private static const §_-045§:Number = 0.5;
       
      
      private var §_-1n§:Sprite;
      
      private var §_-gT§:§_-gt§;
      
      private var §_-5C§:Array;
      
      private var §_-k2§:Array;
      
      private var §_-06P§:int = 0;
      
      private var §_-gS§:Number = 0;
      
      private var §_-Nv§:Number = 0;
      
      private var §_-0Ah§:Dictionary;
      
      private var §_-le§:Dictionary;
      
      private var §_-yx§:§_-dd§ = null;
      
      private var §_-OV§:Boolean = false;
      
      private var §_-R5§:Number = 0;
      
      public function §_-Rp§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_ChapterSelection[0]);
         this.§_-0F3§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§_-0C5§ = null;
         super.activate();
         § in§.§_-Dc§.§_-Vf§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-5C§)
         {
            _loc3_ = LevelManager.§_-h8§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§_-80§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§_-q4§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§_-Zh§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§_-Od§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §_-0F3§() : void
      {
         var _loc3_:§_-0C5§ = null;
         var _loc4_:String = null;
         this.§_-gT§ = §_-s0§.getItemByName("Container_ChapterSelection") as §_-gt§;
         this.§_-5C§ = [];
         this.§_-k2§ = [];
         var _loc1_:Number = 0;
         this.§_-1n§ = new Sprite();
         this.§_-1n§.y = AngryBirdsFP11.§_-06d§ / 2;
         this.§_-gS§ = AngryBirdsFP11.§_-Uj§ / 2;
         this.§_-1n§.x = this.§_-gS§;
         this.§_-gT§.mClip.addChild(this.§_-1n§);
         this.§_-le§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§_-td§())
         {
            _loc3_ = LevelManager.§_-h8§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§_-xL§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§_-xL§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§_-xL§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§_-02t§();
      }
      
      private function §_-02t§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§_-0Ah§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-5C§.length)
         {
            _loc1_ = §_-Fc§.§_-YE§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§_-06P§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§_-Uj§ / 2 + _loc3_ - this.§_-5C§.length * _loc2_.width / 2;
            _loc2_.y = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).y - _loc2_.height / 2;
            this.§_-gT§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§_-0Ah§[_loc2_] = _loc4_;
            this.§_-k2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-xn§);
            _loc4_++;
         }
         _loc3_ = this.§_-5C§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
         (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = AngryBirdsFP11.§_-Uj§ / 2;
         (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Next") as §_-Mu§).x + (_loc3_ + 10);
         (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x = (§_-s0§.getItemByName("Button_Prev") as §_-Mu§).x - (_loc3_ + 10);
      }
      
      private function §_-xL§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§_-0C5§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§_-Fc§.§_-TY§(param1))
         {
            _loc4_ = LevelManager.§_-h8§(param3);
            (_loc6_ = new (_loc5_ = §_-Fc§.§_-YE§(param1))()).x = param2;
            this.§_-1n§.addChild(_loc6_);
            this.§_-5C§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§_-le§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§_-04o§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§_-Zh§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§_-C§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§_-Od§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§_-80§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§_-q4§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §_-xn§(param1:MouseEvent) : void
      {
         if(!this.§_-OV§)
         {
            this.§_-ND§(this.§_-0Ah§[param1.target]);
         }
      }
      
      private function §_-04o§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§_-OV§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§_-06P§ != this.§_-le§[_loc2_])
            {
               this.§_-ND§(this.§_-le§[_loc2_]);
            }
            else if(this.§_-le§[_loc2_] < LevelManager.§_-td§())
            {
               LevelManager.§_-07s§ = this.§_-le§[_loc2_];
               mNextState = §_-UO§.§_-pk§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-6o§();
         this.§_-04Y§();
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function §_-04Y§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-5C§.length)
         {
            _loc2_ = this.§_-1n§.x + this.§_-5C§[_loc1_].x - AngryBirdsFP11.§_-Uj§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§_-5C§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§_-5C§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§_-5C§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§_-5C§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §_-6o§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-k2§.length)
         {
            if(-this.§_-1n§.x + 800 >= this.§_-5C§[_loc1_].x && -this.§_-R5§ < this.§_-5C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§_-k2§.length)
               {
                  this.§_-k2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§_-1n§.x + 800 <= this.§_-5C§[_loc1_].x && -this.§_-R5§ > this.§_-5C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§_-k2§.length)
               {
                  this.§_-k2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§_-R5§ = this.§_-1n§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § in§.§_-Dc§.clearLevel();
         (§_-s0§.getItemByName("Button_Back") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "BACK":
               §_-pX§.playSound("Menu_Back");
               mNextState = §_-05N§.§_-pk§;
               break;
            case "PREV":
               §_-pX§.playSound("Menu_Confirm");
               if(!this.§_-OV§)
               {
                  --this.§_-06P§;
                  this.§_-ND§(this.§_-06P§);
                  break;
               }
               break;
            case "NEXT":
               §_-pX§.playSound("Menu_Confirm");
               if(!this.§_-OV§)
               {
                  ++this.§_-06P§;
                  this.§_-ND§(this.§_-06P§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §_-pX§.playSound("Menu_Confirm");
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      private function §_-ND§(param1:int) : void
      {
         this.§_-OV§ = true;
         if(param1 > this.§_-5C§.length - 1)
         {
            param1 = this.§_-5C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§_-06P§ = param1;
         var _loc2_:Number = -this.§_-5C§[param1].x + this.§_-gS§;
         var _loc3_:Number = this.§_-1n§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §_-045§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§_-yx§ != null)
         {
            this.§_-yx§.stop();
         }
         this.§_-yx§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-1n§,{"x":_loc2_},null,_loc4_,§_-cx§.§_-037§);
         this.§_-yx§.onComplete = this.§_-Mp§;
         this.§_-yx§.play();
      }
      
      private function §_-Mp§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-k2§.length)
         {
            if(_loc1_ == this.§_-06P§)
            {
               this.§_-k2§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§_-k2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§_-OV§ = false;
      }
   }
}
