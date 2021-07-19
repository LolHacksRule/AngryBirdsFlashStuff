package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §3y§.§9r§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"C§ extends §]"_§
   {
      
      public static const §^!7§:String = "ChapterSelectionState";
      
      protected static const §'!i§:Number = 0.5;
       
      
      protected var §1"_§:Sprite;
      
      protected var §-#B§:§ #^§;
      
      protected var §<!W§:Array;
      
      protected var §5!7§:Array;
      
      protected var §=!X§:int = 0;
      
      protected var §?j§:Number = 0;
      
      protected var §["n§:Number = 0;
      
      protected var §>!M§:§[#R§ = null;
      
      protected var §"#2§:Boolean = false;
      
      protected var §>"§:Number = 0;
      
      public function §"C§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_ChapterSelection[0]);
         this.§+Y§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.§9!,§.§]"J§(false);
         this.§+!6§();
      }
      
      protected function §+!6§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!W§)
         {
            _loc3_ = §+!b§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §4#;§.singleton.dataModel.userProgress.§`"q§(_loc3_) + "/" + §4#;§.singleton.dataModel.userProgress.§[#`§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §4#;§.singleton.dataModel.userProgress.§'e§(_loc3_) + "/" + §4#;§.singleton.dataModel.userProgress.§3h§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §4#;§.singleton.dataModel.userProgress.§]#B§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §+Y§() : void
      {
         var _loc3_:§3![§ = null;
         this.§-#B§ = §@;§.getItemByName("Container_ChapterSelection") as § #^§;
         this.§<!W§ = [];
         this.§5!7§ = [];
         var _loc1_:Number = 0;
         this.§1"_§ = new Sprite();
         this.§1"_§.y = §4#;§.screenHeight / 2;
         this.§?j§ = §4#;§.screenWidth / 2;
         this.§1"_§.x = this.§?j§;
         this.§-#B§.mClip.addChild(this.§1"_§);
         var _loc2_:int = 0;
         while(_loc2_ < §+!b§.getEpisodeCount())
         {
            _loc3_ = §+!b§.getEpisode(_loc2_);
            if(!_loc3_.§3"i§)
            {
               _loc1_ = this.§-"$§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§>!X§(_loc1_);
         this.§?E§();
      }
      
      protected function §>!X§(param1:Number) : void
      {
         param1 = this.§-"$§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§-"$§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §?E§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!W§.length)
         {
            _loc3_ = new §5_§.§`"G§("Button_Dot")();
            if(_loc2_ == this.§=!X§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §4#;§.screenWidth / 2 + _loc1_ - this.§<!W§.length * _loc3_.width / 2;
            _loc3_.y = (§@;§.getItemByName("Button_Next") as §^"m§).y - _loc3_.height / 2;
            this.§-#B§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§5!7§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^"3§);
            _loc2_++;
         }
         _loc1_ = this.§<!W§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§@;§.getItemByName("Button_Next") as §^"m§).x = §4#;§.screenWidth / 2;
         (§@;§.getItemByName("Button_Prev") as §^"m§).x = §4#;§.screenWidth / 2;
         (§@;§.getItemByName("Button_Next") as §^"m§).x = (§@;§.getItemByName("Button_Next") as §^"m§).x + (_loc1_ + 10);
         (§@;§.getItemByName("Button_Prev") as §^"m§).x = (§@;§.getItemByName("Button_Prev") as §^"m§).x - (_loc1_ + 10);
      }
      
      protected function §-"$§(param1:String, param2:Number, param3:§3![§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §5_§.§`"G§(param1)()).x = param2;
         this.§1"_§.addChild(_loc4_);
         this.§<!W§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§5#P§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §4#;§.singleton.dataModel.userProgress.§'e§(param3) + "/" + §4#;§.singleton.dataModel.userProgress.§3h§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §4#;§.singleton.dataModel.userProgress.§]#B§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §4#;§.singleton.dataModel.userProgress.§`"q§(param3) + "/" + §4#;§.singleton.dataModel.userProgress.§[#`§(param3);
            }
         }
         return param2;
      }
      
      private function §^"3§(param1:MouseEvent) : void
      {
         if(!this.§"#2§)
         {
            this.§0##§(this.§5!7§.indexOf(param1.target));
         }
      }
      
      protected function §5#P§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§"#2§)
         {
            _loc2_ = this.§<!W§.indexOf(param1.currentTarget);
            if(this.§=!X§ != _loc2_)
            {
               this.§0##§(_loc2_);
            }
            else if(_loc2_ < §+!b§.getEpisodeCount())
            {
               §+!b§.selectEpisode(_loc2_);
               § g§(§+#?§.§^!7§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§]!f§();
         this.§^#Z§();
      }
      
      protected function §^#Z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!W§.length)
         {
            _loc2_ = this.§1"_§.x + this.§<!W§[_loc1_].x - §4#;§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§<!W§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§<!W§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§<!W§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§<!W§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §]!f§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!7§.length)
         {
            if(-this.§1"_§.x + 800 >= this.§<!W§[_loc1_].x && -this.§>"§ < this.§<!W§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!7§.length)
               {
                  this.§5!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5!7§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§1"_§.x + 800 <= this.§<!W§[_loc1_].x && -this.§>"§ > this.§<!W§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!7§.length)
               {
                  this.§5!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5!7§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§>"§ = this.§1"_§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!q§.§9!,§.clearLevel();
         this.§;2§();
      }
      
      protected function §;2§() : void
      {
         (§@;§.getItemByName("Button_Back") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "BACK":
               §?!r§.§"#_§("Menu_Back");
               § g§(§+!n§.§^!7§);
               break;
            case "PREV":
               §?!r§.§"#_§("Menu_Confirm");
               if(!this.§"#2§)
               {
                  --this.§=!X§;
                  this.§0##§(this.§=!X§);
               }
               break;
            case "NEXT":
               §?!r§.§"#_§("Menu_Confirm");
               if(!this.§"#2§)
               {
                  ++this.§=!X§;
                  this.§0##§(this.§=!X§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §?!r§.§"#_§("Menu_Confirm");
               §4#;§.singleton.§5"q§();
         }
      }
      
      protected function §0##§(param1:int) : void
      {
         this.§"#2§ = true;
         if(param1 > this.§<!W§.length - 1)
         {
            param1 = this.§<!W§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=!X§ = param1;
         var _loc2_:Number = -this.§<!W§[param1].x + this.§?j§;
         var _loc3_:Number = this.§1"_§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §'!i§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§>!M§ != null)
         {
            this.§>!M§.stop();
         }
         this.§>!M§ = §-#C§.§%!E§.§^!H§(this.§1"_§,{"x":_loc2_},null,_loc4_,§9r§.easeOut);
         this.§>!M§.onComplete = this.§6#"§;
         this.§>!M§.play();
      }
      
      protected function §6#"§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!7§.length)
         {
            if(_loc1_ == this.§=!X§)
            {
               this.§5!7§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§5!7§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§"#2§ = false;
      }
   }
}
