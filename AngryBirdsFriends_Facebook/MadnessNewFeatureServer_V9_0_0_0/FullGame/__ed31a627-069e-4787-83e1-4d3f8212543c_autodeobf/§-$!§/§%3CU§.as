package §-$!§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §&$@§.§>N§;
   import §'!j§.Starling;
   import §,!Q§.§8#=§;
   import §,"v§.§;"n§;
   import §-;§.GlitterParticle;
   import §4§.§;!X§;
   import §5" §.§=n§;
   import §6t§.§^"b§;
   import §8#K§.§3Z§;
   import §;#l§.§!!'§;
   import §>2§.§"§;
   import §>2§.§6#t§;
   import §>2§.§7#;§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §<U§ extends EventDispatcher
   {
      
      public static const §?#5§:Boolean = true;
      
      private static const §'#P§:Number = 160;
      
      private static const §'#`§:Number = 60;
      
      private static const §%-§:int = 4;
      
      private static const §=!'§:Number = 12;
      
      private static const §;!^§:Number = 22;
      
      private static const §#"M§:Number = 40;
      
      private static const §`#z§:Number = 40;
      
      private static var §##H§:String = "default";
      
      public static var §7V§:Boolean = false;
      
      private static const §5#D§:int = 700;
       
      
      private var §0f§:Boolean = false;
      
      private var §4"<§:§;!X§;
      
      protected var §[$5§:§]$+§;
      
      private var mLevelManager:§;"n§;
      
      private var §'c§:§8#=§;
      
      private var §[w§:§8#=§;
      
      private var §8!1§:Number;
      
      private var §-$3§:Number;
      
      private var §+E§:int = 59;
      
      private var §<5§:int = 76;
      
      private var §3"i§:int = 8;
      
      private var §+!8§:int = 5;
      
      private var §^!h§:Sprite;
      
      private var §<n§:§ $<§;
      
      private var §+i§:§>N§;
      
      private var §+#_§:Timer;
      
      public function §<U§(param1:§]$+§, param2:§;"n§)
      {
         super();
         this.§[$5§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §='§() : String
      {
         return §##H§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§>x§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§%"]§,false,0,true);
         var _loc1_:int = §0$@§.§0+§();
         if(_loc1_ > §%-§)
         {
            _loc1_ = §%-§;
         }
         _loc2_ = Math.ceil(§0$@§.§0+§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§8!1§ = §=!'§ + this.§<5§ * _loc2_ + this.§3"i§ * _loc3_ + §=!'§;
         this.§-$3§ = §;!^§ + this.§+E§ * _loc1_ + _loc4_ * this.§+!8§ + §;!^§;
         this.§[$5§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§'c§ = this.§[$5§.getItemByName("Container_Slingshot_Buttons");
         this.§[w§ = this.§[$5§.getItemByName("Button_Slingshot");
         this.§^!h§ = new Sprite();
         this.§^!h§.graphics.beginFill(0);
         this.§^!h§.graphics.lineTo(0,this.§8!1§ - §`#z§);
         this.§^!h§.graphics.curveTo(0,this.§8!1§,§`#z§,this.§8!1§);
         this.§^!h§.graphics.lineTo(this.§-$3§ - §`#z§,this.§8!1§);
         this.§^!h§.graphics.curveTo(this.§-$3§,this.§8!1§,this.§-$3§,this.§8!1§ - §`#z§);
         this.§^!h§.graphics.lineTo(this.§-$3§,§`#z§);
         this.§^!h§.graphics.curveTo(this.§-$3§,0,this.§-$3§ - §`#z§,0);
         this.§^!h§.graphics.lineTo(0,0);
         this.§^!h§.graphics.endFill();
         this.§^!h§.x = §#"M§;
         this.§^!h§.y = §'#P§;
         this.§^!h§.alpha = 0.5;
         this.§^!h§.scale9Grid = new Rectangle(§`#z§,§`#z§,this.§-$3§ - §`#z§ * 2,this.§8!1§ - §`#z§ * 2);
         this.§'c§.mClip.addChildAt(this.§^!h§,0);
         this.§'c§.x = §'#`§;
         this.§'c§.y = §'#P§;
         §7V§ = false;
         this.§+#_§ = new Timer(§5#D§);
      }
      
      public function activate(param1:§;!X§) : void
      {
         if(!§?#5§)
         {
            return;
         }
         this.§4"<§ = param1;
         this.§5$3§(false);
         this.§-'§(0);
         § $?§.§`"H§.addEventListener(Event.CHANGE,this.§!$ §);
      }
      
      public function deActivate() : void
      {
         § $?§.§`"H§.removeEventListener(Event.CHANGE,this.§!$ §);
      }
      
      public function dispose() : void
      {
         Starling.§>x§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§%"]§);
         if(!§?#5§)
         {
            return;
         }
         this.§'c§.mClip.removeChild(this.§^!h§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§?#5§)
         {
            return;
         }
         if(this.§4"<§.§1$'§.slingshot.mSlingShotState == §6#t§.§`!t§)
         {
            this.§5$3§(false);
         }
         this.§-'§(param1);
      }
      
      public function §?#>§() : void
      {
         this.§5$3§(!this.§=!j§());
      }
      
      public function §1I§() : void
      {
         if(!this.§=!j§())
         {
            this.§5$3§(false);
         }
      }
      
      public function §"'§() : void
      {
         if(this.§=!j§())
         {
            this.§5$3§(false);
         }
      }
      
      private function §0#f§(param1:TimerEvent) : void
      {
         this.§5$3§(!this.§=!j§());
      }
      
      public function §<#@§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§=n§ = null;
         var _loc3_:§ $<§ = §0$@§.§"P§(param1);
         if(_loc3_)
         {
            if(_loc3_.§!"8§)
            {
               §##H§ = param1;
               if(!param2)
               {
                  this.§<n§ = _loc3_;
                  this.§`#8§(_loc3_.§3$9§);
                  if(param1 != "default")
                  {
                     this.§-!u§(_loc3_.§1#7§);
                  }
               }
               else
               {
                  (§7n§.§6#K§.slingshot as §7#;§).§]$?§(_loc3_,param2);
                  §7V§ = false;
               }
               this.§5$3§(false);
            }
            else if(§!!'§.§#!?§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §!!'§(param1,§!!'§.§!w§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.§8"_§(_loc3_.§1#7§);
               this.§+i§ = new §>N§(this.§[$5§.mClip,_loc4_,_loc3_.§ #=§);
               this.§+i§.addEventListener(§^"b§.§"&§,this.§9#j§);
               this.§+i§.§;!K§();
            }
         }
      }
      
      protected function §9#j§(param1:§^"b§) : void
      {
         var _loc2_:§ $<§ = §0$@§.§"P§(param1.§6#l§);
         var _loc3_:§8#=§ = this.§[$5§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§[$5§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §-!u§(param1:String) : void
      {
         if((§7n§.§6#K§ as §"#1§).§7"Z§().indexOf(param1) == -1)
         {
            §"#1§(§7n§.§6#K§).§=!G§.§<!&§(param1);
         }
         (§7n§.§6#K§ as §"#1§).§5$§(param1);
      }
      
      public function §=!j§() : Boolean
      {
         return this.§0f§;
      }
      
      private function §5$3§(param1:Boolean) : void
      {
         this.§0f§ = param1;
         this.§@!Y§();
      }
      
      private function §@!Y§() : void
      {
         var _loc1_:§8#=§ = null;
         var _loc2_:§8#=§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§ $<§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §0$@§.§;$C§)
         {
            _loc1_ = this.§[$5§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§[$5§.getItemByName(_loc7_.§%"8§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§##H§ == _loc7_.§1#7§)
               {
                  _loc1_.setEnabled(false);
                  this.§[$5§.getItemByName(_loc7_.§7#1§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§[$5§.getItemByName(_loc7_.§7#1§).visible = false;
                  if(_loc7_.§!"8§)
                  {
                     _loc1_.setEnabled(this.§0f§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§0f§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§0f§);
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
                  _loc3_ = §#"M§ + §;!^§ + _loc5_ * this.§+E§ + _loc5_ * this.§+!8§;
                  _loc4_ = §'#P§ + §=!'§ + _loc6_ * this.§<5§ + _loc6_ * this.§3"i§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§##H§ == _loc7_.§1#7§)
                  {
                     this.§[$5§.getItemByName(_loc7_.§7#1§).x = _loc3_;
                     this.§[$5§.getItemByName(_loc7_.§7#1§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §%-§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §-'§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§!^§(param1);
         if(_loc2_)
         {
            this.§'c§.mClip.scrollRect = new Rectangle(§#"M§,§'#P§,this.§-$3§,this.§8!1§);
         }
      }
      
      private function §!^§(param1:Number) : Boolean
      {
         if(this.§=!j§())
         {
            if(!this.§'c§.visible)
            {
               this.§'c§.setVisibility(true);
               return true;
            }
         }
         else if(this.§'c§.visible)
         {
            this.§'c§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §`#8§(param1:String) : void
      {
         this.§&"c§();
         §7V§ = true;
         var _loc2_:§]$+§ = this.§[$5§.getItemByName("Container_PowerUp_Intro2") as §]$+§;
         _loc2_.visible = true;
         §3Z§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§+#_§.delay = §5#D§;
         this.§+#_§.addEventListener(TimerEvent.TIMER,this.§^!"§);
         this.§+#_§.start();
         var _loc3_:§'!`§ = _loc2_.getItemByName(param1) as §'!`§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §8$D§() : void
      {
         if(Starling.§8I§)
         {
            if(this.§<n§)
            {
               this.§'"7§(this.§<n§.§1#7§);
            }
         }
      }
      
      private function §'"7§(param1:String) : void
      {
         var _loc2_:§ $<§ = §0$@§.§"P§(param1);
         (§7n§.§6#K§.slingshot as §7#;§).§]$?§(_loc2_,false);
         §7V§ = false;
         this.§<n§ = null;
      }
      
      private function §%"]§(param1:Event) : void
      {
         if(this.§<n§)
         {
            this.§'"7§(this.§<n§.§1#7§);
         }
      }
      
      private function §^!"§(param1:TimerEvent) : void
      {
         this.§&"c§();
         this.§8$D§();
      }
      
      private function §&"c§() : void
      {
         var _loc2_:§8#=§ = null;
         this.§+#_§.stop();
         var _loc1_:§]$+§ = this.§[$5§.getItemByName("Container_PowerUp_Intro2") as §]$+§;
         for each(_loc2_ in _loc1_.§!$"§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §!$ §(param1:Event) : void
      {
         this.§@!Y§();
      }
   }
}
