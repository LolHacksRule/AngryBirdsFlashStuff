package §4"k§
{
   import §&!c§.§5!m§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=!4§.§8"U§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §5!=§
   {
      
      private static const §[!'§:Number = 20;
      
      public static const §%!A§:int = 6000;
      
      private static var §@!U§:§;g§;
       
      
      protected var §3!m§:§@!8§;
      
      protected var §,<§:§1V§;
      
      protected var §#_§:TextField;
      
      protected var §,!g§:MovieClip;
      
      protected var §,#'§:MovieClip;
      
      private var §]V§:§;g§;
      
      protected var §""Z§:MovieClip;
      
      protected var §,#,§:§5!m§;
      
      protected var §]!p§:§%b§;
      
      protected var §3"I§:Number = -1;
      
      protected var §!!Y§:Number = 0.0;
      
      protected var §=1§:Number = 0.0;
      
      protected var §0M§:§%b§;
      
      protected var § !Q§:Boolean;
      
      protected var §6M§:Number;
      
      protected var §,!=§:String;
      
      public function §5!=§(param1:§@!8§, param2:§5!m§)
      {
         super();
         this.§,#,§ = param2;
         this.init(param1);
      }
      
      public static function §<!Y§() : void
      {
         §@!U§.setVisibility(false);
      }
      
      public function get §[A§() : §1V§
      {
         return this.§,<§;
      }
      
      public function get isVisible() : Boolean
      {
         return this.§ !Q§;
      }
      
      public function get §0!O§() : Number
      {
         return this.§6M§;
      }
      
      public function set §0!O§(param1:Number) : void
      {
         this.§6M§ = param1;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§,<§.enabled = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§,<§.enabled;
      }
      
      protected function init(param1:§@!8§) : void
      {
         this.§3!m§ = param1;
         this.§,!g§ = this.§3!m§.getItemByName("Container_ExtraBirdContent").mClip;
         this.§,#'§ = this.§3!m§.getItemByName("Container_AnimateIn").mClip;
         this.§""Z§ = this.§3!m§.getItemByName("MovieClip_Blocker").mClip;
         this.§,<§ = new §1V§(§@!8§(this.§3!m§.getItemByName("Container_ExtraBirdButton")),this.§,#,§);
         this.§,<§.enabled = true;
         this.§]V§ = §;g§(this.§3!m§.getItemByName("Button_Use_Clone_Bird"));
         this.§]V§.addEventListener(§8"U§.§`n§,this.§,<§.onUIInteraction);
         §@!U§ = §;g§(this.§3!m§.getItemByName("Button_Skip_Extra_Bird"));
         §@!U§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         §@!U§.setVisibility(true);
         this.§#_§ = TextField(this.§3!m§.getItemByName("MovieClip_TimeLeft").mClip.txtLabel);
         this.§ !Q§ = false;
         this.§3!m§.mClip.visible = false;
         this.§,!=§ = §4"#§.singleton.§1!L§.getLocalizedString("extrabird_timer");
      }
      
      private function onUIInteraction(param1:§8"U§) : void
      {
         if(param1.§5!u§.toUpperCase() == "NEXT_LEVEL")
         {
            this.§6M§ = 0;
         }
      }
      
      public function dispose() : void
      {
         if(this.§]!p§)
         {
            this.§]!p§.stop();
            this.§]!p§ = null;
         }
         if(this.§0M§)
         {
            this.§0M§.stop();
            this.§0M§ = null;
         }
         this.hide();
         this.§,<§.dispose();
         this.§,<§ = null;
         this.§3"I§ = -1;
      }
      
      public function show() : void
      {
         this.§#_§.text = "";
         this.§3!m§.mClip.visible = true;
         this.§,#'§.alpha = 0;
         this.§,#'§.y = 0;
         this.§,#'§.x = 0;
         this.§]!p§ = §5!%§.§!6§.§4!M§(this.§,#'§,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },{
            "scaleX":7,
            "scaleY":7,
            "alpha":1
         },0.1);
         this.§]!p§.onComplete = this.§&!>§;
         this.§]!p§.delay = 0.3;
         this.§]!p§.play();
         this.§0M§ = §5!%§.§!6§.§4!M§(this.§""Z§,{"alpha":1},{"alpha":0},0.3);
         this.§0M§.play();
         this.§ !Q§ = true;
         this.§6M§ = §%!A§;
         this.§,<§.§5N§(§%!A§ / 1000);
      }
      
      public function hide() : void
      {
         if(this.§]!p§)
         {
            this.§]!p§.stop();
            this.§]!p§ = null;
         }
         if(this.§0M§)
         {
            this.§0M§.stop();
            this.§0M§ = null;
         }
         this.§,<§.§#"0§();
         this.§3!m§.mClip.visible = false;
         this.§ !Q§ = false;
      }
      
      protected function §&!>§() : void
      {
         this.§%#$§();
      }
      
      protected function §%#$§() : void
      {
         this.§!!Y§ = 0;
         this.§=1§ = 0;
         this.§3"I§ = §[!'§;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§ !Q§)
         {
            return;
         }
         this.§6M§ -= param1;
         var _loc2_:String = this.§6M§ < 0 ? "0" : Math.ceil(this.§6M§ / 1000).toString();
         this.§#_§.text = this.§,!=§.replace("[duration]",_loc2_);
         if(this.§6M§ < 0 || this.§3"I§ < 0)
         {
            return;
         }
         this.§,#'§.x -= this.§!!Y§;
         this.§,#'§.y -= this.§=1§;
         if(this.§3"I§ > 0)
         {
            this.§!!Y§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§=1§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§,#'§.x += this.§!!Y§;
            this.§,#'§.y += this.§=1§;
         }
         else
         {
            this.§!!Y§ = 0;
            this.§=1§ = 0;
         }
         this.§3"I§ -= param1 / 10;
      }
   }
}
