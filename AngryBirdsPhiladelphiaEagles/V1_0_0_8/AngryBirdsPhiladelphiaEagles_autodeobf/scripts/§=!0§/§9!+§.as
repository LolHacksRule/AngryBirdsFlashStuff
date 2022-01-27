package §=!0§
{
   import §!t§.§5b§;
   import §'!3§.§&!H§;
   import §,!1§.§]e§;
   import §-!D§.§1>§;
   import §5F§.§+!O§;
   import §6!L§.§&u§;
   import §6!L§.§7n§;
   import §6k§.§2u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.filters.GlowFilter;
   import flash.ui.Keyboard;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §9!+§ extends §-!,§
   {
      
      public static const §`?§:Array = ["at","vs.","at","vs.","at","vs.","vs.","at","vs.","at","vs.","at","at","vs.","vs.","at"];
      
      public static const §%!B§:Array = ["Cleveland","Baltimore","Arizona","New York","Pittsburgh","Detroit","Atlanta","New Orleans","Dallas","Washington","Carolina","Dallas","Tampa Bay","Cincinnati","Washington","New York"];
      
      public static const §6!F§:Array = ["09/4","09/10","09/17","09/24","10/1","10/8","10/15","10/29","11/6","11/12","11/19","11/27","12/3","12/10","12/14","12/24"];
      
      private static const §set §:Number = 1;
      
      public static const §@§:String = "LevelSelectionState";
      
      private static const §,i§:Number = 0.5;
      
      private static const § n§:Number = 1.5;
      
      private static const §[!;§:Number = 0.1;
      
      private static const §,w§:Number = 0.8;
      
      private static const §?9§:Number = 5;
      
      private static var §4Y§:int = 0;
       
      
      private var §="§:§!l§;
      
      private var §`Z§:§!l§;
      
      private var §3Q§:uint;
      
      private var §-9§:§!l§;
      
      private var §;2§:Vector.<§!l§>;
      
      private var § !C§:Vector.<§5b§>;
      
      private var §`!M§:§2u§;
      
      private var §@Z§:Vector.<GlowFilter> = null;
      
      private var §%x§:Vector.<§!l§> = null;
      
      private var §&N§:int = 0;
      
      private var §4p§:int = 8;
      
      private var §`!<§:int = 2;
      
      private var §6+§:Number = 1;
      
      private var §%a§:int = 0;
      
      private var §9W§:int = 0;
      
      private var §0J§:int = 0;
      
      protected var §,!A§:Boolean = false;
      
      protected var §-D§:§!l§ = null;
      
      private var §57§:int = -1;
      
      public function §9!+§(param1:Boolean, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         var _loc2_:XML = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:§5b§ = null;
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelSelection[0]);
         var _loc1_:int = 0;
         while(_loc1_ < 16)
         {
            _loc5_ = §=!<§.§@!H§(§=!<§.§%!E§ + "1-" + (_loc1_ + 1),true);
            if((_loc6_ = §=!<§.§@!H§(§=!<§.§8B§ + "1-" + (_loc1_ + 1),true)) != null)
            {
               AngryBirdsFP11.§5@§.§2,§("1-" + (_loc1_ + 1),int(_loc6_));
            }
            if(_loc5_ != null)
            {
               AngryBirdsFP11.§5@§.§,!7§("1-" + (_loc1_ + 1),int(_loc5_));
            }
            _loc1_++;
         }
         this.§@Z§ = new Vector.<GlowFilter>(16,true);
         this.§%x§ = new Vector.<§!l§>(16,true);
         this.§ !C§ = new Vector.<§5b§>();
         _loc2_ = <Container/>;
         _loc2_.@name = "Container_LevelSelection_Empty";
         _loc2_.@fromLibrary = "false";
         _loc2_.@visible = "true";
         _loc2_.@scaleH = "true";
         _loc2_.@scaleV = "true";
         this.§`!M§ = new §2u§(_loc2_,§;I§.container,null,null);
         §;I§.container.addComponent(this.§`!M§);
         this.§57§ = §1>§.§@!&§.§ I§();
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 2)
         {
            _loc7_ = _loc4_ * AngryBirdsCustomCanvas.§6!I§;
            _loc1_ = 0;
            while(_loc1_ < 2)
            {
               _loc8_ = 0;
               while(_loc8_ < 4)
               {
                  (_loc9_ = this.§"=§(_loc3_)).x = 125 + _loc8_ * 108 + _loc7_;
                  _loc9_.y = 95 + _loc1_ * 125;
                  this.§`!M§.addComponent(_loc9_);
                  _loc3_++;
                  _loc8_++;
               }
               _loc1_++;
            }
            _loc4_++;
         }
         this.§;2§ = new Vector.<§!l§>(this.§ !C§.length,true);
         §;I§.getItemByName("Button_Next_Left").mClip.alpha = 0;
         §;I§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
      }
      
      override public function activate() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super.activate();
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.start();
         }
         §0!E§.§9!B§.§5!3§(false);
         §0!E§.§9!B§.clearLevel();
         this.§57§ = §1>§.§@!&§.§ I§();
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !C§.length)
         {
            _loc3_ = this.§ !C§[_loc1_].mClip;
            _loc4_ = Math.ceil(_loc1_ / this.§4p§ + 0.01) - 1;
            _loc5_ = int(§=!<§.§@!H§(§=!<§.§"!9§ + "1-" + (_loc1_ + 1),true));
            _loc6_ = AngryBirdsFP11.§5@§.§!W§("1-" + (_loc1_ + 1));
            _loc3_.MovieClip_Stars.gotoAndStop(_loc5_ + "_stars");
            if(_loc6_ > 20)
            {
               _loc6_ = Math.floor(_loc6_ / 20) * 20;
            }
            else if(_loc6_ != 0)
            {
               _loc6_ = 20;
            }
            _loc3_.TextField_LevelNum.text.text = §`?§[_loc1_] + "\n" + §%!B§[_loc1_];
            if(_loc6_ != 0)
            {
               _loc3_.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_Feather.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherTransparent.gotoAndStop("Visible");
               _loc3_.MovieClip_Feather.MovieClip_FeatherMask.height = 68 * (_loc6_ / 100);
               if(_loc6_ >= 100)
               {
                  if(_loc5_ == 3)
                  {
                     _loc3_.Button_IconBackground.gotoAndStop("gold");
                     _loc3_.MovieClip_Feather.gotoAndStop("Hidden");
                  }
               }
            }
            else
            {
               _loc3_.MovieClip_Feather.gotoAndStop("Hidden");
            }
            if(_loc1_ > this.§57§)
            {
               this.§<!7§(_loc1_);
            }
            else
            {
               this.§0!4§(_loc1_);
            }
            _loc1_++;
         }
         this.§`!M§.x = 0;
         this.§`!M§.y = 0;
         if(§4Y§ == 1)
         {
            §;I§.getItemByName("Button_Next_Left").mClip.alpha = 1;
            §;I§.getItemByName("Button_Next_Left").mClip.mouseEnabled = true;
            §;I§.getItemByName("Button_Next_Right").mClip.alpha = 0;
            §;I§.getItemByName("Button_Next_Right").mClip.mouseEnabled = false;
         }
         else
         {
            §;I§.getItemByName("Button_Next_Left").mClip.alpha = 0;
            §;I§.getItemByName("Button_Next_Left").mClip.mouseEnabled = false;
            §;I§.getItemByName("Button_Next_Right").mClip.alpha = 1;
            §;I§.getItemByName("Button_Next_Right").mClip.mouseEnabled = true;
         }
         this.§3Q§ = setInterval(this.§;W§,3000);
         this.§#!#§(§4Y§,true,false);
         §=!<§.§!!!§();
         var _loc2_:String = §=!<§.§@!H§(§=!<§.§+!6§);
         if(_loc2_ != null)
         {
            AngryBirdsFP11.§6x§(Boolean(int(_loc2_)));
         }
         §;I§.getItemByName("MovieClip_SoundsOff").mClip.visible = !AngryBirdsFP11.§?!L§();
      }
      
      private function §;W§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§0J§ == 0)
         {
            _loc1_ = §;I§.getItemByName("Button_Next_Right").mClip;
            this.§-9§ = §5!&§.§@!&§.§%!7§(§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":-§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":-§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":-§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":§?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":0},null,§,w§ / 8,§5!&§.§9!>§));
         }
         else
         {
            _loc1_ = §;I§.getItemByName("Button_Next_Left").mClip;
            this.§-9§ = §5!&§.§@!&§.§%!7§(§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 + §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 - §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 + §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 - §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 + §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 - §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180 + §?9§},null,§,w§ / 8,§5!&§.§9!>§),§5!&§.§@!&§.§9!4§(_loc1_,{"rotation":180},null,§,w§ / 8,§5!&§.§9!>§));
         }
         clearInterval(this.§3Q§);
         var _loc2_:int = Math.round(Math.random() * 3 + 3) * 1000;
         this.§3Q§ = setInterval(this.§;W§,_loc2_);
         this.§-9§.play();
      }
      
      private function §]!&§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < this.§@Z§.length)
         {
            this.§@Z§[_loc1_ - 1] = null;
            _loc2_ = §;I§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§%x§[_loc1_ - 1] is §!l§)
            {
               (this.§%x§[_loc1_ - 1] as §!l§).§?0§();
            }
            this.§%x§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      private function §!n§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ < 16)
         {
            if(this.§@Z§[_loc1_ - 1] != null)
            {
               _loc2_ = §;I§.getItemByName("LevelSelectionIcon" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§@Z§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      private function §]I§(param1:int) : void
      {
         var _loc2_:MovieClip = §;I§.getItemByName("LevelSelectionIcon" + param1).mClip;
         if(this.§%x§[param1 - 1] is §!l§)
         {
            if((this.§%x§[param1 - 1] as §!l§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§@Z§[param1 - 1] == null)
         {
            this.§@Z§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§!l§ = §5!&§.§@!&§.§%!7§(§5!&§.§@!&§.§9!4§(this.§@Z§[param1 - 1],{"strength":4},{"strength":0},§ n§ / 4,§5!&§.§-y§),§5!&§.§@!&§.§9!4§(this.§@Z§[param1 - 1],{"strength":0},{"strength":4},§ n§ / 4,§5!&§.§97§),§5!&§.§@!&§.§9!4§(this.§@Z§[param1 - 1],{"strength":4},{"strength":0},§ n§ / 4,§5!&§.§-y§),§5!&§.§@!&§.§9!4§(this.§@Z§[param1 - 1],{"strength":0},{"strength":4},§ n§ / 4,§5!&§.§97§));
         _loc3_.play();
         this.§%x§[param1 - 1] = _loc3_;
      }
      
      private function §<!7§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§ !C§[param1].mClip;
         _loc2_.Button_IconBackground.gotoAndStop("locked");
         _loc2_.TextField_LevelNum.text.text = §`?§[param1] + "\n" + §%!B§[param1];
         _loc2_.TextField_Date.text.text = §6!F§[param1];
         _loc2_.useHandCursor = false;
      }
      
      private function §0!4§(param1:int) : void
      {
         var _loc2_:MovieClip = this.§ !C§[param1].mClip;
         var _loc3_:* = §;I§.getItemByName("LevelSelectionIcon" + param1).mClip.Button_IconBackground.currentFrameLabel == "gold";
         if(!_loc3_)
         {
            _loc2_.Button_IconBackground.gotoAndStop("Up");
         }
         _loc2_.TextField_LevelNum.text.text = §`?§[param1] + "\n" + §%!B§[param1];
         _loc2_.TextField_Date.text.text = "";
         _loc2_.useHandCursor = true;
         _loc2_.alpha = 1;
      }
      
      protected function §#!#§(param1:int, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         §4Y§ = param1;
         if(this.§,!A§)
         {
            return false;
         }
         this.§,!A§ = true;
         this.§@&§();
         if(param1 > this.§`!<§ - 1)
         {
            param1 = this.§`!<§ - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%a§ = param1;
         if(this.§%a§ > this.§0J§)
         {
            this.§9W§ = this.§0J§ + 1;
         }
         else if(this.§%a§ < this.§0J§)
         {
            this.§9W§ = this.§0J§ - 1;
         }
         var _loc4_:Number;
         var _loc5_:Number = -(_loc4_ = param1 * AngryBirdsCustomCanvas.§6!I§ * this.§6+§);
         var _loc6_:Number = _loc4_ + this.§`!M§.x * this.§6+§;
         var _loc7_:Number = (_loc7_ = (_loc7_ = Math.abs(_loc6_)) / 1024) * §,i§;
         if(this.§-D§ != null)
         {
            this.§-D§.stop();
         }
         if(param2)
         {
            this.§`!M§.x = _loc5_;
            this.§0J§ = param1;
         }
         else
         {
            this.§-D§ = §5!&§.§@!&§.§9!4§(this.§`!M§,{"x":_loc5_},null,§set §,§5!&§.§-y§);
            this.§-D§.onComplete = this.§!!F§;
         }
         if(param3)
         {
            this.§8u§();
         }
         if(param2)
         {
            this.§!!F§();
         }
         else
         {
            this.§-D§.play();
         }
         return true;
      }
      
      private function §@&§() : void
      {
         var _loc1_:§5b§ = §;I§.getItemByName("Button_Sound") as §5b§;
         var _loc2_:§5b§ = §;I§.getItemByName("Button_Credits") as §5b§;
         var _loc3_:§5b§ = §;I§.getItemByName("MovieClip_SoundsOff") as §5b§;
         _loc1_.setVisibility(!_loc1_.visible);
         _loc2_.setVisibility(!_loc2_.visible);
         var _loc4_:Boolean = _loc3_.visible;
         var _loc5_:Boolean = AngryBirdsFP11.§?!L§();
         if(_loc1_.visible)
         {
            if(!_loc5_ && !_loc4_)
            {
               _loc3_.setVisibility(true);
            }
            else if(_loc5_ && _loc4_)
            {
               _loc3_.setVisibility(false);
            }
         }
         else
         {
            _loc3_.setVisibility(false);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§=!<§.§=o§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               if(this.§0J§ == 0)
               {
                  this.§#!#§(1,false);
                  break;
               }
               this.§#!#§(0,false);
               break;
         }
      }
      
      protected function § 0§() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = this.§`!M§.x + _loc1_ * AngryBirdsCustomCanvas.§6!I§ * this.§6+§;
            _loc2_ = Math.abs(_loc2_);
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc4_ = _loc3_;
               if(_loc1_ == 1)
               {
                  _loc4_ += 8;
               }
               _loc5_ = this.§ !C§[_loc4_].mClip;
               if(_loc2_ > 1000)
               {
                  _loc2_ = 1000;
               }
               if(Math.abs(_loc5_.alpha - (1 - _loc2_ / 1000)) > 0.0001)
               {
                  _loc5_.alpha = 1 - _loc2_ / 1000;
                  if(_loc4_ > this.§57§)
                  {
                     if(_loc5_.alpha > 0.5)
                     {
                        this.§<!7§(_loc4_);
                     }
                  }
               }
               _loc3_++;
            }
            _loc1_++;
         }
      }
      
      protected function §!!F§() : void
      {
         this.§@&§();
         this.§,!A§ = false;
         this.§0J§ = this.§9W§;
         var _loc1_:MovieClip = §;I§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §;I§.getItemByName("Button_Next_Right").mClip;
         if(this.§0J§ == 1)
         {
            this.§="§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Button_Next_Left").mClip,{"alpha":1},null,§[!;§);
            this.§="§.onComplete = this.§4!G§;
            this.§="§.play();
            _loc1_.mouseEnabled = true;
         }
         else
         {
            this.§`Z§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Button_Next_Right").mClip,{"alpha":1},null,§[!;§);
            this.§`Z§.onComplete = this.§]!@§;
            this.§`Z§.play();
            _loc2_.mouseEnabled = true;
         }
      }
      
      private function §"=§(param1:int) : §5b§
      {
         var _loc4_:XML = null;
         var _loc2_:Class = §[G§.§6u§("LevelSelectionIcon");
         var _loc3_:MovieClip = new _loc2_();
         _loc3_.Button_IconBackground.gotoAndStop(0);
         _loc3_.TextField_LevelNum.text.text = §`?§[param1] + "\n" + §%!B§[param1];
         (_loc4_ = <Button/>).@name = "LevelSelectionIcon" + param1;
         _loc4_.@fromLibrary = "True";
         _loc4_.@MouseUp = "LevelSelection" + param1;
         _loc4_.@MouseDown = "DownLevelSelection" + param1;
         _loc4_.@MouseOver = "OverLevelSelection" + param1;
         _loc4_.@MouseOut = "OutLevelSelection" + param1;
         _loc4_.@scaleH = "TRUE";
         _loc4_.@scaleV = "TRUE";
         var _loc5_:§5b§ = new §5b§(_loc4_,§;I§.container,_loc3_);
         this.§ !C§.push(_loc5_);
         if(param1 > this.§57§)
         {
            this.§<!7§(param1);
         }
         return _loc5_;
      }
      
      private function § D§(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = 4;
         if(param2 == 0 || param3 == 0)
         {
            return _loc4_;
         }
         if(param1 >= param2)
         {
            _loc4_ = 1;
         }
         else if(param1 >= param3)
         {
            _loc4_ = 2;
         }
         else if(param1 > 0)
         {
            _loc4_ = 3;
         }
         return _loc4_;
      }
      
      override public function deActivate() : void
      {
         var _loc2_:MovieClip = null;
         if(this.§-9§ is §!l§)
         {
            this.§-9§.§?0§();
         }
         this.§-9§ = null;
         clearInterval(this.§3Q§);
         this.§]!&§();
         super.deActivate();
         this.§ !>§();
         this.§,!A§ = false;
         this.§-D§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !C§.length)
         {
            _loc2_ = this.§ !C§[_loc1_].mClip;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
            _loc1_++;
         }
      }
      
      private function § !>§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;2§.length)
         {
            if(this.§;2§[_loc1_] != null)
            {
               this.§;2§[_loc1_].stop();
               this.§;2§[_loc1_] = null;
            }
            _loc1_++;
         }
      }
      
      private function §-!H§(param1:int) : void
      {
         var _loc2_:§7n§ = §&u§.§"!0§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         this.§ 0§();
         this.§6+§ = §;I§.height / AngryBirdsCustomCanvas.§4U§;
         this.§!n§();
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = false;
         if(!this.§,!A§)
         {
            if(param2.indexOf("LEVELSELECTION") >= 0)
            {
               _loc4_ = param2.split("LEVELSELECTION");
               _loc5_ = int(_loc4_[1]);
               _loc6_ = §;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.currentFrameLabel == "gold";
               _loc7_ = _loc5_ > this.§57§;
               switch(_loc4_[0])
               {
                  case "OUT":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        if(this.§;2§[_loc5_] != null)
                        {
                           this.§;2§[_loc5_].stop();
                        }
                        this.§;2§[_loc5_] = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§6+§,
                           "scaleY":this.§6+§
                        },null,0.5,§5!&§.§3!K§);
                        this.§;2§[_loc5_].play();
                     }
                     break;
                  case "OVER":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Over");
                        }
                        if(this.§;2§[_loc5_] != null)
                        {
                           this.§;2§[_loc5_].stop();
                        }
                        this.§;2§[_loc5_] = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip,{
                           "scaleX":this.§6+§ + 0.1 * this.§6+§,
                           "scaleY":this.§6+§ + 0.1 * this.§6+§
                        },null,0.2);
                        this.§;2§[_loc5_].play();
                     }
                     break;
                  case "DOWN":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Down");
                        }
                     }
                     break;
                  case "":
                     if(!_loc7_)
                     {
                        if(!_loc6_)
                        {
                           §;I§.getItemByName("LevelSelectionIcon" + _loc5_).mClip.Button_IconBackground.gotoAndStop("Up");
                        }
                        §]e§.playSound("Menu_Confirm");
                        §&u§.§8v§(§&u§.§"V§("1-" + (_loc5_ + 1)));
                        mNextState = §1!F§.§@§;
                        break;
                     }
                     this.§]I§(_loc5_);
                     break;
               }
            }
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "ONFACEBOOKUP":
                  §=!<§.§4M§.§#u§("ABPhila");
                  break;
               case "ONCREDITSOVER":
                  break;
               case "ONCREDITSUP":
                  mNextState = §9!D§.§@§;
                  break;
               case "ONMOVESELECTIONRIGHT":
                  if(this.§#!#§(1,false))
                  {
                     break;
                  }
                  break;
               case "ONMOVESELECTIONLEFT":
                  if(this.§#!#§(0,false))
                  {
                     break;
                  }
                  break;
               case "TOGGLESOUND":
                  _loc8_ = §;I§.getItemByName("MovieClip_SoundsOff").mClip;
                  _loc9_ = §;I§.getItemByName("Button_Sound").mClip;
                  (_loc8_ as MovieClip).visible = !(_loc8_ as MovieClip).visible;
                  _loc10_ = !AngryBirdsFP11.§?!L§();
                  AngryBirdsFP11.§6x§(_loc10_);
                  §=!<§.§7a§(§=!<§.§+!6§,int(_loc10_));
            }
         }
      }
      
      private function §8u§() : void
      {
         var _loc1_:MovieClip = §;I§.getItemByName("Button_Next_Left").mClip;
         var _loc2_:MovieClip = §;I§.getItemByName("Button_Next_Right").mClip;
         if(_loc1_.alpha != 1)
         {
            this.§`Z§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Button_Next_Right").mClip,{"alpha":0},null,§[!;§);
            this.§`Z§.onComplete = this.§]!@§;
            this.§`Z§.play();
            _loc2_.mouseEnabled = false;
         }
         else
         {
            this.§="§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Button_Next_Left").mClip,{"alpha":0},null,§[!;§);
            this.§="§.onComplete = this.§4!G§;
            this.§="§.play();
            _loc1_.mouseEnabled = false;
         }
      }
      
      private function §4!G§() : void
      {
         this.§="§ = null;
      }
      
      private function §]!@§() : void
      {
         this.§`Z§ = null;
      }
   }
}
