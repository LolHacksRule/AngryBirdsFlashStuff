package §`"]§
{
   import §!"-§.§]"_§;
   import §0"g§.§5!%§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^"N§ extends § D§
   {
      
      private static const §0o§:Number = 0.9;
       
      
      protected var mAsset:MovieClip;
      
      protected var §-!_§:MovieClip;
      
      protected var §7"r§:Number;
      
      protected var §&@§:int;
      
      protected var §1!5§:int;
      
      protected var §^"'§:int;
      
      protected var §6!j§:Boolean;
      
      protected var §0!#§:Boolean;
      
      protected var §^!p§:Boolean;
      
      protected var § z§:Boolean;
      
      protected var §-"5§:Boolean;
      
      public function §^"N§(param1:String)
      {
         super();
         this.mAsset = new §%!Z§.§;",§(param1)();
         addChild(this.mAsset);
         buttonMode = true;
         mouseChildren = false;
         this.mAsset.z = 0;
      }
      
      override protected function onOver(param1:Event) : void
      {
         if(!this.locked && !this.§`m§)
         {
            super.onOver(param1);
         }
      }
      
      override protected function onOut(param1:Event) : void
      {
         if(!this.locked && !this.§`m§)
         {
            if(this.§0!#§)
            {
               §%!1§.stop();
               this.§&!A§();
            }
            else
            {
               super.onOut(param1);
            }
         }
      }
      
      public function get hasOutro() : Boolean
      {
         return this.§ z§;
      }
      
      public function set hasOutro(param1:Boolean) : void
      {
         this.§ z§ = param1;
         this.mAsset.hasOutro.visible = this.§ z§;
      }
      
      public function get hasIntro() : Boolean
      {
         return this.§^!p§;
      }
      
      public function set hasIntro(param1:Boolean) : void
      {
         this.§^!p§ = param1;
         this.mAsset.hasIntro.visible = this.§^!p§;
      }
      
      public function get §7B§() : Boolean
      {
         return this.§0!#§;
      }
      
      public function set §7B§(param1:Boolean) : void
      {
         this.§0!#§ = param1;
         if(this.§0!#§)
         {
            if(§%!1§)
            {
               §%!1§.stop();
            }
            hoverScale = 1;
            this.§5!?§();
         }
         else if(!this.§0!#§ && §%!1§)
         {
            §%!1§.stop();
            hoverScale = 1;
         }
      }
      
      private function §&!A§() : void
      {
         §%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":1},null,§0o§,§]"_§.easeInOut);
         §%!1§.onComplete = this.§5!?§;
         §%!1§.play();
      }
      
      private function §5!?§(param1:Boolean = true) : void
      {
         §%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":1.2},null,§0o§,§]"_§.easeInOut);
         if(param1)
         {
            §%!1§.onComplete = this.§&!A§;
         }
         §%!1§.play();
      }
      
      public function get §9b§() : int
      {
         return this.§^"'§;
      }
      
      public function set §9b§(param1:int) : void
      {
         this.§^"'§ = param1;
         this.mAsset.falconBadge.visible = this.§^"'§ > 0;
         this.mAsset.falconBadge.gotoAndStop(this.§^"'§ < 50 ? 3 : (this.§^"'§ == 100 ? 1 : 2));
      }
      
      public function get §2z§() : int
      {
         return this.§1!5§;
      }
      
      public function set §2z§(param1:int) : void
      {
         this.§1!5§ = param1;
         this.mAsset.levelStars.gotoAndStop(this.§1!5§.toString() + "_stars");
      }
      
      public function get §@!$§() : int
      {
         return this.§&@§;
      }
      
      public function set §@!$§(param1:int) : void
      {
         this.§&@§ = param1;
         this.mAsset.txtLevelNumber.text = this.§&@§.toString();
      }
      
      public function get locked() : Boolean
      {
         return this.§6!j§;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.§6!j§ = param1;
         this.mAsset.gotoAndStop(!!this.§6!j§ ? "locked" : "unlocked");
         buttonMode = !this.§6!j§;
         this.mAsset.txtLevelNumber.visible = !this.§6!j§;
      }
      
      public function get §`m§() : Boolean
      {
         return this.§-"5§;
      }
      
      public function set §`m§(param1:Boolean) : void
      {
         this.§-"5§ = param1;
         if(this.§-"5§)
         {
            this.mAsset.gotoAndStop("comingSoon");
            buttonMode = false;
            this.mAsset.txtLevelNumber.visible = false;
         }
      }
   }
}
