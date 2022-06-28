package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import §`M§.§9!#§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?U§ extends §+_§
   {
      
      public static const §3F§:String = "ChapterSelectionState";
      
      private static const §-,§:Number = 0.5;
       
      
      private var §?T§:Sprite;
      
      private var §;=§:§9!#§;
      
      private var §,![§:Array;
      
      private var §]!o§:Array;
      
      private var §7!r§:int = 0;
      
      private var §'!5§:Number = 0;
      
      private var §-_§:Number = 0;
      
      private var §6!!§:Dictionary;
      
      private var §&C§:Dictionary;
      
      private var §,P§:§4F§ = null;
      
      private var §5!!§:Boolean = false;
      
      private var §8!+§:Number = 0;
      
      public function §?U§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_ChapterSelection[0]);
         this.§9!]§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§@+§ = null;
         super.activate();
         §4!]§.§8C§.§1B§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,![§)
         {
            _loc3_ = LevelManager.§'v§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§<!=§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^!E§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §9!]§() : void
      {
         var _loc3_:§@+§ = null;
         var _loc4_:String = null;
         this.§;=§ = §`-§.getItemByName("Container_ChapterSelection") as §9!#§;
         this.§,![§ = [];
         this.§]!o§ = [];
         var _loc1_:Number = 0;
         this.§?T§ = new Sprite();
         this.§?T§.y = AngryBirdsFP11.§7P§ / 2;
         this.§'!5§ = AngryBirdsFP11.§;!Z§ / 2;
         this.§?T§.x = this.§'!5§;
         this.§;=§.mClip.addChild(this.§?T§);
         this.§&C§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§`!v§())
         {
            _loc3_ = LevelManager.§'v§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§+!=§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§+!=§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§+!=§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§1]§();
      }
      
      private function §1]§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§6!!§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§,![§.length)
         {
            _loc1_ = §9!N§.§0!k§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§7!r§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§;!Z§ / 2 + _loc3_ - this.§,![§.length * _loc2_.width / 2;
            _loc2_.y = (§`-§.getItemByName("Button_Next") as §,c§).y - _loc2_.height / 2;
            this.§;=§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§6!!§[_loc2_] = _loc4_;
            this.§]!o§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#p§);
            _loc4_++;
         }
         _loc3_ = this.§,![§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`-§.getItemByName("Button_Next") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
         (§`-§.getItemByName("Button_Prev") as §,c§).x = AngryBirdsFP11.§;!Z§ / 2;
         (§`-§.getItemByName("Button_Next") as §,c§).x = (§`-§.getItemByName("Button_Next") as §,c§).x + (_loc3_ + 10);
         (§`-§.getItemByName("Button_Prev") as §,c§).x = (§`-§.getItemByName("Button_Prev") as §,c§).x - (_loc3_ + 10);
      }
      
      private function §+!=§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§@+§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§9!N§.§!K§(param1))
         {
            _loc4_ = LevelManager.§'v§(param3);
            (_loc6_ = new (_loc5_ = §9!N§.§0!k§(param1))()).x = param2;
            this.§?T§.addChild(_loc6_);
            this.§,![§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§&C§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§4!>§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^!E§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§<!=§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§%!u§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §#p§(param1:MouseEvent) : void
      {
         if(!this.§5!!§)
         {
            this.§,U§(this.§6!!§[param1.target]);
         }
      }
      
      private function §4!>§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§5!!§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§7!r§ != this.§&C§[_loc2_])
            {
               this.§,U§(this.§&C§[_loc2_]);
            }
            else if(this.§&C§[_loc2_] < LevelManager.§`!v§())
            {
               LevelManager.§;`§ = this.§&C§[_loc2_];
               mNextState = §6!U§.§3F§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?Y§();
         this.§2!,§();
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      private function §2!,§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,![§.length)
         {
            _loc2_ = this.§?T§.x + this.§,![§[_loc1_].x - AngryBirdsFP11.§;!Z§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§,![§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§,![§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§,![§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§,![§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §?Y§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!o§.length)
         {
            if(-this.§?T§.x + 800 >= this.§,![§[_loc1_].x && -this.§8!+§ < this.§,![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!o§.length)
               {
                  this.§]!o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!o§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?T§.x + 800 <= this.§,![§[_loc1_].x && -this.§8!+§ > this.§,![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!o§.length)
               {
                  this.§]!o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!o§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§8!+§ = this.§?T§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4!]§.§8C§.clearLevel();
         (§`-§.getItemByName("Button_Back") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "BACK":
               §6!H§.playSound("Menu_Back");
               mNextState = §4A§.§3F§;
               break;
            case "PREV":
               §6!H§.playSound("Menu_Confirm");
               if(!this.§5!!§)
               {
                  --this.§7!r§;
                  this.§,U§(this.§7!r§);
                  break;
               }
               break;
            case "NEXT":
               §6!H§.playSound("Menu_Confirm");
               if(!this.§5!!§)
               {
                  ++this.§7!r§;
                  this.§,U§(this.§7!r§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §6!H§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      private function §,U§(param1:int) : void
      {
         this.§5!!§ = true;
         if(param1 > this.§,![§.length - 1)
         {
            param1 = this.§,![§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§7!r§ = param1;
         var _loc2_:Number = -this.§,![§[param1].x + this.§'!5§;
         var _loc3_:Number = this.§?T§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §-,§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§,P§ != null)
         {
            this.§,P§.stop();
         }
         this.§,P§ = §5+§.§^Z§.§=!a§(this.§?T§,{"x":_loc2_},null,_loc4_,§5+§.§^E§);
         this.§,P§.onComplete = this.§8@§;
         this.§,P§.play();
      }
      
      private function §8@§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!o§.length)
         {
            if(_loc1_ == this.§7!r§)
            {
               this.§]!o§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§]!o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§5!!§ = false;
      }
   }
}
