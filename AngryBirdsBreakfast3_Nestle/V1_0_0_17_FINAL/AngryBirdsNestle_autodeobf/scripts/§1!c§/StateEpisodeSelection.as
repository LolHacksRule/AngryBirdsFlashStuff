package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'!W§.§=!'§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §7X§
   {
      
      public static const §8"%§:String = "ChapterSelectionState";
      
      protected static const §+"0§:Number = 0.5;
       
      
      protected var §^L§:Sprite;
      
      protected var §@#§:§,6§;
      
      protected var §[",§:Array;
      
      protected var §^"%§:Array;
      
      protected var §-""§:int = 0;
      
      protected var §'X§:Number = 0;
      
      protected var §?! §:Number = 0;
      
      protected var §,!i§:§]W§ = null;
      
      protected var §!;§:Boolean = false;
      
      protected var §?!C§:Number = 0;
      
      public function StateEpisodeSelection(param1:§0![§, param2:§+f§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_ChapterSelection[0]);
         this.§2!b§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.§`!V§(false);
         this.§<!w§();
      }
      
      protected function §<!w§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§7C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[",§)
         {
            _loc3_ = §4a§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§+w§(_loc3_) + "/" + § !4§.§%"7§.§@D§.userProgress.§#D§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = § !4§.§%"7§.§@D§.userProgress.§1!L§(_loc3_) + "/" + § !4§.§%"7§.§@D§.userProgress.§"!N§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§;l§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §2!b§() : void
      {
         var _loc3_:§7C§ = null;
         this.§@#§ = §^!T§.getItemByName("Container_ChapterSelection") as §,6§;
         this.§[",§ = [];
         this.§^"%§ = [];
         var _loc1_:Number = 0;
         this.§^L§ = new Sprite();
         this.§^L§.y = § !4§.§,n§ / 2;
         this.§'X§ = § !4§.§&v§ / 2;
         this.§^L§.x = this.§'X§;
         this.§@#§.mClip.addChild(this.§^L§);
         var _loc2_:int = 0;
         while(_loc2_ < §4a§.getEpisodeCount())
         {
            _loc3_ = §4a§.getEpisode(_loc2_);
            if(!_loc3_.§%!u§)
            {
               _loc1_ = this.§[%§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§7!j§(_loc1_);
         this.§>"'§();
      }
      
      protected function §7!j§(param1:Number) : void
      {
         param1 = this.§[%§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§[%§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §>"'§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[",§.length)
         {
            _loc3_ = new §=!V§.§?!O§("Button_Dot")();
            if(_loc2_ == this.§-""§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = § !4§.§&v§ / 2 + _loc1_ - this.§[",§.length * _loc3_.width / 2;
            _loc3_.y = (§^!T§.getItemByName("Button_Next") as §]"%§).y - _loc3_.height / 2;
            this.§@#§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§^"%§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§9j§);
            _loc2_++;
         }
         _loc1_ = this.§[",§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§^!T§.getItemByName("Button_Next") as §]"%§).x = § !4§.§&v§ / 2;
         (§^!T§.getItemByName("Button_Prev") as §]"%§).x = § !4§.§&v§ / 2;
         (§^!T§.getItemByName("Button_Next") as §]"%§).x = (§^!T§.getItemByName("Button_Next") as §]"%§).x + (_loc1_ + 10);
         (§^!T§.getItemByName("Button_Prev") as §]"%§).x = (§^!T§.getItemByName("Button_Prev") as §]"%§).x - (_loc1_ + 10);
      }
      
      protected function §[%§(param1:String, param2:Number, param3:§7C§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §=!V§.§?!O§(param1)()).x = param2;
         this.§^L§.addChild(_loc4_);
         this.§[",§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§6t§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = § !4§.§%"7§.§@D§.userProgress.§1!L§(param3) + "/" + § !4§.§%"7§.§@D§.userProgress.§"!N§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§;l§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = § !4§.§%"7§.§@D§.userProgress.§+w§(param3) + "/" + § !4§.§%"7§.§@D§.userProgress.§#D§(param3);
            }
         }
         return param2;
      }
      
      private function §9j§(param1:MouseEvent) : void
      {
         if(!this.§!;§)
         {
            this.§`d§(this.§^"%§.indexOf(param1.target));
         }
      }
      
      protected function §6t§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§!;§)
         {
            _loc2_ = this.§[",§.indexOf(param1.currentTarget);
            if(this.§-""§ != _loc2_)
            {
               this.§`d§(_loc2_);
            }
            else if(_loc2_ < §4a§.getEpisodeCount())
            {
               §4a§.selectEpisode(_loc2_);
               §7"6§(§^j§.§8"%§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§8+§();
         this.§]!-§();
      }
      
      protected function §]!-§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[",§.length)
         {
            _loc2_ = this.§^L§.x + this.§[",§[_loc1_].x - § !4§.§&v§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§[",§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§[",§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§[",§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§[",§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §8+§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"%§.length)
         {
            if(-this.§^L§.x + 800 >= this.§[",§[_loc1_].x && -this.§?!C§ < this.§[",§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^"%§.length)
               {
                  this.§^"%§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^"%§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§^L§.x + 800 <= this.§[",§[_loc1_].x && -this.§?!C§ > this.§[",§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^"%§.length)
               {
                  this.§^"%§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^"%§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§?!C§ = this.§^L§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §@!S§.§2A§.clearLevel();
         this.§`!`§();
      }
      
      protected function §`!`§() : void
      {
         (§^!T§.getItemByName("Button_Back") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "BACK":
               §>D§.§9!q§("Menu_Back");
               §7"6§(§`!z§.§8"%§);
               break;
            case "PREV":
               §>D§.§9!q§("Menu_Confirm");
               if(!this.§!;§)
               {
                  --this.§-""§;
                  this.§`d§(this.§-""§);
                  break;
               }
               break;
            case "NEXT":
               §>D§.§9!q§("Menu_Confirm");
               if(!this.§!;§)
               {
                  ++this.§-""§;
                  this.§`d§(this.§-""§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §>D§.§9!q§("Menu_Confirm");
               § !4§.§%"7§.§]!;§();
         }
      }
      
      protected function §`d§(param1:int) : void
      {
         this.§!;§ = true;
         if(param1 > this.§[",§.length - 1)
         {
            param1 = this.§[",§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§-""§ = param1;
         var _loc2_:Number = -this.§[",§[param1].x + this.§'X§;
         var _loc3_:Number = this.§^L§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §+"0§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§,!i§ != null)
         {
            this.§,!i§.stop();
         }
         this.§,!i§ = §0!o§.§,2§.§4!t§(this.§^L§,{"x":_loc2_},null,_loc4_,§=!'§.easeOut);
         this.§,!i§.onComplete = this.§[!=§;
         this.§,!i§.play();
      }
      
      protected function §[!=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^"%§.length)
         {
            if(_loc1_ == this.§-""§)
            {
               this.§^"%§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§^"%§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§!;§ = false;
      }
   }
}
