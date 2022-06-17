package § O§
{
   import § !D§.§"b§;
   import § !D§.§0$?§;
   import § !D§.§4B§;
   import §!!?§.§,!K§;
   import §!L§.§6!<§;
   import §"$=§.§'![§;
   import §&0§.§^#O§;
   import §-#R§.GlitterParticle;
   import §4!n§.§#$>§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §5"c§.§9"2§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import §]"P§.Starling;
   import §]$<§.§9g§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §&# § extends EventDispatcher
   {
      
      public static const §=# §:Boolean = true;
      
      private static const §2m§:Number = 160;
      
      private static const §=1§:Number = 60;
      
      private static const §6!@§:int = 4;
      
      private static const §&" §:Number = 12;
      
      private static const §""J§:Number = 22;
      
      private static const §@!D§:Number = 40;
      
      private static const §3"`§:Number = 40;
      
      private static var §>n§:String = "default";
      
      public static var §-"f§:Boolean = false;
      
      private static const §@#u§:int = 700;
       
      
      private var §;"D§:Boolean = false;
      
      private var §2#K§:§6!<§;
      
      protected var §<"`§:§<c§;
      
      private var mLevelManager:§'![§;
      
      private var §!S§:§#$>§;
      
      private var §5!8§:§#$>§;
      
      private var §1!W§:Number;
      
      private var §@!W§:Number;
      
      private var §[$#§:int = 59;
      
      private var §&"]§:int = 76;
      
      private var §^Z§:int = 8;
      
      private var §0#c§:int = 5;
      
      private var §[$A§:Sprite;
      
      private var §-$5§:§6f§;
      
      private var §>!A§:§^#O§;
      
      private var §&"G§:Timer;
      
      public function §&# §(param1:§<c§, param2:§'![§)
      {
         super();
         this.§<"`§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      public static function §!$0§() : String
      {
         return §>n§;
      }
      
      private function init() : void
      {
         var _loc2_:int = 0;
         Starling.§3!I§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§-s§,false,0,true);
         var _loc1_:int = §7!S§.§>#`§();
         if(_loc1_ > §6!@§)
         {
            _loc1_ = §6!@§;
         }
         _loc2_ = Math.ceil(§7!S§.§>#`§() / _loc1_);
         var _loc3_:int = _loc2_ > 1 ? int(_loc2_ - 1) : 0;
         var _loc4_:int = _loc1_ > 1 ? int(_loc1_ - 1) : 0;
         this.§1!W§ = §&" § + this.§&"]§ * _loc2_ + this.§^Z§ * _loc3_ + §&" §;
         this.§@!W§ = §""J§ + this.§[$#§ * _loc1_ + _loc4_ * this.§0#c§ + §""J§;
         this.§<"`§.getItemByName("Button_Slingshot").mClip.rotation = 0;
         this.§!S§ = this.§<"`§.getItemByName("Container_Slingshot_Buttons");
         this.§5!8§ = this.§<"`§.getItemByName("Button_Slingshot");
         this.§[$A§ = new Sprite();
         this.§[$A§.graphics.beginFill(0);
         this.§[$A§.graphics.lineTo(0,this.§1!W§ - §3"`§);
         this.§[$A§.graphics.curveTo(0,this.§1!W§,§3"`§,this.§1!W§);
         this.§[$A§.graphics.lineTo(this.§@!W§ - §3"`§,this.§1!W§);
         this.§[$A§.graphics.curveTo(this.§@!W§,this.§1!W§,this.§@!W§,this.§1!W§ - §3"`§);
         this.§[$A§.graphics.lineTo(this.§@!W§,§3"`§);
         this.§[$A§.graphics.curveTo(this.§@!W§,0,this.§@!W§ - §3"`§,0);
         this.§[$A§.graphics.lineTo(0,0);
         this.§[$A§.graphics.endFill();
         this.§[$A§.x = §@!D§;
         this.§[$A§.y = §2m§;
         this.§[$A§.alpha = 0.5;
         this.§[$A§.scale9Grid = new Rectangle(§3"`§,§3"`§,this.§@!W§ - §3"`§ * 2,this.§1!W§ - §3"`§ * 2);
         this.§!S§.mClip.addChildAt(this.§[$A§,0);
         this.§!S§.x = §=1§;
         this.§!S§.y = §2m§;
         §-"f§ = false;
         this.§&"G§ = new Timer(§@#u§);
      }
      
      public function activate(param1:§6!<§) : void
      {
         if(!§=# §)
         {
            return;
         }
         this.§2#K§ = param1;
         this.§ =§(false);
         this.§9!S§(0);
         §#$D§.§?q§.addEventListener(Event.CHANGE,this.§8!g§);
      }
      
      public function deActivate() : void
      {
         §#$D§.§?q§.removeEventListener(Event.CHANGE,this.§8!g§);
      }
      
      public function dispose() : void
      {
         Starling.§3!I§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§-s§);
         if(!§=# §)
         {
            return;
         }
         this.§!S§.mClip.removeChild(this.§[$A§);
      }
      
      public function run(param1:Number) : void
      {
         if(!§=# §)
         {
            return;
         }
         if(this.§2#K§.§-a§.slingshot.mSlingShotState == §"b§.§4#C§)
         {
            this.§ =§(false);
         }
         this.§9!S§(param1);
      }
      
      public function §1!y§() : void
      {
         this.§ =§(!this.§'!T§());
      }
      
      public function §##"§() : void
      {
         if(!this.§'!T§())
         {
            this.§ =§(false);
         }
      }
      
      public function §@!j§() : void
      {
         if(this.§'!T§())
         {
            this.§ =§(false);
         }
      }
      
      private function §`b§(param1:TimerEvent) : void
      {
         this.§ =§(!this.§'!T§());
      }
      
      public function §=!%§(param1:String, param2:Boolean) : void
      {
         var _loc4_:§,!K§ = null;
         var _loc3_:§6f§ = §7!S§.§%$<§(param1);
         if(_loc3_)
         {
            if(_loc3_.§%!`§)
            {
               §>n§ = param1;
               if(!param2)
               {
                  this.§-$5§ = _loc3_;
                  this.§<"R§(_loc3_.§2#B§);
                  if(param1 != "default")
                  {
                     this.§3$3§(_loc3_.§]'§);
                  }
               }
               else
               {
                  (§%"T§.§;`§.slingshot as §0$?§).§4##§(_loc3_,param2);
                  §-"f§ = false;
               }
               this.§ =§(false);
            }
            else if(§9g§.§9"+§(param1))
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §9g§(param1,§9g§.§'H§));
            }
            else
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.§6=§(_loc3_.§]'§);
               this.§>!A§ = new §^#O§(this.§<"`§.mClip,_loc4_,_loc3_.§[L§);
               this.§>!A§.addEventListener(§9"2§.§?"t§,this.§+"`§);
               this.§>!A§.§ "i§();
            }
         }
      }
      
      protected function §+"`§(param1:§9"2§) : void
      {
         var _loc2_:§6f§ = §7!S§.§%$<§(param1.§`"L§);
         var _loc3_:§#$>§ = this.§<"`§.getItemByName(_loc2_.buttonName);
         var _loc4_:MovieClip;
         var _loc5_:Point = (_loc4_ = _loc3_.mClip.getChildAt(1) as MovieClip).localToGlobal(new Point(0,0));
         var _loc7_:int = 0;
         while(_loc7_ < 40)
         {
            this.§<"`§.mClip.addChild(new GlitterParticle(_loc5_.x + _loc4_.width * 0.5 + Math.random() * 20,_loc5_.y + _loc4_.width * 0.5 + Math.random() * 20));
            _loc7_++;
         }
      }
      
      private function §3$3§(param1:String) : void
      {
         if((§%"T§.§;`§ as §4B§).§4#h§().indexOf(param1) == -1)
         {
            §4B§(§%"T§.§;`§).§##`§.§3!a§(param1);
         }
         (§%"T§.§;`§ as §4B§).§97§(param1);
      }
      
      public function §'!T§() : Boolean
      {
         return this.§;"D§;
      }
      
      private function § =§(param1:Boolean) : void
      {
         this.§;"D§ = param1;
         this.§`"n§();
      }
      
      private function §`"n§() : void
      {
         var _loc1_:§#$>§ = null;
         var _loc2_:§#$>§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:§6f§ = null;
         var _loc8_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in §7!S§.§8#F§)
         {
            _loc1_ = this.§<"`§.getItemByName(_loc7_.buttonName);
            _loc2_ = this.§<"`§.getItemByName(_loc7_.§+"w§);
            if(_loc1_)
            {
               _loc8_ = true;
               if(§>n§ == _loc7_.§]'§)
               {
                  _loc1_.setEnabled(false);
                  this.§<"`§.getItemByName(_loc7_.§##?§).visible = true;
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
               else
               {
                  this.§<"`§.getItemByName(_loc7_.§##?§).visible = false;
                  if(_loc7_.§%!`§)
                  {
                     _loc1_.setEnabled(this.§;"D§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(false);
                     }
                  }
                  else if(_loc7_.available)
                  {
                     _loc1_.setEnabled(this.§;"D§);
                     if(_loc2_)
                     {
                        _loc2_.setVisibility(true);
                        _loc2_.setEnabled(this.§;"D§);
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
                  _loc3_ = §@!D§ + §""J§ + _loc5_ * this.§[$#§ + _loc5_ * this.§0#c§;
                  _loc4_ = §2m§ + §&" § + _loc6_ * this.§&"]§ + _loc6_ * this.§^Z§;
                  _loc1_.x = _loc3_;
                  _loc1_.y = _loc4_;
                  if(_loc2_)
                  {
                     _loc2_.x = _loc3_;
                     _loc2_.y = _loc4_;
                  }
                  if(§>n§ == _loc7_.§]'§)
                  {
                     this.§<"`§.getItemByName(_loc7_.§##?§).x = _loc3_;
                     this.§<"`§.getItemByName(_loc7_.§##?§).y = _loc4_;
                  }
                  _loc5_++;
                  if(_loc5_ == §6!@§)
                  {
                     _loc6_++;
                     _loc5_ = 0;
                  }
               }
            }
         }
      }
      
      private function §9!S§(param1:Number) : void
      {
         var _loc2_:Boolean = this.§`!f§(param1);
         if(_loc2_)
         {
            this.§!S§.mClip.scrollRect = new Rectangle(§@!D§,§2m§,this.§@!W§,this.§1!W§);
         }
      }
      
      private function §`!f§(param1:Number) : Boolean
      {
         if(this.§'!T§())
         {
            if(!this.§!S§.visible)
            {
               this.§!S§.setVisibility(true);
               return true;
            }
         }
         else if(this.§!S§.visible)
         {
            this.§!S§.setVisibility(false);
            return true;
         }
         return false;
      }
      
      private function §<"R§(param1:String) : void
      {
         this.§6#E§();
         §-"f§ = true;
         var _loc2_:§<c§ = this.§<"`§.getItemByName("Container_PowerUp_Intro2") as §<c§;
         _loc2_.visible = true;
         §[#%§.playSound("slingshot_generic_activation","ChannelPowerups",0,0.3);
         this.§&"G§.delay = §@#u§;
         this.§&"G§.addEventListener(TimerEvent.TIMER,this.§+§);
         this.§&"G§.start();
         var _loc3_:§>#8§ = _loc2_.getItemByName(param1) as §>#8§;
         _loc3_.visible = true;
         _loc3_.mClip.gotoAndPlay(1);
         if(_loc3_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc3_.mClip.parent.removeChildAt(0);
         }
      }
      
      protected function §1$4§() : void
      {
         if(Starling.§%"I§)
         {
            if(this.§-$5§)
            {
               this.§!!+§(this.§-$5§.§]'§);
            }
         }
      }
      
      private function §!!+§(param1:String) : void
      {
         var _loc2_:§6f§ = §7!S§.§%$<§(param1);
         (§%"T§.§;`§.slingshot as §0$?§).§4##§(_loc2_,false);
         §-"f§ = false;
         this.§-$5§ = null;
      }
      
      private function §-s§(param1:Event) : void
      {
         if(this.§-$5§)
         {
            this.§!!+§(this.§-$5§.§]'§);
         }
      }
      
      private function §+§(param1:TimerEvent) : void
      {
         this.§6#E§();
         this.§1$4§();
      }
      
      private function §6#E§() : void
      {
         var _loc2_:§#$>§ = null;
         this.§&"G§.stop();
         var _loc1_:§<c§ = this.§<"`§.getItemByName("Container_PowerUp_Intro2") as §<c§;
         for each(_loc2_ in _loc1_.§,#i§)
         {
            _loc2_.mClip.stop();
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §8!g§(param1:Event) : void
      {
         this.§`"n§();
      }
   }
}
