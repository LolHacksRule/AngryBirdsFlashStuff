package §-"e§
{
   import § ""§.§-&§;
   import § "v§.§4$4§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §+Z§.§ ![§;
   import §0!>§.§ !b§;
   import §2$;§.§!"e§;
   import §2$;§.§=!Z§;
   import §4#l§.§8#E§;
   import §6!J§.§8U§;
   import §<"I§.GlitterParticle;
   import §<8§.§6!1§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §?$#§.§2!"§;
   import §?$#§.§]"]§;
   import §?$#§.§^#j§;
   import §?o§.§4#?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §!"=§ extends EventDispatcher
   {
      
      public static const §7#M§:Boolean = true;
      
      private static const §'"O§:Number = 160;
      
      private static const §,!#§:Number = 60;
      
      private static const §0x§:int = 4;
      
      private static const §^"A§:Number = 12;
      
      private static const § #L§:Number = 22;
      
      private static const §%S§:Number = 40;
      
      private static const §%J§:Number = 40;
      
      private static var §&#x§:String = "default";
      
      public static var §<S§:Boolean = false;
      
      private static const §[#K§:int = 700;
       
      
      private var §=#C§:Boolean = false;
      
      private var §!^§:§ !b§;
      
      protected var §@!D§:§!"e§;
      
      private var mLevelManager:§4#?§;
      
      private var §0§:§6!1§;
      
      private var §^#'§:§6!1§;
      
      private var §>>§:Number;
      
      private var §5#A§:Number;
      
      private var §-2§:int = 59;
      
      private var §1k§:int = 76;
      
      private var §3R§:int = 8;
      
      private var §&#Q§:int = 5;
      
      private var §%"t§:Sprite;
      
      private var §9!-§:§^#i§;
      
      private var §7!7§:§8U§;
      
      private var §-!Q§:Timer;
      
      public function §!"=§(param1:§!"e§, param2:§4#?§)
      {
         super();
         this.§@!D§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §!$#§() : String
      {
         return §&#x§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§%!q§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^#e§,false,0,true);
         var _loc1_:int = §[9§.§!#§();
         if(_loc1_ > §0x§)
         {
            _loc1_ = §0x§;
         }
         _loc2_ = Math.ceil(§[9§.§!#§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§>>§ = §^"A§ + this.§1k§ * _loc2_ + this.§3R§ * _loc3_ + §^"A§;
         this.§5#A§ = § #L§ + this.§-2§ * _loc1_ + _loc4_ * this.§&#Q§ + § #L§;
         this.§@!D§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§0§ = this.§@!D§.getItemByName("Container_Slingshot_Buttons");
         this.§^#'§ = this.§@!D§.getItemByName("Button_Slingshot");
         this.§%"t§ = new Sprite();
         this.§%"t§.graphics.beginFill(0);
         this.§%"t§.graphics.lineTo(0,this.§>>§ - §%J§);
         this.§%"t§.graphics.curveTo(0,this.§>>§,§%J§,this.§>>§);
         this.§%"t§.graphics.lineTo(this.§5#A§ - §%J§,this.§>>§);
         this.§%"t§.graphics.curveTo(this.§5#A§,this.§>>§,this.§5#A§,this.§>>§ - §%J§);
         this.§%"t§.graphics.lineTo(this.§5#A§,§%J§);
         this.§%"t§.graphics.curveTo(this.§5#A§,0,this.§5#A§ - §%J§,0);
         this.§%"t§.graphics.lineTo(0,0);
         this.§%"t§.graphics.endFill();
         this.§%"t§.x = §%S§;
         this.§%"t§.y = §'"O§;
         this.§%"t§.alpha = 0.5;
         this.§%"t§.scale9Grid = new Rectangle(§%J§,§%J§,this.§5#A§ - §%J§ * 2,this.§>>§ - §%J§ * 2);
         this.§0§.mClip.addChildAt(this.§%"t§,0);
         this.§0§.x = §,!#§;
         this.§0§.y = §'"O§;
         §<S§ = false;
         this.§-!Q§ = new Timer(§[#K§);
      }
      
      public function activate(param1:§ !b§) : void
      {
         if(!§7#M§)
         {
            return;
         }
         this.§!^§ = param1;
         this.§,§(false);
         this.§'#I§(0);
         §!",§.§3"1§.addEventListener(Event.CHANGE,this.§>!S§);
      }
      
      public function deActivate() : void
      {
         §!",§.§3"1§.removeEventListener(Event.CHANGE,this.§>!S§);
      }
      
      public function dispose() : void
      {
         Starling.§%!q§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^#e§);
         if(!§7#M§)
         {
            return;
         }
         this.§0§.mClip.removeChild(this.§%"t§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§7#M§)
         {
            return;
         }
         if(this.§!^§.§'"&§.slingshot.mSlingShotState == §2!"§.§ "X§)
         {
            this.§,§(false);
         }
         this.§'#I§(param1);
      }
      
      public function §?"§() : void
      {
         this.§,§(!this.§^"_§());
      }
      
      public function §2<§() : void
      {
         if(!this.§^"_§())
         {
            this.§,§(false);
         }
      }
      
      public function §2#d§() : void
      {
         if(this.§^"_§())
         {
            this.§,§(false);
         }
      }
      
      private function §^#K§(param1:TimerEvent) : void
      {
         this.§,§(!this.§^"_§());
      }
      
      public function §?"I§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§8#E§ = null;
         var _loc3_:§^#i§ = §[9§.§%"%§(param1);
         if(_loc3_)
         {
            if(_loc3_.§3$<§)
            {
               §&#x§ = param1;
               if(!param2)
               {
                  this.§9!-§ = _loc3_;
                  this.§,"6§(_loc3_.§'!]§);
                  if(param1 != "default")
                  {
                     this.§^#Q§(_loc3_.§=#@§);
                  }
               }
               else
               {
                  (§+!p§.§`?§.slingshot as §]"]§).§;!d§(_loc3_,param2);
                  §<S§ = false;
               }
               this.§,§(false);
            }
            else if(§-&§.§%#c§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §-&§(param1,§-&§.§if §));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.§!s§(_loc3_.§=#@§);
               this.§7!7§ = new §8U§(this.§@!D§.mClip,_loc4_,_loc3_.§[E§);
               this.§7!7§.addEventListener(§ ![§.§=K§,this.§@"%§);
               this.§7!7§.§,5§();
            }
         }
      }
      
      protected function §@"%§(param1:§ ![§) : void
      {
         var _loc2_:§^#i§ = §[9§.§%"%§(param1.§5B§);
         var _loc3_:§6!1§ = this.§@!D§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§@!D§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §^#Q§(param1:String) : void
      {
         if((§+!p§.§`?§ as §^#j§).§7#j§().indexOf(param1) == -1)
         {
            §^#j§(§+!p§.§`?§).§'#>§.§=!,§(param1);
         }
         (§+!p§.§`?§ as §^#j§).§;!c§(param1);
      }
      
      public function §^"_§() : Boolean
      {
         return this.§=#C§;
      }
      
      private function §,§(param1:Boolean) : void
      {
         this.§=#C§ = param1;
         this.§%"S§();
      }
      
      private function §%"S§() : void
      {
         var _loc1_:§6!1§ = null;
         var _loc2_:§6!1§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§^#i§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §[9§.§'!'§)
         {
            _loc1_ = this.§@!D§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§@!D§.getItemByName(_loc7_.§&$"§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§&#x§ == _loc7_.§=#@§)
               {
                  _loc1_.setEnabled(false);
                  this.§@!D§.getItemByName(_loc7_.§>`§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§@!D§.getItemByName(_loc7_.§>`§).visible = false;
                  if(_loc7_.§3$<§)
                  {
                     _loc1_.setEnabled(this.§=#C§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§=#C§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§=#C§);
                     }
                  }
                  else
                  {
                     _loc1_.setVisibility(false);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                     _loc8_ = false;
                  }
               }
               if(_loc8_)
               {
                  _loc3_ = §%S§ + § #L§ + _loc5_ * this.§-2§ + _loc5_ * this.§&#Q§;
                  _loc4_ = §'"O§ + §^"A§ + _loc6_ * this.§1k§ + _loc6_ * this.§3R§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§&#x§ == _loc7_.§=#@§)
                  {
                     this.§@!D§.getItemByName(_loc7_.§>`§).x = _loc3_;
                     this.§@!D§.getItemByName(_loc7_.§>`§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §0x§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §'#I§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§[f§(param1);
         if(_loc2_)
         {
            this.§0§.mClip.scrollRect = new Rectangle(§%S§,§'"O§,this.§5#A§,this.§>>§);
         }
      }
      
      private function §[f§(param1:Number) : Boolean
      {
         if(this.§^"_§())
         {
            if(!this.§0§.visible)
            {
               this.§0§.setVisibility(true);
               return true;
            }
         }
         else if(this.§0§.visible)
         {
            this.§0§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §,"6§(param1:String) : void
      {
         this.§1"5§();
         §<S§ = true;
         var _loc2_:§!"e§ = this.§@!D§.getItemByName("Container_PowerUp_Intro2") as §!"e§;
         _loc2_.visible = true;
         §4$4§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§-!Q§.delay = §[#K§;
         this.§-!Q§.addEventListener(TimerEvent.TIMER,this.§^Q§);
         this.§-!Q§.start();
         var _loc3_:§=!Z§ = _loc2_.getItemByName(param1) as §=!Z§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §]"a§() : void
      {
         if(Starling.§?$7§)
         {
            if(this.§9!-§)
            {
               this.§8",§(this.§9!-§.§=#@§);
            }
         }
      }
      
      private function §8",§(param1:String) : void
      {
         var _loc2_:§^#i§ = §[9§.§%"%§(param1);
         (§+!p§.§`?§.slingshot as §]"]§).§;!d§(_loc2_,false);
         §<S§ = false;
         this.§9!-§ = null;
      }
      
      private function §^#e§(param1:Event) : void
      {
         if(this.§9!-§)
         {
            this.§8",§(this.§9!-§.§=#@§);
         }
      }
      
      private function §^Q§(param1:TimerEvent) : void
      {
         this.§1"5§();
         this.§]"a§();
      }
      
      private function §1"5§() : void
      {
         var _loc2_:§6!1§ = null;
         this.§-!Q§.stop();
         var _loc1_:§!"e§ = this.§@!D§.getItemByName("Container_PowerUp_Intro2") as §!"e§;
         for each(_loc2_ in _loc1_.§#z§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §>!S§(param1:Event) : void
      {
         this.§%"S§();
      }
   }
}
