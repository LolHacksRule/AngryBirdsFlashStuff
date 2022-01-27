package §%"Q§
{
   import §!"-§.set;
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §'!V§ extends §`!6§
   {
      
      public static const §-!U§:String = "ChapterSelectionState";
      
      protected static const §;0§:Number = 0.5;
       
      
      protected var §9!5§:Sprite;
      
      protected var §3"j§:§@!8§;
      
      protected var §&!G§:Array;
      
      protected var §7!0§:Array;
      
      protected var §+"Z§:int = 0;
      
      protected var §?5§:Number = 0;
      
      protected var §%$§:Number = 0;
      
      protected var §3!=§:§%b§ = null;
      
      protected var §8#§:Boolean = false;
      
      protected var §5j§:Number = 0;
      
      public function §'!V§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_ChapterSelection[0]);
         this.§<J§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.§=!%§.§`"V§(false);
         this.§0"o§();
      }
      
      protected function §0"o§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§5!K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!G§)
         {
            _loc3_ = §'""§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §4"#§.singleton.dataModel.userProgress.§`",§(_loc3_) + "/" + §4"#§.singleton.dataModel.userProgress.§&"^§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §4"#§.singleton.dataModel.userProgress.§!!c§(_loc3_) + "/" + §4"#§.singleton.dataModel.userProgress.§=#3§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §4"#§.singleton.dataModel.userProgress.§?!X§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §<J§() : void
      {
         var _loc3_:§5!K§ = null;
         this.§3"j§ = §^!b§.getItemByName("Container_ChapterSelection") as §@!8§;
         this.§&!G§ = [];
         this.§7!0§ = [];
         var _loc1_:Number = 0;
         this.§9!5§ = new Sprite();
         this.§9!5§.y = §4"#§.screenHeight / 2;
         this.§?5§ = §4"#§.screenWidth / 2;
         this.§9!5§.x = this.§?5§;
         this.§3"j§.mClip.addChild(this.§9!5§);
         var _loc2_:int = 0;
         while(_loc2_ < §'""§.getEpisodeCount())
         {
            _loc3_ = §'""§.getEpisode(_loc2_);
            if(!_loc3_.§6!Y§)
            {
               _loc1_ = this.§3#0§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§@2§(_loc1_);
         this.§`D§();
      }
      
      protected function §@2§(param1:Number) : void
      {
         param1 = this.§3#0§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§3#0§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §`D§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!G§.length)
         {
            _loc3_ = new §%!Z§.§;",§("Button_Dot")();
            if(_loc2_ == this.§+"Z§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §4"#§.screenWidth / 2 + _loc1_ - this.§&!G§.length * _loc3_.width / 2;
            _loc3_.y = (§^!b§.getItemByName("Button_Next") as §;g§).y - _loc3_.height / 2;
            this.§3"j§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§7!0§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"b§);
            _loc2_++;
         }
         _loc1_ = this.§&!G§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§^!b§.getItemByName("Button_Next") as §;g§).x = §4"#§.screenWidth / 2;
         (§^!b§.getItemByName("Button_Prev") as §;g§).x = §4"#§.screenWidth / 2;
         (§^!b§.getItemByName("Button_Next") as §;g§).x = (§^!b§.getItemByName("Button_Next") as §;g§).x + (_loc1_ + 10);
         (§^!b§.getItemByName("Button_Prev") as §;g§).x = (§^!b§.getItemByName("Button_Prev") as §;g§).x - (_loc1_ + 10);
      }
      
      protected function §3#0§(param1:String, param2:Number, param3:§5!K§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §%!Z§.§;",§(param1)()).x = param2;
         this.§9!5§.addChild(_loc4_);
         this.§&!G§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§#E§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §4"#§.singleton.dataModel.userProgress.§!!c§(param3) + "/" + §4"#§.singleton.dataModel.userProgress.§=#3§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §4"#§.singleton.dataModel.userProgress.§?!X§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §4"#§.singleton.dataModel.userProgress.§`",§(param3) + "/" + §4"#§.singleton.dataModel.userProgress.§&"^§(param3);
            }
         }
         return param2;
      }
      
      private function §%"b§(param1:MouseEvent) : void
      {
         if(!this.§8#§)
         {
            this.§2"G§(this.§7!0§.indexOf(param1.target));
         }
      }
      
      protected function §#E§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§8#§)
         {
            _loc2_ = this.§&!G§.indexOf(param1.currentTarget);
            if(this.§+"Z§ != _loc2_)
            {
               this.§2"G§(_loc2_);
            }
            else if(_loc2_ < §'""§.getEpisodeCount())
            {
               §'""§.selectEpisode(_loc2_);
               §`0§(§!K§.§-!U§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§7D§();
         this.§##1§();
      }
      
      protected function §##1§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!G§.length)
         {
            _loc2_ = this.§9!5§.x + this.§&!G§[_loc1_].x - §4"#§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§&!G§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§&!G§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§&!G§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§&!G§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §7D§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!0§.length)
         {
            if(-this.§9!5§.x + 800 >= this.§&!G§[_loc1_].x && -this.§5j§ < this.§&!G§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§7!0§.length)
               {
                  this.§7!0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!0§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§9!5§.x + 800 <= this.§&!G§[_loc1_].x && -this.§5j§ > this.§&!G§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§7!0§.length)
               {
                  this.§7!0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!0§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§5j§ = this.§9!5§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §<!J§.§=!%§.clearLevel();
         this.§'p§();
      }
      
      protected function §'p§() : void
      {
         (§^!b§.getItemByName("Button_Back") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "BACK":
               §=Q§.§`!A§("Menu_Back");
               §`0§(§<'§.§-!U§);
               break;
            case "PREV":
               §=Q§.§`!A§("Menu_Confirm");
               if(!this.§8#§)
               {
                  --this.§+"Z§;
                  this.§2"G§(this.§+"Z§);
                  break;
               }
               break;
            case "NEXT":
               §=Q§.§`!A§("Menu_Confirm");
               if(!this.§8#§)
               {
                  ++this.§+"Z§;
                  this.§2"G§(this.§+"Z§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §=Q§.§`!A§("Menu_Confirm");
               §4"#§.singleton.§^L§();
         }
      }
      
      protected function §2"G§(param1:int) : void
      {
         this.§8#§ = true;
         if(param1 > this.§&!G§.length - 1)
         {
            param1 = this.§&!G§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§+"Z§ = param1;
         var _loc2_:Number = -this.§&!G§[param1].x + this.§?5§;
         var _loc3_:Number = this.§9!5§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §;0§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§3!=§ != null)
         {
            this.§3!=§.stop();
         }
         this.§3!=§ = §5!%§.§!6§.§4!M§(this.§9!5§,{"x":_loc2_},null,_loc4_,set.easeOut);
         this.§3!=§.onComplete = this.§7s§;
         this.§3!=§.play();
      }
      
      protected function §7s§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!0§.length)
         {
            if(_loc1_ == this.§+"Z§)
            {
               this.§7!0§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§7!0§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§8#§ = false;
      }
   }
}
