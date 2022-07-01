package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §2!s§.§>!D§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!X§.§7j§;
   import §]!q§.§=;§;
   import §^g§.§8!p§;
   import com.rovio.assets.§1F§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §-G§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionStateBS";
      
      private static const §%!V§:Number = 0.5;
       
      
      private var §`!S§:Sprite;
      
      private var §+Q§:§[!s§;
      
      private var §%q§:Array;
      
      private var §<!^§:Array;
      
      private var §9!Q§:int = 0;
      
      private var §5!M§:Number = 0;
      
      private var §,!P§:Number = 0;
      
      private var §"!A§:Dictionary;
      
      private var §5!Q§:Dictionary;
      
      private var § j§:Array = null;
      
      private var §7!Z§:§=Y§ = null;
      
      private var §=!D§:Boolean = false;
      
      private var §"!'§:Number = 0;
      
      public function §-G§(param1:Boolean, param2:String = "ChapterSelectionStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_ChapterSelectionBS[0]);
         this.§9;§();
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.§1!2§.§-I§(false);
         §7j§.§&t§.§=!A§ = true;
      }
      
      private function §9;§() : void
      {
         this.§+Q§ = §+!$§.getItemByName("Container_ChapterSelection") as §[!s§;
         this.§%q§ = [];
         this.§<!^§ = [];
         var _loc1_:Number = 0;
         this.§`!S§ = new Sprite();
         this.§`!S§.y = AngryBirdsFP11.screenHeight / 2;
         this.§5!M§ = AngryBirdsFP11.screenWidth / 2;
         this.§`!S§.x = this.§5!M§;
         this.§+Q§.mClip.addChild(this.§`!S§);
         this.§5!Q§ = new Dictionary();
         this.§ j§ = new Array();
         var _loc2_:int = 0;
         _loc1_ = this.§0!f§("MovieClip_BS_PigForADay",_loc1_,_loc2_++,"levelOfDay");
         _loc1_ = this.§0!f§("MovieClip_BS_WhatsHot",_loc1_,_loc2_++,"hot");
         _loc1_ = this.§0!f§("MovieClip_BS_WhatsNew",_loc1_,_loc2_++,"latest");
         _loc1_ = this.§0!f§("MovieClip_BS_RandomLevel",_loc1_,_loc2_++,"random");
         _loc1_ = this.§0!f§("MovieClip_BS_BuildLevel",_loc1_,_loc2_++,"build");
         this.§;!?§();
      }
      
      private function §;!?§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§"!A§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%q§.length)
         {
            _loc1_ = §1F§.§"!_§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§9!Q§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%q§.length * _loc2_.width / 2;
            _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
            this.§+Q§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§"!A§[_loc2_] = _loc4_;
            this.§<!^§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            _loc4_++;
         }
         _loc3_ = this.§%q§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
      }
      
      private function §0!f§(param1:String, param2:Number, param3:int, param4:String) : Number
      {
         var _loc5_:Class = null;
         var _loc6_:DisplayObject = null;
         if(§1F§.§"!6§(param1))
         {
            (_loc6_ = new (_loc5_ = §1F§.§"!_§(param1))()).x = param2;
            this.§`!S§.addChild(_loc6_);
            this.§%q§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§5!Q§[_loc6_] = param3;
            this.§ j§[param3] = param4;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§9!&§);
         }
         return param2;
      }
      
      private function §3!M§(param1:MouseEvent) : void
      {
         this.§<M§(this.§"!A§[param1.currentTarget]);
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:String = null;
         if(!this.§=!D§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§9!Q§ != this.§5!Q§[_loc2_])
            {
               this.§<M§(this.§5!Q§[_loc2_]);
            }
            else
            {
               _loc3_ = this.§ j§[this.§5!Q§[_loc2_]];
               if(_loc3_ == "build")
               {
                  §-!D§.§?5§("onOpenEditorSelected");
               }
               else if(_loc3_ != "search")
               {
                  if(_loc3_ != "playerOfWeek")
                  {
                     §=q§.§<!@§ = this.§ j§[this.§5!Q§[_loc2_]];
                     mNextState = §]>§.STATE_NAME;
                  }
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7!>§();
         this.§>u§();
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function §>u§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%q§.length)
         {
            _loc2_ = this.§`!S§.x + this.§%q§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§%q§[_loc1_].scaleX = 1 - _loc2_ / 1000;
            this.§%q§[_loc1_].scaleY = 1 - _loc2_ / 1000;
            this.§%q§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§%q§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §7!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(-this.§`!S§.x + 800 >= this.§%q§[_loc1_].x && -this.§"!'§ < this.§%q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!^§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§`!S§.x + 800 <= this.§%q§[_loc1_].x && -this.§"!'§ > this.§%q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!^§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§"!'§ = this.§`!S§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "BACK":
               §+!§.§4c§("Menu_Back");
               mNextState = §^z§.STATE_NAME;
               break;
            case "PREV":
               §+!§.§4c§("Menu_Confirm");
               this.§<M§(this.§9!Q§ - 1);
               break;
            case "NEXT":
               §+!§.§4c§("Menu_Confirm");
               this.§<M§(this.§9!Q§ + 1);
               break;
            case "FULLSCREEN_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      private function §<M§(param1:int) : void
      {
         if(param1 > this.§%q§.length - 1)
         {
            param1 = this.§%q§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.§9!Q§ == param1)
         {
            this.§=!D§ = false;
            return;
         }
         this.§=!D§ = true;
         this.§9!Q§ = param1;
         var _loc2_:Number = -this.§%q§[param1].x + this.§5!M§;
         var _loc3_:Number = this.§`!S§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §%!V§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§7!Z§ != null && this.§7!Z§.§6e§)
         {
            this.§7!Z§.removeEventListener(§=;§.COMPLETE,this.§1q§);
            this.§7!Z§.stop();
         }
         this.§7!Z§ = §>!D§.§-8§(this.§`!S§,{"x":_loc2_},null,_loc4_,§8!p§.easeOut);
         this.§7!Z§.addEventListener(§=;§.COMPLETE,this.§1q§);
         this.§7!Z§.play();
      }
      
      private function §1q§(param1:§=;§) : void
      {
         this.§7!Z§.removeEventListener(§=;§.COMPLETE,this.§1q§);
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!^§.length)
         {
            if(_loc2_ == this.§9!Q§)
            {
               this.§<!^§[_loc2_].gotoAndStop("Selected");
            }
            else
            {
               this.§<!^§[_loc2_].gotoAndStop("UnSelected");
            }
            _loc2_++;
         }
         this.§=!D§ = false;
      }
   }
}
