package §=#C§
{
   import §%#A§.§'=§;
   import §%#A§.§]!_§;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+!C§.§#!L§;
   import §+!C§.§9!b§;
   import §+!C§.§]#b§;
   import §+">§.§#"d§;
   import §+"E§.§+Q§;
   import §1#W§.§!#&§;
   import §6!E§.§^!7§;
   import §6"r§.§!#A§;
   import §7",§.§2#i§;
   import §9+§.Starling;
   import §;P§.GlitterParticle;
   import §<"1§.§[!K§;
   import §@#§.§^#Q§;
   import §["-§.§3"<§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §1"r§ extends EventDispatcher
   {
      
      public static const §@1§:Boolean = true;
      
      private static const §6#q§:Number = 160;
      
      private static const §6!j§:Number = 60;
      
      private static const §7"u§:int = 4;
      
      private static const §'!Y§:Number = 12;
      
      private static const §8!K§:Number = 22;
      
      private static const §8!a§:Number = 40;
      
      private static const §""s§:Number = 40;
      
      private static var §6!8§:String = "default";
      
      public static var §-!%§:Boolean = false;
      
      private static const §>#N§:int = 700;
       
      
      private var §`!E§:Boolean = false;
      
      private var §+#-§:§3"<§;
      
      protected var §?Q§:§]!_§;
      
      private var mLevelManager:§^#Q§;
      
      private var §!8§:§[!K§;
      
      private var §1$&§:§[!K§;
      
      private var §["W§:Number;
      
      private var §[#=§:Number;
      
      private var §?_§:int = 59;
      
      private var §+#`§:int = 76;
      
      private var §;!4§:int = 8;
      
      private var §2!l§:int = 5;
      
      private var §`G§:Sprite;
      
      private var §0#G§:§6!u§;
      
      private var §3#m§:§^!7§;
      
      private var §4#q§:Timer;
      
      public function §1"r§(param1:§]!_§, param2:§^#Q§)
      {
         super();
         this.§?Q§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §,#8§() : String
      {
         return §6!8§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§?$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§`",§,false,0,true);
         var _loc1_:int = §7"G§.§>!y§();
         if(_loc1_ > §7"u§)
         {
            _loc1_ = §7"u§;
         }
         _loc2_ = Math.ceil(§7"G§.§>!y§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§["W§ = §'!Y§ + this.§+#`§ * _loc2_ + this.§;!4§ * _loc3_ + §'!Y§;
         this.§[#=§ = §8!K§ + this.§?_§ * _loc1_ + _loc4_ * this.§2!l§ + §8!K§;
         this.§?Q§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§!8§ = this.§?Q§.getItemByName("Container_Slingshot_Buttons");
         this.§1$&§ = this.§?Q§.getItemByName("Button_Slingshot");
         this.§`G§ = new Sprite();
         this.§`G§.graphics.beginFill(0);
         this.§`G§.graphics.lineTo(0,this.§["W§ - §""s§);
         this.§`G§.graphics.curveTo(0,this.§["W§,§""s§,this.§["W§);
         this.§`G§.graphics.lineTo(this.§[#=§ - §""s§,this.§["W§);
         this.§`G§.graphics.curveTo(this.§[#=§,this.§["W§,this.§[#=§,this.§["W§ - §""s§);
         this.§`G§.graphics.lineTo(this.§[#=§,§""s§);
         this.§`G§.graphics.curveTo(this.§[#=§,0,this.§[#=§ - §""s§,0);
         this.§`G§.graphics.lineTo(0,0);
         this.§`G§.graphics.endFill();
         this.§`G§.x = §8!a§;
         this.§`G§.y = §6#q§;
         this.§`G§.alpha = 0.5;
         this.§`G§.scale9Grid = new Rectangle(§""s§,§""s§,this.§[#=§ - §""s§ * 2,this.§["W§ - §""s§ * 2);
         this.§!8§.mClip.addChildAt(this.§`G§,0);
         this.§!8§.x = §6!j§;
         this.§!8§.y = §6#q§;
         §-!%§ = false;
         this.§4#q§ = new Timer(§>#N§);
      }
      
      public function activate(param1:§3"<§) : void
      {
         if(!§@1§)
         {
            return;
         }
         this.§+#-§ = param1;
         this.§5s§(false);
         this.§3#p§(0);
         §4"W§.§ "D§.addEventListener(Event.CHANGE,this.§0#H§);
      }
      
      public function deActivate() : void
      {
         §4"W§.§ "D§.removeEventListener(Event.CHANGE,this.§0#H§);
      }
      
      public function dispose() : void
      {
         Starling.§?$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§`",§);
         if(!§@1§)
         {
            return;
         }
         this.§!8§.mClip.removeChild(this.§`G§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§@1§)
         {
            return;
         }
         if(this.§+#-§.§"!!§.slingshot.mSlingShotState == §]#b§.§-"1§)
         {
            this.§5s§(false);
         }
         this.§3#p§(param1);
      }
      
      public function §,X§() : void
      {
         this.§5s§(!this.§'#i§());
      }
      
      public function §]!#§() : void
      {
         if(!this.§'#i§())
         {
            this.§5s§(false);
         }
      }
      
      public function §7!8§() : void
      {
         if(this.§'#i§())
         {
            this.§5s§(false);
         }
      }
      
      private function §#"z§(param1:TimerEvent) : void
      {
         this.§5s§(!this.§'#i§());
      }
      
      public function §!!!§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§2#i§ = null;
         var _loc3_:§6!u§ = §7"G§.§-o§(param1);
         if(_loc3_)
         {
            if(_loc3_.§3"i§)
            {
               §6!8§ = param1;
               if(!param2)
               {
                  this.§0#G§ = _loc3_;
                  this.§0!5§(_loc3_.§'<§);
                  if(param1 != "default")
                  {
                     this.§4!z§(_loc3_.§?"9§);
                  }
               }
               else
               {
                  (§!#A§.§#F§.slingshot as §9!b§).§ 7§(_loc3_,param2);
                  §-!%§ = false;
               }
               this.§5s§(false);
            }
            else if(§#"d§.§7""§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §#"d§(param1,§#"d§.§^!,§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.§+#^§(_loc3_.§?"9§);
               this.§3#m§ = new §^!7§(this.§?Q§.mClip,_loc4_,_loc3_.§,!&§);
               this.§3#m§.addEventListener(§+Q§.§=<§,this.§-!Y§);
               this.§3#m§.§0"r§();
            }
         }
      }
      
      protected function §-!Y§(param1:§+Q§) : void
      {
         var _loc2_:§6!u§ = §7"G§.§-o§(param1.§3#=§);
         var _loc3_:§[!K§ = this.§?Q§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§?Q§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §4!z§(param1:String) : void
      {
         if((§!#A§.§#F§ as §#!L§).§-$1§().indexOf(param1) == -1)
         {
            §#!L§(§!#A§.§#F§).§1"-§.§"!p§(param1);
         }
         (§!#A§.§#F§ as §#!L§).§[!%§(param1);
      }
      
      public function §'#i§() : Boolean
      {
         return this.§`!E§;
      }
      
      private function §5s§(param1:Boolean) : void
      {
         this.§`!E§ = param1;
         this.§#! §();
      }
      
      private function §#! §() : void
      {
         var _loc1_:§[!K§ = null;
         var _loc2_:§[!K§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§6!u§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §7"G§.§null §)
         {
            _loc1_ = this.§?Q§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§?Q§.getItemByName(_loc7_.§"$$§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§6!8§ == _loc7_.§?"9§)
               {
                  _loc1_.setEnabled(false);
                  this.§?Q§.getItemByName(_loc7_.§5"y§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§?Q§.getItemByName(_loc7_.§5"y§).visible = false;
                  if(_loc7_.§3"i§)
                  {
                     _loc1_.setEnabled(this.§`!E§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§`!E§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§`!E§);
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
                  _loc3_ = §8!a§ + §8!K§ + _loc5_ * this.§?_§ + _loc5_ * this.§2!l§;
                  _loc4_ = §6#q§ + §'!Y§ + _loc6_ * this.§+#`§ + _loc6_ * this.§;!4§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§6!8§ == _loc7_.§?"9§)
                  {
                     this.§?Q§.getItemByName(_loc7_.§5"y§).x = _loc3_;
                     this.§?Q§.getItemByName(_loc7_.§5"y§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §7"u§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §3#p§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§,$"§(param1);
         if(_loc2_)
         {
            this.§!8§.mClip.scrollRect = new Rectangle(§8!a§,§6#q§,this.§[#=§,this.§["W§);
         }
      }
      
      private function §,$"§(param1:Number) : Boolean
      {
         if(this.§'#i§())
         {
            if(!this.§!8§.visible)
            {
               this.§!8§.setVisibility(true);
               return true;
            }
         }
         else if(this.§!8§.visible)
         {
            this.§!8§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §0!5§(param1:String) : void
      {
         this.§@"L§();
         §-!%§ = true;
         var _loc2_:§]!_§ = this.§?Q§.getItemByName("Container_PowerUp_Intro2") as §]!_§;
         _loc2_.visible = true;
         §!#&§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§4#q§.delay = §>#N§;
         this.§4#q§.addEventListener(TimerEvent.TIMER,this.§'!p§);
         this.§4#q§.start();
         var _loc3_:§'=§ = _loc2_.getItemByName(param1) as §'=§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §?,§() : void
      {
         if(Starling.§^!b§)
         {
            if(this.§0#G§)
            {
               this.§?" §(this.§0#G§.§?"9§);
            }
         }
      }
      
      private function §?" §(param1:String) : void
      {
         var _loc2_:§6!u§ = §7"G§.§-o§(param1);
         (§!#A§.§#F§.slingshot as §9!b§).§ 7§(_loc2_,false);
         §-!%§ = false;
         this.§0#G§ = null;
      }
      
      private function §`",§(param1:Event) : void
      {
         if(this.§0#G§)
         {
            this.§?" §(this.§0#G§.§?"9§);
         }
      }
      
      private function §'!p§(param1:TimerEvent) : void
      {
         this.§@"L§();
         this.§?,§();
      }
      
      private function §@"L§() : void
      {
         var _loc2_:§[!K§ = null;
         this.§4#q§.stop();
         var _loc1_:§]!_§ = this.§?Q§.getItemByName("Container_PowerUp_Intro2") as §]!_§;
         for each(_loc2_ in _loc1_.§+G§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §0#H§(param1:Event) : void
      {
         this.§#! §();
      }
   }
}
