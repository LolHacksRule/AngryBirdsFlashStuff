package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §-#o§.§-!w§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §8$0§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §3t§:Number = 0.5;
       
      
      protected var §0"j§:Sprite;
      
      protected var §&!5§:§]$+§;
      
      protected var §-!0§:Array;
      
      protected var §">§:Array;
      
      protected var §5"A§:int = 0;
      
      protected var §<"b§:Number = 0;
      
      protected var §^$'§:Number = 0;
      
      protected var §;@§:§7$C§ = null;
      
      protected var §5#r§:Boolean = false;
      
      protected var §7#"§:Number = 0;
      
      public function §8$0§(param1:§;"n§, param2:§4#c§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_ChapterSelection[0]);
         this.§ !N§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.§6#K§.setVisible(false);
         this.§+#+§();
      }
      
      protected function §+#+§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§ T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-!0§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§-5§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function § !N§() : void
      {
         var _loc3_:§ T§ = null;
         this.§&!5§ = §[$5§.getItemByName("Container_ChapterSelection") as §]$+§;
         this.§-!0§ = [];
         this.§">§ = [];
         var _loc1_:Number = 0;
         this.§0"j§ = new Sprite();
         this.§0"j§.y = AngryBirdsBase.screenHeight / 2;
         this.§<"b§ = AngryBirdsBase.screenWidth / 2;
         this.§0"j§.x = this.§<"b§;
         this.§&!5§.mClip.addChild(this.§0"j§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§1"m§)
            {
               _loc1_ = this.§>"T§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§2"E§(_loc1_);
         this.§3[§();
      }
      
      protected function §2"E§(param1:Number) : void
      {
         param1 = this.§>"T§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§>"T§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §3[§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!0§.length)
         {
            _loc3_ = new §6$A§.§1!m§("Button_Dot")();
            if(_loc2_ == this.§5"A§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§-!0§.length * _loc3_.width / 2;
            _loc3_.y = (§[$5§.getItemByName("Button_Next") as § !>§).y - _loc3_.height / 2;
            this.§&!5§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§">§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
            _loc2_++;
         }
         _loc1_ = this.§-!0§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§[$5§.getItemByName("Button_Next") as § !>§).x = AngryBirdsBase.screenWidth / 2;
         (§[$5§.getItemByName("Button_Prev") as § !>§).x = AngryBirdsBase.screenWidth / 2;
         (§[$5§.getItemByName("Button_Next") as § !>§).x = (§[$5§.getItemByName("Button_Next") as § !>§).x + (_loc1_ + 10);
         (§[$5§.getItemByName("Button_Prev") as § !>§).x = (§[$5§.getItemByName("Button_Prev") as § !>§).x - (_loc1_ + 10);
      }
      
      protected function §>"T§(param1:String, param2:Number, param3:§ T§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §6$A§.§1!m§(param1)()).x = param2;
         this.§0"j§.addChild(_loc4_);
         this.§-!0§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§>#m§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§-5§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§`c§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(param3);
            }
         }
         return param2;
      }
      
      private function §4;§(param1:MouseEvent) : void
      {
         if(!this.§5#r§)
         {
            this.§7"X§(this.§">§.indexOf(param1.target));
         }
      }
      
      protected function §>#m§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§5#r§)
         {
            _loc2_ = this.§-!0§.indexOf(param1.currentTarget);
            if(this.§5"A§ != _loc2_)
            {
               this.§7"X§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §1!L§(§9#7§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§%#%§();
         this.§9$-§();
      }
      
      protected function §9$-§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-!0§.length)
         {
            _loc2_ = this.§0"j§.x + this.§-!0§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§-!0§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§-!0§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§-!0§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§-!0§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §%#%§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§">§.length)
         {
            if(-this.§0"j§.x + 800 >= this.§-!0§[_loc1_].x && -this.§7#"§ < this.§-!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§">§.length)
               {
                  this.§">§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§">§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§0"j§.x + 800 <= this.§-!0§[_loc1_].x && -this.§7#"§ > this.§-!0§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§">§.length)
               {
                  this.§">§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§">§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§7#"§ = this.§0"j§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §7n§.§6#K§.clearLevel();
         this.§`"i§();
      }
      
      protected function §`"i§() : void
      {
         (§[$5§.getItemByName("Button_Back") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§,!F§.STATE_NAME);
               break;
            case "PREV":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               if(!this.§5#r§)
               {
                  --this.§5"A§;
                  this.§7"X§(this.§5"A§);
                  break;
               }
               break;
            case "NEXT":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               if(!this.§5#r§)
               {
                  ++this.§5"A§;
                  this.§7"X§(this.§5"A§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function §7"X§(param1:int) : void
      {
         this.§5#r§ = true;
         if(param1 > this.§-!0§.length - 1)
         {
            param1 = this.§-!0§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§5"A§ = param1;
         var _loc2_:Number = -this.§-!0§[param1].x + this.§<"b§;
         var _loc3_:Number = this.§0"j§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §3t§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§;@§ != null)
         {
            this.§;@§.stop();
         }
         this.§;@§ = §"!&§.§`"H§.§1"W§(this.§0"j§,{"x":_loc2_},null,_loc4_,§-!w§.easeOut);
         this.§;@§.onComplete = this.§`v§;
         this.§;@§.play();
      }
      
      protected function §`v§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§">§.length)
         {
            if(_loc1_ == this.§5"A§)
            {
               this.§">§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§">§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§5#r§ = false;
      }
   }
}
