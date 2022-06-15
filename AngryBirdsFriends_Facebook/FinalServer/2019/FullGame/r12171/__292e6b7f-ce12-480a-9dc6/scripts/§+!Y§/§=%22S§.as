package §+!Y§
{
   import § "L§.§"!A§;
   import § "L§.§23§;
   import §"#k§.Starling;
   import §#g§.§!P§;
   import §#g§.§+!C§;
   import §#g§.§^"R§;
   import §&Y§.§@"E§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §6#h§.§5#&§;
   import §7#$§.§]#q§;
   import §9T§.GlitterParticle;
   import §?#z§.§]$?§;
   import §[#V§.§%#O§;
   import §]"y§.§3"@§;
   import §^"3§.§^"C§;
   import §`D§.§2_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §="S§ extends EventDispatcher
   {
      
      public static const §`#r§:Boolean = true;
      
      private static const §0#X§:Number = 160;
      
      private static const §1"f§:Number = 60;
      
      private static const §+8§:int = 4;
      
      private static const §4"B§:Number = 12;
      
      private static const §#!P§:Number = 22;
      
      private static const §^a§:Number = 40;
      
      private static const §?$,§:Number = 40;
      
      private static var §;#R§:String = "default";
      
      public static var §=#V§:Boolean = false;
      
      private static const §>$,§:int = 700;
       
      
      private var §=g§:Boolean = false;
      
      private var §'9§:§5#&§;
      
      protected var §;!w§:§23§;
      
      private var mLevelManager:§]#q§;
      
      private var §7!F§:§^"C§;
      
      private var §]G§:§^"C§;
      
      private var §0""§:Number;
      
      private var §#"F§:Number;
      
      private var §9"J§:int = 59;
      
      private var §^1§:int = 76;
      
      private var §7_§:int = 8;
      
      private var §6#2§:int = 5;
      
      private var §,$>§:Sprite;
      
      private var §8$ §:§3!B§;
      
      private var §%$5§:§3"@§;
      
      private var §"!j§:Timer;
      
      public function §="S§(param1:§23§, param2:§]#q§)
      {
         super();
         this.§;!w§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §2!c§() : String
      {
         return §;#R§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§4$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§>E§,false,0,true);
         var _loc1_:int = §[@§.§8#R§();
         if(_loc1_ > §+8§)
         {
            _loc1_ = §+8§;
         }
         _loc2_ = Math.ceil(§[@§.§8#R§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§0""§ = §4"B§ + this.§^1§ * _loc2_ + this.§7_§ * _loc3_ + §4"B§;
         this.§#"F§ = §#!P§ + this.§9"J§ * _loc1_ + _loc4_ * this.§6#2§ + §#!P§;
         this.§;!w§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§7!F§ = this.§;!w§.getItemByName("Container_Slingshot_Buttons");
         this.§]G§ = this.§;!w§.getItemByName("Button_Slingshot");
         this.§,$>§ = new Sprite();
         this.§,$>§.graphics.beginFill(0);
         this.§,$>§.graphics.lineTo(0,this.§0""§ - §?$,§);
         this.§,$>§.graphics.curveTo(0,this.§0""§,§?$,§,this.§0""§);
         this.§,$>§.graphics.lineTo(this.§#"F§ - §?$,§,this.§0""§);
         this.§,$>§.graphics.curveTo(this.§#"F§,this.§0""§,this.§#"F§,this.§0""§ - §?$,§);
         this.§,$>§.graphics.lineTo(this.§#"F§,§?$,§);
         this.§,$>§.graphics.curveTo(this.§#"F§,0,this.§#"F§ - §?$,§,0);
         this.§,$>§.graphics.lineTo(0,0);
         this.§,$>§.graphics.endFill();
         this.§,$>§.x = §^a§;
         this.§,$>§.y = §0#X§;
         this.§,$>§.alpha = 0.5;
         this.§,$>§.scale9Grid = new Rectangle(§?$,§,§?$,§,this.§#"F§ - §?$,§ * 2,this.§0""§ - §?$,§ * 2);
         this.§7!F§.mClip.addChildAt(this.§,$>§,0);
         this.§7!F§.x = §1"f§;
         this.§7!F§.y = §0#X§;
         §=#V§ = false;
         this.§"!j§ = new Timer(§>$,§);
      }
      
      public function activate(param1:§5#&§) : void
      {
         if(!§`#r§)
         {
            return;
         }
         this.§'9§ = param1;
         this.§5D§(false);
         this.§7$#§(0);
         §]#0§.§+!,§.addEventListener(Event.CHANGE,this.§-$B§);
      }
      
      public function deActivate() : void
      {
         §]#0§.§+!,§.removeEventListener(Event.CHANGE,this.§-$B§);
      }
      
      public function dispose() : void
      {
         Starling.§4$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§>E§);
         if(!§`#r§)
         {
            return;
         }
         this.§7!F§.mClip.removeChild(this.§,$>§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§`#r§)
         {
            return;
         }
         if(this.§'9§.§,!M§.slingshot.mSlingShotState == §^"R§.§@#+§)
         {
            this.§5D§(false);
         }
         this.§7$#§(param1);
      }
      
      public function §@#s§() : void
      {
         this.§5D§(!this.§2$6§());
      }
      
      public function §8<§() : void
      {
         if(!this.§2$6§())
         {
            this.§5D§(false);
         }
      }
      
      public function §6[§() : void
      {
         if(this.§2$6§())
         {
            this.§5D§(false);
         }
      }
      
      private function §+#R§(param1:TimerEvent) : void
      {
         this.§5D§(!this.§2$6§());
      }
      
      public function §;"_§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§2_§ = null;
         var _loc3_:§3!B§ = §[@§.§[#P§(param1);
         if(_loc3_)
         {
            if(_loc3_.§[#T§)
            {
               §;#R§ = param1;
               if(!param2)
               {
                  this.§8$ § = _loc3_;
                  this.§["U§(_loc3_.§""3§);
                  if(param1 != "default")
                  {
                     this.§,"M§(_loc3_.§8t§);
                  }
               }
               else
               {
                  (§]$?§.§2#§.slingshot as §+!C§).§"!5§(_loc3_,param2);
                  §=#V§ = false;
               }
               this.§5D§(false);
            }
            else if(§@"E§.§4k§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §@"E§(param1,§@"E§.§>J§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.§'$#§(_loc3_.§8t§);
               this.§%$5§ = new §3"@§(this.§;!w§.mClip,_loc4_,_loc3_.§"l§);
               this.§%$5§.addEventListener(§%#O§.§!"m§,this.§ "M§);
               this.§%$5§.§`!w§();
            }
         }
      }
      
      protected function § "M§(param1:§%#O§) : void
      {
         var _loc2_:§3!B§ = §[@§.§[#P§(param1.§^#z§);
         var _loc3_:§^"C§ = this.§;!w§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§;!w§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §,"M§(param1:String) : void
      {
         if((§]$?§.§2#§ as §!P§).§with§().indexOf(param1) == -1)
         {
            §!P§(§]$?§.§2#§).§]!_§.§<"6§(param1);
         }
         (§]$?§.§2#§ as §!P§).§`!r§(param1);
      }
      
      public function §2$6§() : Boolean
      {
         return this.§=g§;
      }
      
      private function §5D§(param1:Boolean) : void
      {
         this.§=g§ = param1;
         this.§^f§();
      }
      
      private function §^f§() : void
      {
         var _loc1_:§^"C§ = null;
         var _loc2_:§^"C§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§3!B§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §[@§.§<#T§)
         {
            _loc1_ = this.§;!w§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§;!w§.getItemByName(_loc7_.§[$3§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§;#R§ == _loc7_.§8t§)
               {
                  _loc1_.setEnabled(false);
                  this.§;!w§.getItemByName(_loc7_.§<=§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§;!w§.getItemByName(_loc7_.§<=§).visible = false;
                  if(_loc7_.§[#T§)
                  {
                     _loc1_.setEnabled(this.§=g§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§=g§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§=g§);
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
                  _loc3_ = §^a§ + §#!P§ + _loc5_ * this.§9"J§ + _loc5_ * this.§6#2§;
                  _loc4_ = §0#X§ + §4"B§ + _loc6_ * this.§^1§ + _loc6_ * this.§7_§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§;#R§ == _loc7_.§8t§)
                  {
                     this.§;!w§.getItemByName(_loc7_.§<=§).x = _loc3_;
                     this.§;!w§.getItemByName(_loc7_.§<=§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §+8§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §7$#§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§`$"§(param1);
         if(_loc2_)
         {
            this.§7!F§.mClip.scrollRect = new Rectangle(§^a§,§0#X§,this.§#"F§,this.§0""§);
         }
      }
      
      private function §`$"§(param1:Number) : Boolean
      {
         if(this.§2$6§())
         {
            if(!this.§7!F§.visible)
            {
               this.§7!F§.setVisibility(true);
               return true;
            }
         }
         else if(this.§7!F§.visible)
         {
            this.§7!F§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §["U§(param1:String) : void
      {
         this.§'$-§();
         §=#V§ = true;
         var _loc2_:§23§ = this.§;!w§.getItemByName("Container_PowerUp_Intro2") as §23§;
         _loc2_.visible = true;
         § b§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§"!j§.delay = §>$,§;
         this.§"!j§.addEventListener(TimerEvent.TIMER,this.§5!F§);
         this.§"!j§.start();
         var _loc3_:§"!A§ = _loc2_.getItemByName(param1) as §"!A§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §^[§() : void
      {
         if(Starling.§3"'§)
         {
            if(this.§8$ §)
            {
               this.§7#[§(this.§8$ §.§8t§);
            }
         }
      }
      
      private function §7#[§(param1:String) : void
      {
         var _loc2_:§3!B§ = §[@§.§[#P§(param1);
         (§]$?§.§2#§.slingshot as §+!C§).§"!5§(_loc2_,false);
         §=#V§ = false;
         this.§8$ § = null;
      }
      
      private function §>E§(param1:Event) : void
      {
         if(this.§8$ §)
         {
            this.§7#[§(this.§8$ §.§8t§);
         }
      }
      
      private function §5!F§(param1:TimerEvent) : void
      {
         this.§'$-§();
         this.§^[§();
      }
      
      private function §'$-§() : void
      {
         var _loc2_:§^"C§ = null;
         this.§"!j§.stop();
         var _loc1_:§23§ = this.§;!w§.getItemByName("Container_PowerUp_Intro2") as §23§;
         for each(_loc2_ in _loc1_.§2p§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §-$B§(param1:Event) : void
      {
         this.§^f§();
      }
   }
}
