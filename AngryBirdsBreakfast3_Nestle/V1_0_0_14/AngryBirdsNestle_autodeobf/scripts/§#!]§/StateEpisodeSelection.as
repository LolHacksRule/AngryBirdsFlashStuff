package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §#!s§.§'H§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §3_§
   {
      
      public static const §]!y§:String = "ChapterSelectionState";
      
      protected static const §3f§:Number = 0.5;
       
      
      protected var §^=§:Sprite;
      
      protected var §const§:§%n§;
      
      protected var §@!x§:Array;
      
      protected var §<r§:Array;
      
      protected var §6!4§:int = 0;
      
      protected var §@Z§:Number = 0;
      
      protected var §[!p§:Number = 0;
      
      protected var §?!4§:§^!T§ = null;
      
      protected var §9W§:Boolean = false;
      
      protected var §-;§:Number = 0;
      
      public function StateEpisodeSelection(param1:§-g§, param2:§^!_§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_ChapterSelection[0]);
         this.§^M§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.§2!J§(false);
         this.§;y§();
      }
      
      protected function §;y§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§4<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!x§)
         {
            _loc3_ = §#n§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §-!2§.§7O§.§ !n§.userProgress.§#§(_loc3_) + "/" + §-!2§.§7O§.§ !n§.userProgress.§6g§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §-!2§.§7O§.§ !n§.userProgress.§-!=§(_loc3_) + "/" + §-!2§.§7O§.§ !n§.userProgress.§^z§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §-!2§.§7O§.§ !n§.userProgress.§3K§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §^M§() : void
      {
         var _loc3_:§4<§ = null;
         this.§const§ = §4!q§.getItemByName("Container_ChapterSelection") as §%n§;
         this.§@!x§ = [];
         this.§<r§ = [];
         var _loc1_:Number = 0;
         this.§^=§ = new Sprite();
         this.§^=§.y = §-!2§.§^s§ / 2;
         this.§@Z§ = §-!2§.§2d§ / 2;
         this.§^=§.x = this.§@Z§;
         this.§const§.mClip.addChild(this.§^=§);
         var _loc2_:int = 0;
         while(_loc2_ < §#n§.getEpisodeCount())
         {
            _loc3_ = §#n§.getEpisode(_loc2_);
            if(!_loc3_.§8"'§)
            {
               _loc1_ = this.§]E§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§"!K§(_loc1_);
         this.§2Y§();
      }
      
      protected function §"!K§(param1:Number) : void
      {
         param1 = this.§]E§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§]E§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §2Y§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!x§.length)
         {
            _loc3_ = new §1!C§.§"!&§("Button_Dot")();
            if(_loc2_ == this.§6!4§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §-!2§.§2d§ / 2 + _loc1_ - this.§@!x§.length * _loc3_.width / 2;
            _loc3_.y = (§4!q§.getItemByName("Button_Next") as § `§).y - _loc3_.height / 2;
            this.§const§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§<r§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!X§);
            _loc2_++;
         }
         _loc1_ = this.§@!x§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§4!q§.getItemByName("Button_Next") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Prev") as § `§).x = §-!2§.§2d§ / 2;
         (§4!q§.getItemByName("Button_Next") as § `§).x = (§4!q§.getItemByName("Button_Next") as § `§).x + (_loc1_ + 10);
         (§4!q§.getItemByName("Button_Prev") as § `§).x = (§4!q§.getItemByName("Button_Prev") as § `§).x - (_loc1_ + 10);
      }
      
      protected function §]E§(param1:String, param2:Number, param3:§4<§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §1!C§.§"!&§(param1)()).x = param2;
         this.§^=§.addChild(_loc4_);
         this.§@!x§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§]H§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §-!2§.§7O§.§ !n§.userProgress.§-!=§(param3) + "/" + §-!2§.§7O§.§ !n§.userProgress.§^z§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §-!2§.§7O§.§ !n§.userProgress.§3K§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §-!2§.§7O§.§ !n§.userProgress.§#§(param3) + "/" + §-!2§.§7O§.§ !n§.userProgress.§6g§(param3);
            }
         }
         return param2;
      }
      
      private function §5!X§(param1:MouseEvent) : void
      {
         if(!this.§9W§)
         {
            this.§!]§(this.§<r§.indexOf(param1.target));
         }
      }
      
      protected function §]H§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§9W§)
         {
            _loc2_ = this.§@!x§.indexOf(param1.currentTarget);
            if(this.§6!4§ != _loc2_)
            {
               this.§!]§(_loc2_);
            }
            else if(_loc2_ < §#n§.getEpisodeCount())
            {
               §#n§.selectEpisode(_loc2_);
               §]a§(§=A§.§]!y§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§'!$§();
         this.§>"0§();
      }
      
      protected function §>"0§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!x§.length)
         {
            _loc2_ = this.§^=§.x + this.§@!x§[_loc1_].x - §-!2§.§2d§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§@!x§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§@!x§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§@!x§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§@!x§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §'!$§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<r§.length)
         {
            if(-this.§^=§.x + 800 >= this.§@!x§[_loc1_].x && -this.§-;§ < this.§@!x§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<r§.length)
               {
                  this.§<r§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<r§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§^=§.x + 800 <= this.§@!x§[_loc1_].x && -this.§-;§ > this.§@!x§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<r§.length)
               {
                  this.§<r§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<r§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§-;§ = this.§^=§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §`i§.§&!L§.clearLevel();
         this.§&"0§();
      }
      
      protected function §&"0§() : void
      {
         (§4!q§.getItemByName("Button_Back") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "BACK":
               §4!@§.§`!w§("Menu_Back");
               §]a§(§@!t§.§]!y§);
               break;
            case "PREV":
               §4!@§.§`!w§("Menu_Confirm");
               if(!this.§9W§)
               {
                  --this.§6!4§;
                  this.§!]§(this.§6!4§);
                  break;
               }
               break;
            case "NEXT":
               §4!@§.§`!w§("Menu_Confirm");
               if(!this.§9W§)
               {
                  ++this.§6!4§;
                  this.§!]§(this.§6!4§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §4!@§.§`!w§("Menu_Confirm");
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §!]§(param1:int) : void
      {
         this.§9W§ = true;
         if(param1 > this.§@!x§.length - 1)
         {
            param1 = this.§@!x§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§6!4§ = param1;
         var _loc2_:Number = -this.§@!x§[param1].x + this.§@Z§;
         var _loc3_:Number = this.§^=§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §3f§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§?!4§ != null)
         {
            this.§?!4§.stop();
         }
         this.§?!4§ = §%"!§.§&!;§.§"!]§(this.§^=§,{"x":_loc2_},null,_loc4_,§'H§.easeOut);
         this.§?!4§.onComplete = this.§`"2§;
         this.§?!4§.play();
      }
      
      protected function §`"2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<r§.length)
         {
            if(_loc1_ == this.§6!4§)
            {
               this.§<r§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§<r§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§9W§ = false;
      }
   }
}
