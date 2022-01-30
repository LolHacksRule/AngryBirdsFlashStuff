package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0E§.§-!F§;
   import §0E§.§<a§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §3=§ extends §,v§
   {
      
      public static const §8n§:String = "ChapterSelectionState";
      
      private static const §=!W§:Number = 0.5;
       
      
      private var §3">§:Sprite;
      
      private var §!#§:§+!?§;
      
      private var §+!@§:Array;
      
      private var override:Array;
      
      private var §=!f§:int = 0;
      
      private var §+Q§:Number = 0;
      
      private var §?j§:Number = 0;
      
      private var §@!+§:Dictionary;
      
      private var §>T§:Dictionary;
      
      private var §]V§:§+I§ = null;
      
      private var §!9§:Boolean = false;
      
      private var §9!"§:Number = 0;
      
      public function §3=§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_ChapterSelection[0]);
         this.§4E§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§<a§ = null;
         super.activate();
         §%W§.§5"8§.§'N§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+!@§)
         {
            _loc3_ = §-!F§.§#3§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§`!j§.§>U§(_loc3_) + "/" + AngryBirdsFP11.§`!j§.§=L§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`!j§.§5!k§(_loc3_) + "/" + AngryBirdsFP11.§`!j§.§ "'§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§`!j§.§63§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §4E§() : void
      {
         var _loc3_:§<a§ = null;
         var _loc4_:String = null;
         this.§!#§ = §?F§.getItemByName("Container_ChapterSelection") as §+!?§;
         this.§+!@§ = [];
         this.override = [];
         var _loc1_:Number = 0;
         this.§3">§ = new Sprite();
         this.§3">§.y = AngryBirdsFP11.§%T§ / 2;
         this.§+Q§ = AngryBirdsFP11.§<J§ / 2;
         this.§3">§.x = this.§+Q§;
         this.§!#§.mClip.addChild(this.§3">§);
         this.§>T§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §-!F§.§"![§())
         {
            _loc3_ = §-!F§.§#3§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§9l§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§9l§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§9l§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§+y§();
      }
      
      private function §+y§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§@!+§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!@§.length)
         {
            _loc1_ = §!"'§.§%!Q§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§=!f§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§<J§ / 2 + _loc3_ - this.§+!@§.length * _loc2_.width / 2;
            _loc2_.y = (§?F§.getItemByName("Button_Next") as §;!Z§).y - _loc2_.height / 2;
            this.§!#§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§@!+§[_loc2_] = _loc4_;
            this.override.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!b§);
            _loc4_++;
         }
         _loc3_ = this.§+!@§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§?F§.getItemByName("Button_Next") as §;!Z§).x = AngryBirdsFP11.§<J§ / 2;
         (§?F§.getItemByName("Button_Prev") as §;!Z§).x = AngryBirdsFP11.§<J§ / 2;
         (§?F§.getItemByName("Button_Next") as §;!Z§).x = (§?F§.getItemByName("Button_Next") as §;!Z§).x + (_loc3_ + 10);
         (§?F§.getItemByName("Button_Prev") as §;!Z§).x = (§?F§.getItemByName("Button_Prev") as §;!Z§).x - (_loc3_ + 10);
      }
      
      private function §9l§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§<a§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§!"'§.§+9§(param1))
         {
            _loc4_ = §-!F§.§#3§(param3);
            (_loc6_ = new (_loc5_ = §!"'§.§%!Q§(param1))()).x = param2;
            this.§3">§.addChild(_loc6_);
            this.§+!@§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§>T§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§#!P§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§`!j§.§5!k§(_loc4_) + "/" + AngryBirdsFP11.§`!j§.§ "'§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§`!j§.§63§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§`!j§.§>U§(_loc4_) + "/" + AngryBirdsFP11.§`!j§.§=L§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §0!b§(param1:MouseEvent) : void
      {
         if(!this.§!9§)
         {
            this.§2!i§(this.§@!+§[param1.target]);
         }
      }
      
      private function §#!P§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§!9§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§=!f§ != this.§>T§[_loc2_])
            {
               this.§2!i§(this.§>T§[_loc2_]);
            }
            else if(this.§>T§[_loc2_] < §-!F§.§"![§())
            {
               §-!F§.§4"=§ = this.§>T§[_loc2_];
               mNextState = §+!F§.§8n§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`!Z§();
         this.§=!V§();
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      private function §=!V§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!@§.length)
         {
            _loc2_ = this.§3">§.x + this.§+!@§[_loc1_].x - AngryBirdsFP11.§<J§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§+!@§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§+!@§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§+!@§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§+!@§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §`!Z§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.override.length)
         {
            if(-this.§3">§.x + 800 >= this.§+!@§[_loc1_].x && -this.§9!"§ < this.§+!@§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.override.length)
               {
                  this.override[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.override[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§3">§.x + 800 <= this.§+!@§[_loc1_].x && -this.§9!"§ > this.§+!@§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.override.length)
               {
                  this.override[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.override[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§9!"§ = this.§3">§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §%W§.§5"8§.clearLevel();
         (§?F§.getItemByName("Button_Back") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "BACK":
               §^k§.playSound("Menu_Back");
               mNextState = §^u§.§8n§;
               break;
            case "PREV":
               §^k§.playSound("Menu_Confirm");
               if(!this.§!9§)
               {
                  --this.§=!f§;
                  this.§2!i§(this.§=!f§);
                  break;
               }
               break;
            case "NEXT":
               §^k§.playSound("Menu_Confirm");
               if(!this.§!9§)
               {
                  ++this.§=!f§;
                  this.§2!i§(this.§=!f§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §^k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      private function §2!i§(param1:int) : void
      {
         this.§!9§ = true;
         if(param1 > this.§+!@§.length - 1)
         {
            param1 = this.§+!@§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=!f§ = param1;
         var _loc2_:Number = -this.§+!@§[param1].x + this.§+Q§;
         var _loc3_:Number = this.§3">§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §=!W§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§]V§ != null)
         {
            this.§]V§.stop();
         }
         this.§]V§ = §-!M§.§ "!§.§+d§(this.§3">§,{"x":_loc2_},null,_loc4_,§-!M§.§5",§);
         this.§]V§.onComplete = this.§<!h§;
         this.§]V§.play();
      }
      
      private function §<!h§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.override.length)
         {
            if(_loc1_ == this.§=!f§)
            {
               this.override[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.override[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§!9§ = false;
      }
   }
}
