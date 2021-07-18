package §+!d§
{
   import §"!U§.§=#V§;
   import §#v§.§#!?§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'!U§.§>$$§;
   import §'"-§.GlitterParticle;
   import §'z§.§4!x§;
   import §2#m§.§%F§;
   import §2V§.§%#E§;
   import §52§.§#%§;
   import §52§.§&#q§;
   import §52§.§@M§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §8§.§#$+§;
   import §?§.§>"$§;
   import §^$4§.§2#I§;
   import §^a§.Starling;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §2![§ extends EventDispatcher
   {
      
      public static const §6b§:Boolean = true;
      
      private static const §&d§:int = 500;
      
      private static const §'"5§:int = 90;
      
      private static const §'p§:Number = 100;
      
      private static const §^#Y§:Number = 90;
      
      private static const § !0§:int = 4;
      
      private static const §5!?§:Number = 12;
      
      private static const §`!H§:Number = 22;
      
      private static const §85§:Number = 40;
      
      private static const §0"?§:Number = 40;
      
      private static const § "B§:Number = 40;
      
      private static const §'w§:Number = 20;
      
      private static var §9"w§:String = "default";
      
      public static var §9!_§:Boolean = false;
      
      private static const §-"@§:int = 700;
       
      
      private var §1"n§:Boolean = false;
      
      private var §8j§:§4!x§;
      
      protected var §!$§:§0"<§;
      
      private var mLevelManager:§#!?§;
      
      private var §["5§:§>$$§;
      
      private var §4$1§:§>$$§;
      
      private var §9#p§:Number;
      
      private var § I§:Number;
      
      private var §5!x§:Number = 0;
      
      private var §3!z§:Number = 0;
      
      private var §5D§:Number = 0;
      
      private var §<#P§:int = 59;
      
      private var §##U§:int = 76;
      
      private var §9">§:int = 8;
      
      private var §'"=§:int = 5;
      
      private var §>z§:Sprite;
      
      private var §]"Z§:Sprite;
      
      private var § !e§:§&b§;
      
      private var §?!0§:§%F§;
      
      private var §2!a§:Timer;
      
      public function §2![§(param1:§0"<§, param2:§#!?§)
      {
         super();
         this.§!$§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §,#>§() : String
      {
         return §9"w§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§<#`§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^"W§,false,0,true);
         var _loc1_:int = §3#8§.§7"[§();
         if(_loc1_ > § !0§)
         {
            _loc1_ = § !0§;
         }
         _loc2_ = Math.ceil(§3#8§.§7"[§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§9#p§ = §5!?§ + this.§##U§ * _loc2_ + this.§9">§ * _loc3_ + §5!?§;
         this.§ I§ = §`!H§ + this.§<#P§ * _loc1_ + _loc4_ * this.§'"=§ + §`!H§;
         this.§!$§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§["5§ = this.§!$§.getItemByName("Container_Slingshot_Buttons");
         this.§4$1§ = this.§!$§.getItemByName("Button_Slingshot");
         this.§>z§ = new Sprite();
         this.§>z§.graphics.beginFill(0);
         this.§>z§.graphics.lineTo(0,this.§9#p§ - §0"?§);
         this.§>z§.graphics.curveTo(0,this.§9#p§,§0"?§,this.§9#p§);
         this.§>z§.graphics.lineTo(this.§ I§ - §0"?§,this.§9#p§);
         this.§>z§.graphics.curveTo(this.§ I§,this.§9#p§,this.§ I§,this.§9#p§ - §0"?§);
         this.§>z§.graphics.lineTo(this.§ I§,§0"?§);
         this.§>z§.graphics.curveTo(this.§ I§,0,this.§ I§ - §0"?§,0);
         this.§>z§.graphics.lineTo(0,0);
         this.§>z§.graphics.endFill();
         this.§>z§.x = §85§;
         this.§>z§.y = §'p§;
         this.§>z§.alpha = 0.5;
         this.§>z§.scale9Grid = new Rectangle(§0"?§,§0"?§,this.§ I§ - §0"?§ * 2,this.§9#p§ - §0"?§ * 2);
         this.§["5§.mClip.addChildAt(this.§>z§,0);
         this.§]"Z§ = new Sprite();
         this.§]"Z§.graphics.beginFill(0);
         this.§]"Z§.graphics.drawRect(0,-§'w§,§ "B§,§'w§);
         this.§]"Z§.graphics.endFill();
         this.§]"Z§.alpha = 0.5;
         this.§]"Z§.x = §85§;
         this.§]"Z§.y = §'p§;
         this.§["5§.x = §^#Y§;
         this.§["5§.y = §'p§;
         this.§["5§.mClip.addChild(this.§]"Z§);
         §9!_§ = false;
         this.§2!a§ = new Timer(§-"@§);
      }
      
      public function activate(param1:§4!x§) : void
      {
         if(!§6b§)
         {
            return;
         }
         this.§8j§ = param1;
         this.§5D§ = 0;
         this.§!!I§(false);
         this.§+V§(0);
         §%h§.§3!]§.addEventListener(Event.CHANGE,this.§"#f§);
      }
      
      public function deActivate() : void
      {
         §%h§.§3!]§.removeEventListener(Event.CHANGE,this.§"#f§);
      }
      
      public function dispose() : void
      {
         Starling.§<#`§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^"W§);
         if(!§6b§)
         {
            return;
         }
         this.§["5§.mClip.removeChild(this.§>z§);
         this.§["5§.mClip.removeChild(this.§]"Z§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§6b§)
         {
            return;
         }
         if(this.§8j§.§#""§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            this.§!!I§(false);
         }
         this.§+V§(param1);
      }
      
      public function §1r§() : void
      {
         this.§!!I§(!this.§1#B§());
      }
      
      public function §,#w§() : void
      {
         if(!this.§1#B§())
         {
            this.§!!I§(false);
         }
      }
      
      public function §4#L§() : void
      {
         if(this.§1#B§())
         {
            this.§!!I§(false);
         }
      }
      
      private function §>#[§(param1:TimerEvent) : void
      {
         this.§!!I§(!this.§1#B§());
      }
      
      public function §]k§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§=#V§ = null;
         var _loc3_:§&b§ = §3#8§.§6#o§(param1);
         if(_loc3_)
         {
            if(_loc3_.§?C§)
            {
               §9"w§ = param1;
               if(!param2)
               {
                  this.§ !e§ = _loc3_;
                  this.§6"!§(_loc3_.§0#b§);
                  if(param1 != "default")
                  {
                     this.§[[§(_loc3_.§"!E§);
                  }
               }
               else
               {
                  (§>"$§.§3#'§.slingshot as §&#q§).§#"j§(_loc3_,param2);
                  §9!_§ = false;
               }
               this.§!!I§(false);
            }
            else if(§%#E§.§[F§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §%#E§(param1,§%#E§.§'!r§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.§6!,§(_loc3_.§"!E§);
               this.§?!0§ = new §%F§(this.§!$§.mClip,_loc4_,_loc3_.§["u§);
               this.§?!0§.addEventListener(§2#I§.§-"`§,this.§?!%§);
               this.§?!0§.§2S§();
            }
         }
      }
      
      protected function §?!%§(param1:§2#I§) : void
      {
         var _loc2_:§&b§ = §3#8§.§6#o§(param1.§4$9§);
         var _loc3_:§>$$§ = this.§!$§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc6_:int = 40;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            this.§!$§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §[[§(param1:String) : void
      {
         if((§>"$§.§3#'§ as §#%§).§?#A§().indexOf(param1) == -1)
         {
            §#%§(§>"$§.§3#'§).§4"w§.§?$7§(param1);
         }
         (§>"$§.§3#'§ as §#%§).§@"<§(param1);
      }
      
      public function §1#B§() : Boolean
      {
         return this.§1"n§;
      }
      
      private function §!!I§(param1:Boolean) : void
      {
         this.§1"n§ = param1;
         this.§?"G§();
      }
      
      private function §?"G§() : void
      {
         var _loc1_:§>$$§ = null;
         var _loc2_:§>$$§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§&b§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §3#8§.§1!H§)
         {
            _loc1_ = this.§!$§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§!$§.getItemByName(_loc7_.§%<§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§9"w§ == _loc7_.§"!E§)
               {
                  _loc1_.setEnabled(false);
                  this.§!$§.getItemByName(_loc7_.§`"%§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§!$§.getItemByName(_loc7_.§`"%§).visible = false;
                  if(_loc7_.§?C§)
                  {
                     _loc1_.setEnabled(this.§1"n§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§1"n§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§1"n§);
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
                  _loc3_ = §85§ + §`!H§ + _loc5_ * this.§<#P§ + _loc5_ * this.§'"=§;
                  _loc4_ = §'p§ + §5!?§ + _loc6_ * this.§##U§ + _loc6_ * this.§9">§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§9"w§ == _loc7_.§"!E§)
                  {
                     this.§!$§.getItemByName(_loc7_.§`"%§).x = _loc3_;
                     this.§!$§.getItemByName(_loc7_.§`"%§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == § !0§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §+V§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§3"B§(param1);
         if(_loc2_)
         {
            this.§["5§.mClip.scrollRect = new Rectangle(§85§,§'p§ - §'w§,this.§5!x§,this.§3!z§ + §'w§);
            this.§>z§.width = this.§5!x§;
            this.§>z§.height = this.§3!z§;
         }
      }
      
      private function §3"B§(param1:Number) : Boolean
      {
         if(this.§1#B§())
         {
            if(!this.§["5§.visible)
            {
               this.§["5§.setVisibility(true);
            }
            if(this.§5D§ < §&d§)
            {
               if(this.§5D§ < §'"5§)
               {
                  this.§5D§ = §'"5§;
               }
               this.§5D§ += param1;
               if(this.§5D§ > §&d§)
               {
                  this.§5D§ = §&d§;
               }
               this.§5!x§ = this.§5D§ / §&d§ * this.§ I§;
               this.§3!z§ = this.§5D§ / §&d§ * this.§9#p§;
               return true;
            }
         }
         else
         {
            if(this.§5D§ > 0)
            {
               this.§5D§ -= param1;
               if(this.§5D§ < §'"5§)
               {
                  this.§5D§ = 0;
               }
               this.§5!x§ = this.§5D§ / §&d§ * this.§ I§;
               this.§3!z§ = this.§5D§ / §&d§ * this.§9#p§;
               return true;
            }
            if(this.§5!x§ == 0 && this.§3!z§ == 0)
            {
               if(this.§["5§.visible)
               {
                  this.§["5§.setVisibility(false);
               }
               if(!this.§4$1§.visible)
               {
                  this.§4$1§.setVisibility(true);
               }
            }
         }
         return false;
      }
      
      private function §6"!§(param1:String) : void
      {
         this.§&"8§();
         §9!_§ = true;
         var _loc2_:§0"<§ = this.§!$§.getItemByName("Container_PowerUp_Intro2") as §0"<§;
         _loc2_.visible = true;
         §#$+§.playSound("SlingshotGenericActivate","ChannelPowerups",0,0.3);
         this.§2!a§.delay = §-"@§;
         this.§2!a§.addEventListener(TimerEvent.TIMER,this.§>"v§);
         this.§2!a§.start();
         var _loc3_:§="T§ = _loc2_.getItemByName(param1) as §="T§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §;"F§() : void
      {
         if(Starling.§-"h§)
         {
            if(this.§ !e§)
            {
               this.§@#[§(this.§ !e§.§"!E§);
            }
         }
      }
      
      private function §@#[§(param1:String) : void
      {
         var _loc2_:§&b§ = §3#8§.§6#o§(param1);
         (§>"$§.§3#'§.slingshot as §&#q§).§#"j§(_loc2_,false);
         §9!_§ = false;
         this.§ !e§ = null;
      }
      
      private function §^"W§(param1:Event) : void
      {
         if(this.§ !e§)
         {
            this.§@#[§(this.§ !e§.§"!E§);
         }
      }
      
      private function §>"v§(param1:TimerEvent) : void
      {
         this.§&"8§();
         this.§;"F§();
      }
      
      private function §&"8§() : void
      {
         var _loc2_:§>$$§ = null;
         this.§2!a§.stop();
         var _loc1_:§0"<§ = this.§!$§.getItemByName("Container_PowerUp_Intro2") as §0"<§;
         for each(_loc2_ in _loc1_.§5&§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §"#f§(param1:Event) : void
      {
         this.§?"G§();
      }
   }
}
