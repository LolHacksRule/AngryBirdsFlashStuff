package §##§
{
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §5=§.§-+§;
   import §5=§.§^n§;
   import §=8§.§'^§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §!S§ extends §6!M§
   {
      
      public static const §=,§:String = "ChapterSelectionState";
      
      private static const §#!D§:Number = 0.5;
       
      
      private var §9!C§:Sprite;
      
      private var §"g§:§'^§;
      
      private var §#]§:Array;
      
      private var §[!O§:Array;
      
      private var §"!$§:int = 0;
      
      private var §]1§:Number = 0;
      
      private var §[!!§:Number = 0;
      
      private var §+!1§:Dictionary;
      
      private var §9!?§:Dictionary;
      
      private var §implements§:§]H§ = null;
      
      private var §`<§:Boolean = false;
      
      private var §]!#§:Number = 0;
      
      public function §!S§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_ChapterSelection[0]);
         this.§-!0§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§-+§ = null;
         super.activate();
         §2G§.§7!,§.§`!>§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#]§)
         {
            _loc3_ = §^n§.§0!,§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§ ;§.§2!9§(_loc3_) + "/" + AngryBirdsFP11.§ ;§.§3t§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§ ;§.§2B§(_loc3_) + "/" + AngryBirdsFP11.§ ;§.§1K§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§ ;§.§+!J§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §-!0§() : void
      {
         var _loc3_:§-+§ = null;
         var _loc4_:String = null;
         this.§"g§ = § §.getItemByName("Container_ChapterSelection") as §'^§;
         this.§#]§ = [];
         this.§[!O§ = [];
         var _loc1_:Number = 0;
         this.§9!C§ = new Sprite();
         this.§9!C§.y = AngryBirdsFP11.§0!M§ / 2;
         this.§]1§ = AngryBirdsFP11.§4!F§ / 2;
         this.§9!C§.x = this.§]1§;
         this.§"g§.mClip.addChild(this.§9!C§);
         this.§9!?§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §^n§.§;9§())
         {
            _loc3_ = §^n§.§0!,§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§0H§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§0H§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§0H§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§8!8§();
      }
      
      private function §8!8§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§+!1§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#]§.length)
         {
            _loc1_ = §4D§.§,!O§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§"!$§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§4!F§ / 2 + _loc3_ - this.§#]§.length * _loc2_.width / 2;
            _loc2_.y = (§ §.getItemByName("Button_Next") as dynamic).y - _loc2_.height / 2;
            this.§"g§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§+!1§[_loc2_] = _loc4_;
            this.§[!O§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
            _loc4_++;
         }
         _loc3_ = this.§#]§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§ §.getItemByName("Button_Next") as dynamic).x = AngryBirdsFP11.§4!F§ / 2;
         (§ §.getItemByName("Button_Prev") as dynamic).x = AngryBirdsFP11.§4!F§ / 2;
         (§ §.getItemByName("Button_Next") as dynamic).x = (§ §.getItemByName("Button_Next") as dynamic).x + (_loc3_ + 10);
         (§ §.getItemByName("Button_Prev") as dynamic).x = (§ §.getItemByName("Button_Prev") as dynamic).x - (_loc3_ + 10);
      }
      
      private function §0H§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§-+§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§4D§.§9!K§(param1))
         {
            _loc4_ = §^n§.§0!,§(param3);
            (_loc6_ = new (_loc5_ = §4D§.§,!O§(param1))()).x = param2;
            this.§9!C§.addChild(_loc6_);
            this.§#]§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§9!?§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§ !?§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§ ;§.§2B§(_loc4_) + "/" + AngryBirdsFP11.§ ;§.§1K§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§ ;§.§+!J§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§ ;§.§2!9§(_loc4_) + "/" + AngryBirdsFP11.§ ;§.§3t§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §4!E§(param1:MouseEvent) : void
      {
         if(!this.§`<§)
         {
            this.§?z§(this.§+!1§[param1.target]);
         }
      }
      
      private function § !?§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§`<§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§"!$§ != this.§9!?§[_loc2_])
            {
               this.§?z§(this.§9!?§[_loc2_]);
            }
            else if(this.§9!?§[_loc2_] < §^n§.§;9§())
            {
               §^n§.§@W§ = this.§9!?§[_loc2_];
               mNextState = §5!E§.§=,§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`r§();
         this.§^#§();
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      private function §^#§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#]§.length)
         {
            _loc2_ = this.§9!C§.x + this.§#]§[_loc1_].x - AngryBirdsFP11.§4!F§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§#]§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§#]§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§#]§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§#]§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §`r§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!O§.length)
         {
            if(-this.§9!C§.x + 800 >= this.§#]§[_loc1_].x && -this.§]!#§ < this.§#]§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!O§.length)
               {
                  this.§[!O§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!O§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§9!C§.x + 800 <= this.§#]§[_loc1_].x && -this.§]!#§ > this.§#]§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!O§.length)
               {
                  this.§[!O§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!O§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§]!#§ = this.§9!C§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2G§.§7!,§.clearLevel();
         (§ §.getItemByName("Button_Back") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "BACK":
               §9k§.playSound("Menu_Back");
               mNextState = §,r§.§=,§;
               break;
            case "PREV":
               §9k§.playSound("Menu_Confirm");
               if(!this.§`<§)
               {
                  --this.§"!$§;
                  this.§?z§(this.§"!$§);
                  break;
               }
               break;
            case "NEXT":
               §9k§.playSound("Menu_Confirm");
               if(!this.§`<§)
               {
                  ++this.§"!$§;
                  this.§?z§(this.§"!$§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §9k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      private function §?z§(param1:int) : void
      {
         this.§`<§ = true;
         if(param1 > this.§#]§.length - 1)
         {
            param1 = this.§#]§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§"!$§ = param1;
         var _loc2_:Number = -this.§#]§[param1].x + this.§]1§;
         var _loc3_:Number = this.§9!C§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#!D§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§implements§ != null)
         {
            this.§implements§.stop();
         }
         this.§implements§ = §<t§.§4J§.§#q§(this.§9!C§,{"x":_loc2_},null,_loc4_,§<t§.§=!&§);
         this.§implements§.onComplete = this.§0j§;
         this.§implements§.play();
      }
      
      private function §0j§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!O§.length)
         {
            if(_loc1_ == this.§"!$§)
            {
               this.§[!O§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§[!O§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§`<§ = false;
      }
   }
}
