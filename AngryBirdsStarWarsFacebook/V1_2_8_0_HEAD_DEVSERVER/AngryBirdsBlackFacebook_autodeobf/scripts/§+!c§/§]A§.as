package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]A§ extends §3#<§
   {
      
      private static const §@"P§:Number = 0.9;
       
      
      protected var mAsset:MovieClip;
      
      protected var §["G§:MovieClip;
      
      protected var §[!i§:Number;
      
      protected var §;"L§:int;
      
      protected var §4#<§:int;
      
      protected var §?#3§:int;
      
      protected var §[!w§:Boolean;
      
      protected var §-#%§:Boolean;
      
      protected var §,!]§:Boolean;
      
      protected var §6a§:Boolean;
      
      protected var §8"O§:Boolean;
      
      public function §]A§(param1:String)
      {
         super();
         this.mAsset = new §5_§.§`"G§(param1)();
         addChild(this.mAsset);
         buttonMode = true;
         mouseChildren = false;
         this.mAsset.z = 0;
      }
      
      override protected function onOver(param1:Event) : void
      {
         if(!this.locked && !this.§2p§)
         {
            super.onOver(param1);
         }
      }
      
      override protected function onOut(param1:Event) : void
      {
         if(!this.locked && !this.§2p§)
         {
            if(this.§-#%§)
            {
               §%#V§.stop();
               this.§^!b§();
            }
            else
            {
               super.onOut(param1);
            }
         }
      }
      
      public function get hasOutro() : Boolean
      {
         return this.§6a§;
      }
      
      public function set hasOutro(param1:Boolean) : void
      {
         this.§6a§ = param1;
         this.mAsset.hasOutro.visible = this.§6a§;
      }
      
      public function get hasIntro() : Boolean
      {
         return this.§,!]§;
      }
      
      public function set hasIntro(param1:Boolean) : void
      {
         this.§,!]§ = param1;
         this.mAsset.hasIntro.visible = this.§,!]§;
      }
      
      public function get §3P§() : Boolean
      {
         return this.§-#%§;
      }
      
      public function set §3P§(param1:Boolean) : void
      {
         this.§-#%§ = param1;
         if(this.§-#%§)
         {
            if(§%#V§)
            {
               §%#V§.stop();
            }
            hoverScale = 1;
            this.§7#P§();
         }
         else if(!this.§-#%§ && §%#V§)
         {
            §%#V§.stop();
            hoverScale = 1;
         }
      }
      
      private function §^!b§() : void
      {
         §%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,§@"P§,§9!Z§.easeInOut);
         §%#V§.onComplete = this.§7#P§;
         §%#V§.play();
      }
      
      private function §7#P§(param1:Boolean = true) : void
      {
         §%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1.2},null,§@"P§,§9!Z§.easeInOut);
         if(param1)
         {
            §%#V§.onComplete = this.§^!b§;
         }
         §%#V§.play();
      }
      
      public function get §,!M§() : int
      {
         return this.§?#3§;
      }
      
      public function set §,!M§(param1:int) : void
      {
         this.§?#3§ = param1;
         this.mAsset.falconBadge.visible = this.§?#3§ > 0;
         this.mAsset.falconBadge.gotoAndStop(this.§?#3§ < 50 ? 3 : (this.§?#3§ == 100 ? 1 : 2));
      }
      
      public function get §[!F§() : int
      {
         return this.§4#<§;
      }
      
      public function set §[!F§(param1:int) : void
      {
         this.§4#<§ = param1;
         this.mAsset.levelStars.gotoAndStop(this.§4#<§.toString() + "_stars");
      }
      
      public function get §@"T§() : int
      {
         return this.§;"L§;
      }
      
      public function set §@"T§(param1:int) : void
      {
         this.§;"L§ = param1;
         this.mAsset.txtLevelNumber.text = this.§;"L§.toString();
      }
      
      public function get locked() : Boolean
      {
         return this.§[!w§;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.§[!w§ = param1;
         this.mAsset.gotoAndStop(!!this.§[!w§ ? "locked" : "unlocked");
         buttonMode = !this.§[!w§;
         this.mAsset.txtLevelNumber.visible = !this.§[!w§;
      }
      
      public function get §2p§() : Boolean
      {
         return this.§8"O§;
      }
      
      public function set §2p§(param1:Boolean) : void
      {
         this.§8"O§ = param1;
         if(this.§8"O§)
         {
            this.mAsset.gotoAndStop("comingSoon");
            buttonMode = false;
            this.mAsset.txtLevelNumber.visible = false;
         }
      }
   }
}
