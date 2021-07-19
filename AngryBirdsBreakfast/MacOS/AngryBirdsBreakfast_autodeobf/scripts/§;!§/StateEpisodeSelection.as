package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §8!O§.§]!n§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §;" §
   {
      
      public static const §-!q§:String = "ChapterSelectionState";
      
      protected static const §9s§:Number = 0.5;
       
      
      protected var §-W§:Sprite;
      
      protected var §]!@§:§"!a§;
      
      protected var §``§:Array;
      
      protected var §>!@§:Array;
      
      protected var §!!d§:int = 0;
      
      protected var §,!D§:Number = 0;
      
      protected var §8d§:Number = 0;
      
      protected var §0!5§:§0]§ = null;
      
      protected var §-_§:Boolean = false;
      
      protected var §2'§:Number = 0;
      
      public function StateEpisodeSelection(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_ChapterSelection[0]);
         this.§'f§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.§"!Q§(false);
         this.§[!z§();
      }
      
      protected function §[!z§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§``§)
         {
            _loc3_ = §&" §.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(_loc3_) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§0B§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §'f§() : void
      {
         var _loc3_:§3%§ = null;
         this.§]!@§ = §?P§.getItemByName("Container_ChapterSelection") as §"!a§;
         this.§``§ = [];
         this.§>!@§ = [];
         var _loc1_:Number = 0;
         this.§-W§ = new Sprite();
         this.§-W§.y = §6!!§.§=!?§ / 2;
         this.§,!D§ = §6!!§.§+g§ / 2;
         this.§-W§.x = this.§,!D§;
         this.§]!@§.mClip.addChild(this.§-W§);
         var _loc2_:int = 0;
         while(_loc2_ < §&" §.getEpisodeCount())
         {
            _loc3_ = §&" §.getEpisode(_loc2_);
            if(!_loc3_.§3F§)
            {
               _loc1_ = this.§;!%§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§,!c§(_loc1_);
         this.§!2§();
      }
      
      protected function §,!c§(param1:Number) : void
      {
         param1 = this.§;!%§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§;!%§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §!2§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§``§.length)
         {
            _loc3_ = new §<V§.§"!,§("Button_Dot")();
            if(_loc2_ == this.§!!d§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §6!!§.§+g§ / 2 + _loc1_ - this.§``§.length * _loc3_.width / 2;
            _loc3_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc3_.height / 2;
            this.§]!@§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§>!@§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
            _loc2_++;
         }
         _loc1_ = this.§``§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
         (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
         (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc1_ + 10);
         (§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc1_ + 10);
      }
      
      protected function §;!%§(param1:String, param2:Number, param3:§3%§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §<V§.§"!,§(param1)()).x = param2;
         this.§-W§.addChild(_loc4_);
         this.§``§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§#!J§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §6!!§.singleton.§<!S§.userProgress.§>u§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§@!"§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§0B§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §6!!§.singleton.§<!S§.userProgress.§;L§(param3) + "/" + §6!!§.singleton.§<!S§.userProgress.§^4§(param3);
            }
         }
         return param2;
      }
      
      private function §#!p§(param1:MouseEvent) : void
      {
         if(!this.§-_§)
         {
            this.§8!1§(this.§>!@§.indexOf(param1.target));
         }
      }
      
      protected function §#!J§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§-_§)
         {
            _loc2_ = this.§``§.indexOf(param1.currentTarget);
            if(this.§!!d§ != _loc2_)
            {
               this.§8!1§(_loc2_);
            }
            else if(_loc2_ < §&" §.getEpisodeCount())
            {
               §&" §.selectEpisode(_loc2_);
               §<f§(§+A§.§-!q§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§@X§();
         this.§]"&§();
      }
      
      protected function §]"&§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§``§.length)
         {
            _loc2_ = this.§-W§.x + this.§``§[_loc1_].x - §6!!§.§+g§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§``§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§``§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§``§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§``§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §@X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!@§.length)
         {
            if(-this.§-W§.x + 800 >= this.§``§[_loc1_].x && -this.§2'§ < this.§``§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>!@§.length)
               {
                  this.§>!@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§>!@§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§-W§.x + 800 <= this.§``§[_loc1_].x && -this.§2'§ > this.§``§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>!@§.length)
               {
                  this.§>!@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§>!@§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§2'§ = this.§-W§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&!"§.§1!D§.clearLevel();
         this.§!;§();
      }
      
      protected function §!;§() : void
      {
         (§?P§.getItemByName("Button_Back") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "BACK":
               §'!c§.§3!f§("Menu_Back");
               §<f§(§8^§.§-!q§);
               break;
            case "PREV":
               §'!c§.§3!f§("Menu_Confirm");
               if(!this.§-_§)
               {
                  --this.§!!d§;
                  this.§8!1§(this.§!!d§);
               }
               break;
            case "NEXT":
               §'!c§.§3!f§("Menu_Confirm");
               if(!this.§-_§)
               {
                  ++this.§!!d§;
                  this.§8!1§(this.§!!d§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §'!c§.§3!f§("Menu_Confirm");
               §6!!§.singleton.§%!O§();
         }
      }
      
      protected function §8!1§(param1:int) : void
      {
         this.§-_§ = true;
         if(param1 > this.§``§.length - 1)
         {
            param1 = this.§``§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§!!d§ = param1;
         var _loc2_:Number = -this.§``§[param1].x + this.§,!D§;
         var _loc3_:Number = this.§-W§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §9s§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§0!5§ != null)
         {
            this.§0!5§.stop();
         }
         this.§0!5§ = §'^§.§2Z§.§!!f§(this.§-W§,{"x":_loc2_},null,_loc4_,§]!n§.easeOut);
         this.§0!5§.onComplete = this.§=!b§;
         this.§0!5§.play();
      }
      
      protected function §=!b§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!@§.length)
         {
            if(_loc1_ == this.§!!d§)
            {
               this.§>!@§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§>!@§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§-_§ = false;
      }
   }
}
