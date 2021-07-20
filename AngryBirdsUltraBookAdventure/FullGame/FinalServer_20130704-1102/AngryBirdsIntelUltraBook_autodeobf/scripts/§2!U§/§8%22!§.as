package §2!U§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §8"!§ extends §9![§
   {
      
      public static const §'!q§:String = "ChapterSelectionState";
      
      private static const §`!?§:Number = 0.5;
       
      
      private var §+R§:Sprite;
      
      private var §>!+§:§^! §;
      
      private var §=Z§:Array;
      
      private var §]!<§:Array;
      
      private var §<!x§:int = 0;
      
      private var §&j§:Number = 0;
      
      private var §@!q§:Number = 0;
      
      private var §'!2§:Dictionary;
      
      private var §6"$§:Dictionary;
      
      private var §!!Z§:§^v§ = null;
      
      private var §#8§:Boolean = false;
      
      private var §3"§:Number = 0;
      
      public function §8"!§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_ChapterSelection[0]);
         this.§+w§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§8K§ = null;
         super.activate();
         §,!s§.§=!I§.§!C§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=Z§)
         {
            _loc3_ = LevelManager.§!!A§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§;C§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§0q§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4!`§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §+w§() : void
      {
         var _loc3_:§8K§ = null;
         var _loc4_:String = null;
         this.§>!+§ = §'!Q§.getItemByName("Container_ChapterSelection") as §^! §;
         this.§=Z§ = [];
         this.§]!<§ = [];
         var _loc1_:Number = 0;
         this.§+R§ = new Sprite();
         this.§+R§.y = AngryBirdsFP11.§2" § / 2;
         this.§&j§ = AngryBirdsFP11.§!Z§ / 2;
         this.§+R§.x = this.§&j§;
         this.§>!+§.mClip.addChild(this.§+R§);
         this.§6"$§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%!1§())
         {
            _loc3_ = LevelManager.§!!A§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§'!Y§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§'!Y§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§'!Y§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§<O§();
      }
      
      private function §<O§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§'!2§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§=Z§.length)
         {
            _loc1_ = §,!j§.§!!N§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§<!x§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§!Z§ / 2 + _loc3_ - this.§=Z§.length * _loc2_.width / 2;
            _loc2_.y = (§'!Q§.getItemByName("Button_Next") as §[!i§).y - _loc2_.height / 2;
            this.§>!+§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§'!2§[_loc2_] = _loc4_;
            this.§]!<§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]!X§);
            _loc4_++;
         }
         _loc3_ = this.§=Z§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§'!Q§.getItemByName("Button_Next") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
         (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = AngryBirdsFP11.§!Z§ / 2;
         (§'!Q§.getItemByName("Button_Next") as §[!i§).x = (§'!Q§.getItemByName("Button_Next") as §[!i§).x + (_loc3_ + 10);
         (§'!Q§.getItemByName("Button_Prev") as §[!i§).x = (§'!Q§.getItemByName("Button_Prev") as §[!i§).x - (_loc3_ + 10);
      }
      
      private function §'!Y§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§8K§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§,!j§.§@!o§(param1))
         {
            _loc4_ = LevelManager.§!!A§(param3);
            (_loc6_ = new (_loc5_ = §,!j§.§!!N§(param1))()).x = param2;
            this.§+R§.addChild(_loc6_);
            this.§=Z§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§6"$§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§3W§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§0q§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4!`§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§;C§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§^!9§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §]!X§(param1:MouseEvent) : void
      {
         if(!this.§#8§)
         {
            this.§>d§(this.§'!2§[param1.target]);
         }
      }
      
      private function §3W§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§#8§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§<!x§ != this.§6"$§[_loc2_])
            {
               this.§>d§(this.§6"$§[_loc2_]);
            }
            else if(this.§6"$§[_loc2_] < LevelManager.§%!1§())
            {
               LevelManager.§`^§ = this.§6"$§[_loc2_];
               mNextState = §2!=§.§'!q§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§>R§();
         this.§ Z§();
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function § Z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=Z§.length)
         {
            _loc2_ = this.§+R§.x + this.§=Z§[_loc1_].x - AngryBirdsFP11.§!Z§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§=Z§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§=Z§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§=Z§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§=Z§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §>R§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!<§.length)
         {
            if(-this.§+R§.x + 800 >= this.§=Z§[_loc1_].x && -this.§3"§ < this.§=Z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!<§.length)
               {
                  this.§]!<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!<§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§+R§.x + 800 <= this.§=Z§[_loc1_].x && -this.§3"§ > this.§=Z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!<§.length)
               {
                  this.§]!<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!<§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§3"§ = this.§+R§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!s§.§=!I§.clearLevel();
         (§'!Q§.getItemByName("Button_Back") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "BACK":
               §-!Q§.§#3§("Menu_Back");
               mNextState = §&i§.§'!q§;
               break;
            case "PREV":
               §-!Q§.§#3§("Menu_Confirm");
               if(!this.§#8§)
               {
                  --this.§<!x§;
                  this.§>d§(this.§<!x§);
               }
               break;
            case "NEXT":
               §-!Q§.§#3§("Menu_Confirm");
               if(!this.§#8§)
               {
                  ++this.§<!x§;
                  this.§>d§(this.§<!x§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §-!Q§.§#3§("Menu_Confirm");
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      private function §>d§(param1:int) : void
      {
         this.§#8§ = true;
         if(param1 > this.§=Z§.length - 1)
         {
            param1 = this.§=Z§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§<!x§ = param1;
         var _loc2_:Number = -this.§=Z§[param1].x + this.§&j§;
         var _loc3_:Number = this.§+R§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §`!?§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§!!Z§ != null)
         {
            this.§!!Z§.stop();
         }
         this.§!!Z§ = §`!G§.§[U§.§-]§(this.§+R§,{"x":_loc2_},null,_loc4_,§`!G§.§-!%§);
         this.§!!Z§.onComplete = this.§<T§;
         this.§!!Z§.play();
      }
      
      private function §<T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!<§.length)
         {
            if(_loc1_ == this.§<!x§)
            {
               this.§]!<§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§]!<§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§#8§ = false;
      }
   }
}
