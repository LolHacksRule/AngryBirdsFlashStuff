package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§77§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §6!_§.§+=§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import com.angrybirds.§6U§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §5"#§
   {
      
      public static const §+B§:String = "ChapterSelectionState";
      
      protected static const §@!M§:Number = 0.5;
       
      
      protected var §[!"§:Sprite;
      
      protected var §'t§:§9!'§;
      
      protected var §&a§:Array;
      
      protected var §-s§:Array;
      
      protected var §]"1§:int = 0;
      
      protected var §3o§:Number = 0;
      
      protected var §%c§:Number = 0;
      
      protected var §7p§:§4!N§ = null;
      
      protected var §4H§:Boolean = false;
      
      protected var §-^§:Number = 0;
      
      public function StateEpisodeSelection(param1:§=!o§, param2:§%>§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_ChapterSelection[0]);
         this.§1""§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.§ W§(false);
         this.§3R§();
      }
      
      protected function §3R§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§77§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&a§)
         {
            _loc3_ = §+o§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §-!l§.§"x§.§?"&§.userProgress.§,f§(_loc3_) + "/" + §-!l§.§"x§.§?"&§.userProgress.§@q§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §-!l§.§"x§.§?"&§.userProgress.§=x§(_loc3_) + "/" + §-!l§.§"x§.§?"&§.userProgress.§[m§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §-!l§.§"x§.§?"&§.userProgress.§ !U§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §1""§() : void
      {
         var _loc3_:§77§ = null;
         this.§'t§ = §#2§.getItemByName("Container_ChapterSelection") as §9!'§;
         this.§&a§ = [];
         this.§-s§ = [];
         var _loc1_:Number = 0;
         this.§[!"§ = new Sprite();
         this.§[!"§.y = §-!l§.§-!W§ / 2;
         this.§3o§ = §-!l§.§?g§ / 2;
         this.§[!"§.x = this.§3o§;
         this.§'t§.mClip.addChild(this.§[!"§);
         var _loc2_:int = 0;
         while(_loc2_ < §+o§.getEpisodeCount())
         {
            _loc3_ = §+o§.getEpisode(_loc2_);
            if(!_loc3_.§'v§)
            {
               _loc1_ = this.§8!&§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§+" §(_loc1_);
         this.§5!J§();
      }
      
      protected function §+" §(param1:Number) : void
      {
         param1 = this.§8!&§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§8!&§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §5!J§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&a§.length)
         {
            _loc3_ = new §&!2§.§0!O§("Button_Dot")();
            if(_loc2_ == this.§]"1§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §-!l§.§?g§ / 2 + _loc1_ - this.§&a§.length * _loc3_.width / 2;
            _loc3_.y = (§#2§.getItemByName("Button_Next") as §4!O§).y - _loc3_.height / 2;
            this.§'t§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§-s§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§0"%§);
            _loc2_++;
         }
         _loc1_ = this.§&a§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§#2§.getItemByName("Button_Next") as §4!O§).x = §-!l§.§?g§ / 2;
         (§#2§.getItemByName("Button_Prev") as §4!O§).x = §-!l§.§?g§ / 2;
         (§#2§.getItemByName("Button_Next") as §4!O§).x = (§#2§.getItemByName("Button_Next") as §4!O§).x + (_loc1_ + 10);
         (§#2§.getItemByName("Button_Prev") as §4!O§).x = (§#2§.getItemByName("Button_Prev") as §4!O§).x - (_loc1_ + 10);
      }
      
      protected function §8!&§(param1:String, param2:Number, param3:§77§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §&!2§.§0!O§(param1)()).x = param2;
         this.§[!"§.addChild(_loc4_);
         this.§&a§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§&o§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §-!l§.§"x§.§?"&§.userProgress.§=x§(param3) + "/" + §-!l§.§"x§.§?"&§.userProgress.§[m§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §-!l§.§"x§.§?"&§.userProgress.§ !U§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §-!l§.§"x§.§?"&§.userProgress.§,f§(param3) + "/" + §-!l§.§"x§.§?"&§.userProgress.§@q§(param3);
            }
         }
         return param2;
      }
      
      private function §0"%§(param1:MouseEvent) : void
      {
         if(!this.§4H§)
         {
            this.§&!x§(this.§-s§.indexOf(param1.target));
         }
      }
      
      protected function §&o§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§4H§)
         {
            _loc2_ = this.§&a§.indexOf(param1.currentTarget);
            if(this.§]"1§ != _loc2_)
            {
               this.§&!x§(_loc2_);
            }
            else if(_loc2_ < §+o§.getEpisodeCount())
            {
               §+o§.selectEpisode(_loc2_);
               §0!w§(§]l§.§+B§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§^!§();
         this.§=T§();
      }
      
      protected function §=T§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&a§.length)
         {
            _loc2_ = this.§[!"§.x + this.§&a§[_loc1_].x - §-!l§.§?g§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§&a§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§&a§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§&a§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§&a§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §^!§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-s§.length)
         {
            if(-this.§[!"§.x + 800 >= this.§&a§[_loc1_].x && -this.§-^§ < this.§&a§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-s§.length)
               {
                  this.§-s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§-s§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§[!"§.x + 800 <= this.§&a§[_loc1_].x && -this.§-^§ > this.§&a§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§-s§.length)
               {
                  this.§-s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§-s§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§-^§ = this.§[!"§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §6U§.§+_§.clearLevel();
         this.§%H§();
      }
      
      protected function §%H§() : void
      {
         (§#2§.getItemByName("Button_Back") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3!k§.§]"4§("Menu_Back");
               §0!w§(§#V§.§+B§);
               break;
            case "PREV":
               §3!k§.§]"4§("Menu_Confirm");
               if(!this.§4H§)
               {
                  --this.§]"1§;
                  this.§&!x§(this.§]"1§);
                  break;
               }
               break;
            case "NEXT":
               §3!k§.§]"4§("Menu_Confirm");
               if(!this.§4H§)
               {
                  ++this.§]"1§;
                  this.§&!x§(this.§]"1§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §3!k§.§]"4§("Menu_Confirm");
               §-!l§.§"x§.§3l§();
         }
      }
      
      protected function §&!x§(param1:int) : void
      {
         this.§4H§ = true;
         if(param1 > this.§&a§.length - 1)
         {
            param1 = this.§&a§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§]"1§ = param1;
         var _loc2_:Number = -this.§&a§[param1].x + this.§3o§;
         var _loc3_:Number = this.§[!"§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §@!M§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§7p§ != null)
         {
            this.§7p§.stop();
         }
         this.§7p§ = §0!M§.§?!+§.§3d§(this.§[!"§,{"x":_loc2_},null,_loc4_,§+=§.easeOut);
         this.§7p§.onComplete = this.§]!t§;
         this.§7p§.play();
      }
      
      protected function §]!t§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§-s§.length)
         {
            if(_loc1_ == this.§]"1§)
            {
               this.§-s§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§-s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§4H§ = false;
      }
   }
}
