package §7""§
{
   import §#"_§.§<!Q§;
   import §'! §.§41§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^!1§ extends §4"&§
   {
      
      private static const §;M§:Number = 0.9;
       
      
      protected var mAsset:MovieClip;
      
      protected var §^!S§:MovieClip;
      
      protected var §9"F§:Number;
      
      protected var §6"k§:int;
      
      protected var §&b§:int;
      
      protected var §8#&§:int;
      
      protected var §<"p§:Boolean;
      
      protected var §6!3§:Boolean;
      
      protected var §9!Y§:Boolean;
      
      protected var §3!;§:Boolean;
      
      protected var § "r§:Boolean;
      
      public function §^!1§(param1:String)
      {
         super();
         this.mAsset = new §5"]§.§4!K§(param1)();
         addChild(this.mAsset);
         buttonMode = true;
         mouseChildren = false;
         this.mAsset.z = 0;
      }
      
      override protected function onOver(param1:Event) : void
      {
         if(!this.locked && !this.§@!I§)
         {
            super.onOver(param1);
         }
      }
      
      override protected function onOut(param1:Event) : void
      {
         if(!this.locked && !this.§@!I§)
         {
            if(this.§6!3§)
            {
               §>!t§.stop();
               this.§-v§();
            }
            else
            {
               super.onOut(param1);
            }
         }
      }
      
      public function get hasOutro() : Boolean
      {
         return this.§3!;§;
      }
      
      public function set hasOutro(param1:Boolean) : void
      {
         this.§3!;§ = param1;
         this.mAsset.hasOutro.visible = this.§3!;§;
      }
      
      public function get hasIntro() : Boolean
      {
         return this.§9!Y§;
      }
      
      public function set hasIntro(param1:Boolean) : void
      {
         this.§9!Y§ = param1;
         this.mAsset.hasIntro.visible = this.§9!Y§;
      }
      
      public function get §&!G§() : Boolean
      {
         return this.§6!3§;
      }
      
      public function set §&!G§(param1:Boolean) : void
      {
         this.§6!3§ = param1;
         if(this.§6!3§)
         {
            if(§>!t§)
            {
               §>!t§.stop();
            }
            hoverScale = 1;
            this.§3M§();
         }
         else if(!this.§6!3§ && §>!t§)
         {
            §>!t§.stop();
            hoverScale = 1;
         }
      }
      
      private function §-v§() : void
      {
         §>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":1},null,§;M§,§<!Q§.easeInOut);
         §>!t§.onComplete = this.§3M§;
         §>!t§.play();
      }
      
      private function §3M§(param1:Boolean = true) : void
      {
         §>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":1.2},null,§;M§,§<!Q§.easeInOut);
         if(param1)
         {
            §>!t§.onComplete = this.§-v§;
         }
         §>!t§.play();
      }
      
      public function get §9!E§() : int
      {
         return this.§8#&§;
      }
      
      public function set §9!E§(param1:int) : void
      {
         this.§8#&§ = param1;
         this.mAsset.falconBadge.visible = this.§8#&§ > 0;
         this.mAsset.falconBadge.gotoAndStop(this.§8#&§ < 50 ? 3 : (this.§8#&§ == 100 ? 1 : 2));
      }
      
      public function get §^"2§() : int
      {
         return this.§&b§;
      }
      
      public function set §^"2§(param1:int) : void
      {
         this.§&b§ = param1;
         this.mAsset.levelStars.gotoAndStop(this.§&b§.toString() + "_stars");
      }
      
      public function get §^a§() : int
      {
         return this.§6"k§;
      }
      
      public function set §^a§(param1:int) : void
      {
         this.§6"k§ = param1;
         this.mAsset.txtLevelNumber.text = this.§6"k§.toString();
      }
      
      public function get locked() : Boolean
      {
         return this.§<"p§;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.§<"p§ = param1;
         this.mAsset.gotoAndStop(!!this.§<"p§ ? "locked" : "unlocked");
         buttonMode = !this.§<"p§;
         this.mAsset.txtLevelNumber.visible = !this.§<"p§;
      }
      
      public function get §@!I§() : Boolean
      {
         return this.§ "r§;
      }
      
      public function set §@!I§(param1:Boolean) : void
      {
         this.§ "r§ = param1;
         if(this.§ "r§)
         {
            this.mAsset.gotoAndStop("comingSoon");
            buttonMode = false;
            this.mAsset.txtLevelNumber.visible = false;
         }
      }
   }
}
