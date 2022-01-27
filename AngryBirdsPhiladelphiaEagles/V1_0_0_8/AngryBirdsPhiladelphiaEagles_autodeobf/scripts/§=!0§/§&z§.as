package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §,!1§.§]e§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §6!L§.§7n§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §&z§ extends §-!,§
   {
      
      public static const §@§:String = "ChapterSelectionState";
      
      private static const §,i§:Number = 0.5;
       
      
      private var §'4§:Sprite;
      
      private var §,d§:§;1§;
      
      private var §<! §:Array;
      
      private var §0f§:Array;
      
      private var §3!#§:int = 0;
      
      private var §2R§:Number = 0;
      
      private var § J§:Number = 0;
      
      private var include:Dictionary;
      
      private var §8P§:Dictionary;
      
      private var §-D§:§!l§ = null;
      
      private var §]y§:Boolean = false;
      
      private var §'=§:Number = 0;
      
      public function §&z§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_ChapterSelection[0]);
         this.§!!G§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§7n§ = null;
         super.activate();
         §0!E§.§9!B§.§5!3§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<! §)
         {
            _loc3_ = §&u§.§"!0§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§5@§.§#!H§(_loc3_) + "/" + AngryBirdsFP11.§5@§.§3`§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§5@§.§'I§(_loc3_) + "/" + AngryBirdsFP11.§5@§.§!%§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§5@§.§<6§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §!!G§() : void
      {
         var _loc3_:§7n§ = null;
         var _loc4_:String = null;
         this.§,d§ = §;I§.getItemByName("Container_ChapterSelection") as §;1§;
         this.§<! § = [];
         this.§0f§ = [];
         var _loc1_:Number = 0;
         this.§'4§ = new Sprite();
         this.§'4§.y = AngryBirdsFP11.§3!§ / 2;
         this.§2R§ = AngryBirdsFP11.§1C§ / 2;
         this.§'4§.x = this.§2R§;
         this.§,d§.mClip.addChild(this.§'4§);
         this.§8P§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §&u§.§=^§())
         {
            _loc3_ = §&u§.§"!0§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§1!O§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§1!O§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§1!O§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§4L§();
      }
      
      private function §4L§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.include = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§<! §.length)
         {
            _loc1_ = §[G§.§6u§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§3!#§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§1C§ / 2 + _loc3_ - this.§<! §.length * _loc2_.width / 2;
            _loc2_.y = (§;I§.getItemByName("Button_Next") as §5b§).y - _loc2_.height / 2;
            this.§,d§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.include[_loc2_] = _loc4_;
            this.§0f§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4e§);
            _loc4_++;
         }
         _loc3_ = this.§<! §.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§;I§.getItemByName("Button_Next") as §5b§).x = AngryBirdsFP11.§1C§ / 2;
         (§;I§.getItemByName("Button_Prev") as §5b§).x = AngryBirdsFP11.§1C§ / 2;
         (§;I§.getItemByName("Button_Next") as §5b§).x = (§;I§.getItemByName("Button_Next") as §5b§).x + (_loc3_ + 10);
         (§;I§.getItemByName("Button_Prev") as §5b§).x = (§;I§.getItemByName("Button_Prev") as §5b§).x - (_loc3_ + 10);
      }
      
      private function §1!O§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§7n§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§[G§.§`L§(param1))
         {
            _loc4_ = §&u§.§"!0§(param3);
            (_loc6_ = new (_loc5_ = §[G§.§6u§(param1))()).x = param2;
            this.§'4§.addChild(_loc6_);
            this.§<! §.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§8P§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§-!§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§5@§.§'I§(_loc4_) + "/" + AngryBirdsFP11.§5@§.§!%§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§5@§.§<6§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§5@§.§#!H§(_loc4_) + "/" + AngryBirdsFP11.§5@§.§3`§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §4e§(param1:MouseEvent) : void
      {
         if(!this.§]y§)
         {
            this.§36§(this.include[param1.target]);
         }
      }
      
      private function §-!§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§]y§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§3!#§ != this.§8P§[_loc2_])
            {
               this.§36§(this.§8P§[_loc2_]);
            }
            else if(this.§8P§[_loc2_] < §&u§.§=^§())
            {
               §&u§.§@!#§ = this.§8P§[_loc2_];
               mNextState = §?!G§.§@§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§54§();
         this.§'"§();
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      private function §'"§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<! §.length)
         {
            _loc2_ = this.§'4§.x + this.§<! §[_loc1_].x - AngryBirdsFP11.§1C§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§<! §[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§<! §[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§<! §[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§<! §[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §54§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0f§.length)
         {
            if(-this.§'4§.x + 800 >= this.§<! §[_loc1_].x && -this.§'=§ < this.§<! §[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0f§.length)
               {
                  this.§0f§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0f§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§'4§.x + 800 <= this.§<! §[_loc1_].x && -this.§'=§ > this.§<! §[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0f§.length)
               {
                  this.§0f§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0f§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§'=§ = this.§'4§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §0!E§.§9!B§.clearLevel();
         (§;I§.getItemByName("Button_Back") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "BACK":
               §]e§.playSound("Menu_Back");
               mNextState = §"Y§.§@§;
               break;
            case "PREV":
               §]e§.playSound("Menu_Confirm");
               if(!this.§]y§)
               {
                  --this.§3!#§;
                  this.§36§(this.§3!#§);
                  break;
               }
               break;
            case "NEXT":
               §]e§.playSound("Menu_Confirm");
               if(!this.§]y§)
               {
                  ++this.§3!#§;
                  this.§36§(this.§3!#§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §]e§.playSound("Menu_Confirm");
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      private function §36§(param1:int) : void
      {
         this.§]y§ = true;
         if(param1 > this.§<! §.length - 1)
         {
            param1 = this.§<! §.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§3!#§ = param1;
         var _loc2_:Number = -this.§<! §[param1].x + this.§2R§;
         var _loc3_:Number = this.§'4§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §,i§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§-D§ != null)
         {
            this.§-D§.stop();
         }
         this.§-D§ = §5!&§.§@!&§.§9!4§(this.§'4§,{"x":_loc2_},null,_loc4_,§5!&§.§-y§);
         this.§-D§.onComplete = this.§4u§;
         this.§-D§.play();
      }
      
      private function §4u§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0f§.length)
         {
            if(_loc1_ == this.§3!#§)
            {
               this.§0f§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§0f§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§]y§ = false;
      }
   }
}
