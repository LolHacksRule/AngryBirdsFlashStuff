package §4"R§
{
   import § !_§.§@F§;
   import §&"`§.§"#x§;
   import §&$!§.GlitterParticle;
   import §2"5§.§6"^§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§@"!§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §=#G§.§<#Z§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §@0§.§ !o§;
   import §@0§.§2$2§;
   import §@0§.§9"^§;
   import §@r§.§6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §7"]§ extends EventDispatcher
   {
      
      public static const §7#E§:Boolean = true;
      
      private static const §]n§:Number = 160;
      
      private static const §-#^§:Number = 60;
      
      private static const §1#5§:int = 4;
      
      private static const §2"u§:Number = 12;
      
      private static const § @§:Number = 22;
      
      private static const §2#[§:Number = 40;
      
      private static const §-a§:Number = 40;
      
      private static var §!#c§:String = "default";
      
      public static var §!#x§:Boolean = false;
      
      private static const §1s§:int = 700;
       
      
      private var §7"Y§:Boolean = false;
      
      private var §=!;§:§<#Z§;
      
      protected var §`!H§:§[#K§;
      
      private var mLevelManager:§8=§;
      
      private var §2A§:§@"!§;
      
      private var §8"8§:§@"!§;
      
      private var §&'§:Number;
      
      private var §5"v§:Number;
      
      private var §7!Z§:int = 59;
      
      private var §1t§:int = 76;
      
      private var §'"7§:int = 8;
      
      private var §^h§:int = 5;
      
      private var §`!C§:Sprite;
      
      private var §!"d§:§'#v§;
      
      private var §=p§:§@F§;
      
      private var §!#7§:Timer;
      
      public function §7"]§(param1:§[#K§, param2:§8=§)
      {
         super();
         this.§`!H§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §<,§() : String
      {
         return §!#c§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§@#K§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§,false,0,true);
         var _loc1_:int = §4"c§.§+3§();
         if(_loc1_ > §1#5§)
         {
            _loc1_ = §1#5§;
         }
         _loc2_ = Math.ceil(§4"c§.§+3§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§&'§ = §2"u§ + this.§1t§ * _loc2_ + this.§'"7§ * _loc3_ + §2"u§;
         this.§5"v§ = § @§ + this.§7!Z§ * _loc1_ + _loc4_ * this.§^h§ + § @§;
         this.§`!H§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§2A§ = this.§`!H§.getItemByName("Container_Slingshot_Buttons");
         this.§8"8§ = this.§`!H§.getItemByName("Button_Slingshot");
         this.§`!C§ = new Sprite();
         this.§`!C§.graphics.beginFill(0);
         this.§`!C§.graphics.lineTo(0,this.§&'§ - §-a§);
         this.§`!C§.graphics.curveTo(0,this.§&'§,§-a§,this.§&'§);
         this.§`!C§.graphics.lineTo(this.§5"v§ - §-a§,this.§&'§);
         this.§`!C§.graphics.curveTo(this.§5"v§,this.§&'§,this.§5"v§,this.§&'§ - §-a§);
         this.§`!C§.graphics.lineTo(this.§5"v§,§-a§);
         this.§`!C§.graphics.curveTo(this.§5"v§,0,this.§5"v§ - §-a§,0);
         this.§`!C§.graphics.lineTo(0,0);
         this.§`!C§.graphics.endFill();
         this.§`!C§.x = §2#[§;
         this.§`!C§.y = §]n§;
         this.§`!C§.alpha = 0.5;
         this.§`!C§.scale9Grid = new Rectangle(§-a§,§-a§,this.§5"v§ - §-a§ * 2,this.§&'§ - §-a§ * 2);
         this.§2A§.mClip.addChildAt(this.§`!C§,0);
         this.§2A§.x = §-#^§;
         this.§2A§.y = §]n§;
         §!#x§ = false;
         this.§!#7§ = new Timer(§1s§);
      }
      
      public function activate(param1:§<#Z§) : void
      {
         if(!§7#E§)
         {
            return;
         }
         this.§=!;§ = param1;
         this.§!#i§(false);
         this.§9!"§(0);
         §-#+§.§6!§.addEventListener(Event.CHANGE,this.§##$§);
      }
      
      public function deActivate() : void
      {
         §-#+§.§6!§.removeEventListener(Event.CHANGE,this.§##$§);
      }
      
      public function dispose() : void
      {
         Starling.§@#K§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         if(!§7#E§)
         {
            return;
         }
         this.§2A§.mClip.removeChild(this.§`!C§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§7#E§)
         {
            return;
         }
         if(this.§=!;§.§'"`§.slingshot.mSlingShotState == § !o§.§3"'§)
         {
            this.§!#i§(false);
         }
         this.§9!"§(param1);
      }
      
      public function §>#S§() : void
      {
         this.§!#i§(!this.§8'§());
      }
      
      public function §<"U§() : void
      {
         if(!this.§8'§())
         {
            this.§!#i§(false);
         }
      }
      
      public function § !,§() : void
      {
         if(this.§8'§())
         {
            this.§!#i§(false);
         }
      }
      
      private function §^#8§(param1:TimerEvent) : void
      {
         this.§!#i§(!this.§8'§());
      }
      
      public function §+"W§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§"#x§ = null;
         var _loc3_:§'#v§ = §4"c§.§2;§(param1);
         if(_loc3_)
         {
            if(_loc3_.§<b§)
            {
               §!#c§ = param1;
               if(!param2)
               {
                  this.§!"d§ = _loc3_;
                  this.§<3§(_loc3_.§>#=§);
                  if(param1 != "default")
                  {
                     this.§+4§(_loc3_.§5"g§);
                  }
               }
               else
               {
                  (§3#U§.§#$4§.slingshot as §9"^§).§6E§(_loc3_,param2);
                  §!#x§ = false;
               }
               this.§!#i§(false);
            }
            else if(§6#1§.§!!U§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §6#1§(param1,§6#1§.§3!G§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.§7#;§(_loc3_.§5"g§);
               this.§=p§ = new §@F§(this.§`!H§.mClip,_loc4_,_loc3_.§9§);
               this.§=p§.addEventListener(§6"^§.§3!<§,this.§8$2§);
               this.§=p§.§%[§();
            }
         }
      }
      
      protected function §8$2§(param1:§6"^§) : void
      {
         var _loc2_:§'#v§ = §4"c§.§2;§(param1.§!"-§);
         var _loc3_:§@"!§ = this.§`!H§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§`!H§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §+4§(param1:String) : void
      {
         if((§3#U§.§#$4§ as §2$2§).§;&§().indexOf(param1) == -1)
         {
            §2$2§(§3#U§.§#$4§).§2"P§.§`j§(param1);
         }
         (§3#U§.§#$4§ as §2$2§).§;$@§(param1);
      }
      
      public function §8'§() : Boolean
      {
         return this.§7"Y§;
      }
      
      private function §!#i§(param1:Boolean) : void
      {
         this.§7"Y§ = param1;
         this.§@O§();
      }
      
      private function §@O§() : void
      {
         var _loc1_:§@"!§ = null;
         var _loc2_:§@"!§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§'#v§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §4"c§.§-!t§)
         {
            _loc1_ = this.§`!H§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§`!H§.getItemByName(_loc7_.§ #k§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§!#c§ == _loc7_.§5"g§)
               {
                  _loc1_.setEnabled(false);
                  this.§`!H§.getItemByName(_loc7_.§''§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§`!H§.getItemByName(_loc7_.§''§).visible = false;
                  if(_loc7_.§<b§)
                  {
                     _loc1_.setEnabled(this.§7"Y§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§7"Y§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§7"Y§);
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
                  _loc3_ = §2#[§ + § @§ + _loc5_ * this.§7!Z§ + _loc5_ * this.§^h§;
                  _loc4_ = §]n§ + §2"u§ + _loc6_ * this.§1t§ + _loc6_ * this.§'"7§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§!#c§ == _loc7_.§5"g§)
                  {
                     this.§`!H§.getItemByName(_loc7_.§''§).x = _loc3_;
                     this.§`!H§.getItemByName(_loc7_.§''§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §1#5§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §9!"§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§="`§(param1);
         if(_loc2_)
         {
            this.§2A§.mClip.scrollRect = new Rectangle(§2#[§,§]n§,this.§5"v§,this.§&'§);
         }
      }
      
      private function §="`§(param1:Number) : Boolean
      {
         if(this.§8'§())
         {
            if(!this.§2A§.visible)
            {
               this.§2A§.setVisibility(true);
               return true;
            }
         }
         else if(this.§2A§.visible)
         {
            this.§2A§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §<3§(param1:String) : void
      {
         this.§0!y§();
         §!#x§ = true;
         var _loc2_:§[#K§ = this.§`!H§.getItemByName("Container_PowerUp_Intro2") as §[#K§;
         _loc2_.visible = true;
         §!"p§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§!#7§.delay = §1s§;
         this.§!#7§.addEventListener(TimerEvent.TIMER,this.§&!k§);
         this.§!#7§.start();
         var _loc3_:§@N§ = _loc2_.getItemByName(param1) as §@N§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §,$#§() : void
      {
         if(Starling.§2!&§)
         {
            if(this.§!"d§)
            {
               this.§8"&§(this.§!"d§.§5"g§);
            }
         }
      }
      
      private function §8"&§(param1:String) : void
      {
         var _loc2_:§'#v§ = §4"c§.§2;§(param1);
         (§3#U§.§#$4§.slingshot as §9"^§).§6E§(_loc2_,false);
         §!#x§ = false;
         this.§!"d§ = null;
      }
      
      private function §!G§(param1:Event) : void
      {
         if(this.§!"d§)
         {
            this.§8"&§(this.§!"d§.§5"g§);
         }
      }
      
      private function §&!k§(param1:TimerEvent) : void
      {
         this.§0!y§();
         this.§,$#§();
      }
      
      private function §0!y§() : void
      {
         var _loc2_:§@"!§ = null;
         this.§!#7§.stop();
         var _loc1_:§[#K§ = this.§`!H§.getItemByName("Container_PowerUp_Intro2") as §[#K§;
         for each(_loc2_ in _loc1_.§6$!§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §##$§(param1:Event) : void
      {
         this.§@O§();
      }
   }
}
