package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§8P§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §;!!§.§0H§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class § !6§ extends §0H§
   {
      
      public static const §2`§:String = "ChapterSelectionState";
      
      private static const §;!D§:Number = 0.5;
       
      
      private var §&j§:Sprite;
      
      private var §@Z§:§+a§;
      
      private var § F§:Array;
      
      private var §8!D§:Array;
      
      private var §#!+§:int = 0;
      
      private var §5&§:Number = 0;
      
      private var §`X§:Number = 0;
      
      private var § #§:Dictionary;
      
      private var §=l§:Dictionary;
      
      private var §^i§:§<Q§ = null;
      
      private var §8!7§:Boolean = false;
      
      private var §-!4§:Number = 0;
      
      public function § !6§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_ChapterSelection[0]);
         this.§6!6§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§8P§ = null;
         super.activate();
         §[F§.§9u§.§#Q§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ F§)
         {
            _loc3_ = §2h§.§&I§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§ !-§.§?!E§(_loc3_) + "/" + AngryBirdsFP11.§ !-§.§^!P§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§ !-§.§0,§(_loc3_) + "/" + AngryBirdsFP11.§ !-§.§?! §(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§ !-§.§8J§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §6!6§() : void
      {
         var _loc3_:§8P§ = null;
         var _loc4_:String = null;
         this.§@Z§ = §<A§.getItemByName("Container_ChapterSelection") as §+a§;
         this.§ F§ = [];
         this.§8!D§ = [];
         var _loc1_:Number = 0;
         this.§&j§ = new Sprite();
         this.§&j§.y = AngryBirdsFP11.§#,§ / 2;
         this.§5&§ = AngryBirdsFP11.§^@§ / 2;
         this.§&j§.x = this.§5&§;
         this.§@Z§.mClip.addChild(this.§&j§);
         this.§=l§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §2h§.§01§())
         {
            _loc3_ = §2h§.§&I§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§7!3§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§7!3§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§7!3§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§4c§();
      }
      
      private function §4c§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§ #§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ F§.length)
         {
            _loc1_ = §^3§.§+_§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§#!+§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§^@§ / 2 + _loc3_ - this.§ F§.length * _loc2_.width / 2;
            _loc2_.y = (§<A§.getItemByName("Button_Next") as §-u§).y - _loc2_.height / 2;
            this.§@Z§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§ #§[_loc2_] = _loc4_;
            this.§8!D§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!$§);
            _loc4_++;
         }
         _loc3_ = this.§ F§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§<A§.getItemByName("Button_Next") as §-u§).x = AngryBirdsFP11.§^@§ / 2;
         (§<A§.getItemByName("Button_Prev") as §-u§).x = AngryBirdsFP11.§^@§ / 2;
         (§<A§.getItemByName("Button_Next") as §-u§).x = (§<A§.getItemByName("Button_Next") as §-u§).x + (_loc3_ + 10);
         (§<A§.getItemByName("Button_Prev") as §-u§).x = (§<A§.getItemByName("Button_Prev") as §-u§).x - (_loc3_ + 10);
      }
      
      private function §7!3§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§8P§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§^3§.§77§(param1))
         {
            _loc4_ = §2h§.§&I§(param3);
            (_loc6_ = new (_loc5_ = §^3§.§+_§(param1))()).x = param2;
            this.§&j§.addChild(_loc6_);
            this.§ F§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§=l§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§2!>§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§ !-§.§0,§(_loc4_) + "/" + AngryBirdsFP11.§ !-§.§?! §(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§ !-§.§8J§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§ !-§.§?!E§(_loc4_) + "/" + AngryBirdsFP11.§ !-§.§^!P§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §-!$§(param1:MouseEvent) : void
      {
         if(!this.§8!7§)
         {
            this.§=Z§(this.§ #§[param1.target]);
         }
      }
      
      private function §2!>§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§8!7§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§#!+§ != this.§=l§[_loc2_])
            {
               this.§=Z§(this.§=l§[_loc2_]);
            }
            else if(this.§=l§[_loc2_] < §2h§.§01§())
            {
               §2h§.§1V§ = this.§=l§[_loc2_];
               mNextState = §6!C§.§2`§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@X§();
         this.§'0§();
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      private function §'0§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ F§.length)
         {
            _loc2_ = this.§&j§.x + this.§ F§[_loc1_].x - AngryBirdsFP11.§^@§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§ F§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§ F§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§ F§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§ F§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §@X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!D§.length)
         {
            if(-this.§&j§.x + 800 >= this.§ F§[_loc1_].x && -this.§-!4§ < this.§ F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!D§.length)
               {
                  this.§8!D§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8!D§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§&j§.x + 800 <= this.§ F§[_loc1_].x && -this.§-!4§ > this.§ F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!D§.length)
               {
                  this.§8!D§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8!D§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§-!4§ = this.§&j§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[F§.§9u§.clearLevel();
         (§<A§.getItemByName("Button_Back") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "BACK":
               §#-§.playSound("Menu_Back");
               mNextState = §-h§.§2`§;
               break;
            case "PREV":
               §#-§.playSound("Menu_Confirm");
               if(!this.§8!7§)
               {
                  --this.§#!+§;
                  this.§=Z§(this.§#!+§);
                  break;
               }
               break;
            case "NEXT":
               §#-§.playSound("Menu_Confirm");
               if(!this.§8!7§)
               {
                  ++this.§#!+§;
                  this.§=Z§(this.§#!+§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §#-§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      private function §=Z§(param1:int) : void
      {
         this.§8!7§ = true;
         if(param1 > this.§ F§.length - 1)
         {
            param1 = this.§ F§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#!+§ = param1;
         var _loc2_:Number = -this.§ F§[param1].x + this.§5&§;
         var _loc3_:Number = this.§&j§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §;!D§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§^i§ != null)
         {
            this.§^i§.stop();
         }
         this.§^i§ = §5^§.§<"§.§^g§(this.§&j§,{"x":_loc2_},null,_loc4_,§5^§.§,3§);
         this.§^i§.onComplete = this.§37§;
         this.§^i§.play();
      }
      
      private function §37§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!D§.length)
         {
            if(_loc1_ == this.§#!+§)
            {
               this.§8!D§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§8!D§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§8!7§ = false;
      }
   }
}
