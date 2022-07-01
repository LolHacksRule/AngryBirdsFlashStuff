package §,#§
{
   import §"!G§.§3!f§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§,!M§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §`!§.§>`§;
   import com.angrybirds.§4"6§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §@!4§
   {
      
      public static const §'u§:String = "ChapterSelectionState";
      
      protected static const §9!n§:Number = 0.5;
       
      
      protected var §&G§:Sprite;
      
      protected var §]!K§:§^!i§;
      
      protected var §&"-§:Array;
      
      protected var §8!>§:Array;
      
      protected var §6!?§:int = 0;
      
      protected var §["#§:Number = 0;
      
      protected var §'e§:Number = 0;
      
      protected var §?!l§:§["$§ = null;
      
      protected var §#4§:Boolean = false;
      
      protected var §8"5§:Number = 0;
      
      public function StateEpisodeSelection(param1:§3"&§, param2:§3!f§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_ChapterSelection[0]);
         this.§1f§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.§7!X§(false);
         this.§-!m§();
      }
      
      protected function §-!m§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§,!M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&"-§)
         {
            _loc3_ = §!3§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §-O§.§5!1§.§]u§.userProgress.§,!q§(_loc3_) + "/" + §-O§.§5!1§.§]u§.userProgress.§'5§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §-O§.§5!1§.§]u§.userProgress.§=M§(_loc3_) + "/" + §-O§.§5!1§.§]u§.userProgress.§4V§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §-O§.§5!1§.§]u§.userProgress.§," §(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §1f§() : void
      {
         var _loc3_:§,!M§ = null;
         this.§]!K§ = §^!6§.getItemByName("Container_ChapterSelection") as §^!i§;
         this.§&"-§ = [];
         this.§8!>§ = [];
         var _loc1_:Number = 0;
         this.§&G§ = new Sprite();
         this.§&G§.y = §-O§.§^,§ / 2;
         this.§["#§ = §-O§.§"!V§ / 2;
         this.§&G§.x = this.§["#§;
         this.§]!K§.mClip.addChild(this.§&G§);
         var _loc2_:int = 0;
         while(_loc2_ < §!3§.getEpisodeCount())
         {
            _loc3_ = §!3§.getEpisode(_loc2_);
            if(!_loc3_.§,t§)
            {
               _loc1_ = this.§1;§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§#!1§(_loc1_);
         this.§!2§();
      }
      
      protected function §#!1§(param1:Number) : void
      {
         param1 = this.§1;§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§1;§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §!2§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&"-§.length)
         {
            _loc3_ = new §2"&§.§<$§("Button_Dot")();
            if(_loc2_ == this.§6!?§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §-O§.§"!V§ / 2 + _loc1_ - this.§&"-§.length * _loc3_.width / 2;
            _loc3_.y = (§^!6§.getItemByName("Button_Next") as §9!M§).y - _loc3_.height / 2;
            this.§]!K§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§8!>§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!z§);
            _loc2_++;
         }
         _loc1_ = this.§&"-§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§^!6§.getItemByName("Button_Next") as §9!M§).x = §-O§.§"!V§ / 2;
         (§^!6§.getItemByName("Button_Prev") as §9!M§).x = §-O§.§"!V§ / 2;
         (§^!6§.getItemByName("Button_Next") as §9!M§).x = (§^!6§.getItemByName("Button_Next") as §9!M§).x + (_loc1_ + 10);
         (§^!6§.getItemByName("Button_Prev") as §9!M§).x = (§^!6§.getItemByName("Button_Prev") as §9!M§).x - (_loc1_ + 10);
      }
      
      protected function §1;§(param1:String, param2:Number, param3:§,!M§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §2"&§.§<$§(param1)()).x = param2;
         this.§&G§.addChild(_loc4_);
         this.§&"-§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§#!R§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §-O§.§5!1§.§]u§.userProgress.§=M§(param3) + "/" + §-O§.§5!1§.§]u§.userProgress.§4V§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §-O§.§5!1§.§]u§.userProgress.§," §(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §-O§.§5!1§.§]u§.userProgress.§,!q§(param3) + "/" + §-O§.§5!1§.§]u§.userProgress.§'5§(param3);
            }
         }
         return param2;
      }
      
      private function §^!z§(param1:MouseEvent) : void
      {
         if(!this.§#4§)
         {
            this.§7!I§(this.§8!>§.indexOf(param1.target));
         }
      }
      
      protected function §#!R§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§#4§)
         {
            _loc2_ = this.§&"-§.indexOf(param1.currentTarget);
            if(this.§6!?§ != _loc2_)
            {
               this.§7!I§(_loc2_);
            }
            else if(_loc2_ < §!3§.getEpisodeCount())
            {
               §!3§.selectEpisode(_loc2_);
               §'"6§(§=%§.§'u§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§4P§();
         this.§^Z§();
      }
      
      protected function §^Z§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&"-§.length)
         {
            _loc2_ = this.§&G§.x + this.§&"-§[_loc1_].x - §-O§.§"!V§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§&"-§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§&"-§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§&"-§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§&"-§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §4P§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!>§.length)
         {
            if(-this.§&G§.x + 800 >= this.§&"-§[_loc1_].x && -this.§8"5§ < this.§&"-§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!>§.length)
               {
                  this.§8!>§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8!>§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§&G§.x + 800 <= this.§&"-§[_loc1_].x && -this.§8"5§ > this.§&"-§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§8!>§.length)
               {
                  this.§8!>§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§8!>§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§8"5§ = this.§&G§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4"6§.§;!k§.clearLevel();
         this.§'"%§();
      }
      
      protected function §'"%§() : void
      {
         (§^!6§.getItemByName("Button_Back") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "BACK":
               §]d§.§^!J§("Menu_Back");
               §'"6§(§&3§.§'u§);
               break;
            case "PREV":
               §]d§.§^!J§("Menu_Confirm");
               if(!this.§#4§)
               {
                  --this.§6!?§;
                  this.§7!I§(this.§6!?§);
                  break;
               }
               break;
            case "NEXT":
               §]d§.§^!J§("Menu_Confirm");
               if(!this.§#4§)
               {
                  ++this.§6!?§;
                  this.§7!I§(this.§6!?§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §]d§.§^!J§("Menu_Confirm");
               §-O§.§5!1§.§0`§();
         }
      }
      
      protected function §7!I§(param1:int) : void
      {
         this.§#4§ = true;
         if(param1 > this.§&"-§.length - 1)
         {
            param1 = this.§&"-§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§6!?§ = param1;
         var _loc2_:Number = -this.§&"-§[param1].x + this.§["#§;
         var _loc3_:Number = this.§&G§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §9!n§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§?!l§ != null)
         {
            this.§?!l§.stop();
         }
         this.§?!l§ = §6!u§.§"e§.§0!O§(this.§&G§,{"x":_loc2_},null,_loc4_,§>`§.easeOut);
         this.§?!l§.onComplete = this.§,"8§;
         this.§?!l§.play();
      }
      
      protected function §,"8§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8!>§.length)
         {
            if(_loc1_ == this.§6!?§)
            {
               this.§8!>§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§8!>§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§#4§ = false;
      }
   }
}
