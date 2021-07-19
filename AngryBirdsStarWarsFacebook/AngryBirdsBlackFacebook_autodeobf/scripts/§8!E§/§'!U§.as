package §8!E§
{
   import §"O§.§^#]§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §'!U§
   {
      
      private static const §`">§:Number = 20;
      
      public static const §0"E§:int = 6000;
      
      private static var §5!M§:§^"m§;
       
      
      protected var §=#=§:§ #^§;
      
      protected var §[!Q§:§"#X§;
      
      protected var §%"P§:TextField;
      
      protected var §4q§:MovieClip;
      
      protected var §""Z§:MovieClip;
      
      private var §+!t§:§^"m§;
      
      protected var §`!J§:MovieClip;
      
      protected var §try§:§^#]§;
      
      protected var §8S§:§[#R§;
      
      protected var §@1§:Number = -1;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §'#a§:§[#R§;
      
      protected var §"!A§:Boolean;
      
      protected var §8#_§:Number;
      
      protected var §6"B§:String;
      
      public function §'!U§(param1:§ #^§, param2:§^#]§)
      {
         super();
         this.§try§ = param2;
         this.init(param1);
      }
      
      public static function §2!U§() : void
      {
         §5!M§.setVisibility(false);
      }
      
      public function get §@"N§() : §"#X§
      {
         return this.§[!Q§;
      }
      
      public function get isVisible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §6"J§() : Number
      {
         return this.§8#_§;
      }
      
      public function set §6"J§(param1:Number) : void
      {
         this.§8#_§ = param1;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§[!Q§.enabled = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§[!Q§.enabled;
      }
      
      protected function init(param1:§ #^§) : void
      {
         this.§=#=§ = param1;
         this.§4q§ = this.§=#=§.getItemByName("Container_ExtraBirdContent").mClip;
         this.§""Z§ = this.§=#=§.getItemByName("Container_AnimateIn").mClip;
         this.§`!J§ = this.§=#=§.getItemByName("MovieClip_Blocker").mClip;
         this.§[!Q§ = new §"#X§(§ #^§(this.§=#=§.getItemByName("Container_ExtraBirdButton")),this.§try§);
         this.§[!Q§.enabled = true;
         this.§+!t§ = §^"m§(this.§=#=§.getItemByName("Button_Use_Clone_Bird"));
         this.§+!t§.addEventListener(§6#'§.§+!>§,this.§[!Q§.onUIInteraction);
         §5!M§ = §^"m§(this.§=#=§.getItemByName("Button_Skip_Extra_Bird"));
         §5!M§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         §5!M§.setVisibility(true);
         this.§%"P§ = TextField(this.§=#=§.getItemByName("MovieClip_TimeLeft").mClip.txtLabel);
         this.§"!A§ = false;
         this.§=#=§.mClip.visible = false;
         this.§6"B§ = §4#;§.singleton.§4#,§.getLocalizedString("extrabird_timer");
      }
      
      private function onUIInteraction(param1:§6#'§) : void
      {
         if(param1.§=!k§.toUpperCase() == "NEXT_LEVEL")
         {
            this.§8#_§ = 0;
         }
      }
      
      public function dispose() : void
      {
         if(this.§8S§)
         {
            this.§8S§.stop();
            this.§8S§ = null;
         }
         if(this.§'#a§)
         {
            this.§'#a§.stop();
            this.§'#a§ = null;
         }
         this.hide();
         this.§[!Q§.dispose();
         this.§[!Q§ = null;
         this.§@1§ = -1;
      }
      
      public function show() : void
      {
         this.§%"P§.text = "";
         this.§=#=§.mClip.visible = true;
         this.§""Z§.alpha = 0;
         this.§""Z§.y = 0;
         this.§""Z§.x = 0;
         this.§8S§ = §-#C§.§%!E§.§^!H§(this.§""Z§,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },{
            "scaleX":7,
            "scaleY":7,
            "alpha":1
         },0.1);
         this.§8S§.onComplete = this.§9#]§;
         this.§8S§.delay = 0.3;
         this.§8S§.play();
         this.§'#a§ = §-#C§.§%!E§.§^!H§(this.§`!J§,{"alpha":1},{"alpha":0},0.3);
         this.§'#a§.play();
         this.§"!A§ = true;
         this.§8#_§ = §0"E§;
         this.§[!Q§.§##3§(§0"E§ / 1000);
      }
      
      public function hide() : void
      {
         if(this.§8S§)
         {
            this.§8S§.stop();
            this.§8S§ = null;
         }
         if(this.§'#a§)
         {
            this.§'#a§.stop();
            this.§'#a§ = null;
         }
         this.§[!Q§.§>z§();
         this.§=#=§.mClip.visible = false;
         this.§"!A§ = false;
      }
      
      protected function §9#]§() : void
      {
         this.§[!?§();
      }
      
      protected function §[!?§() : void
      {
         this.§3#S§ = 0;
         this.§"#Q§ = 0;
         this.§@1§ = §`">§;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§"!A§)
         {
            return;
         }
         this.§8#_§ -= param1;
         var _loc2_:String = this.§8#_§ < 0 ? "0" : Math.ceil(this.§8#_§ / 1000).toString();
         this.§%"P§.text = this.§6"B§.replace("[duration]",_loc2_);
         if(this.§8#_§ < 0 || this.§@1§ < 0)
         {
            return;
         }
         this.§""Z§.x -= this.§3#S§;
         this.§""Z§.y -= this.§"#Q§;
         if(this.§@1§ > 0)
         {
            this.§3#S§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§"#Q§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§""Z§.x += this.§3#S§;
            this.§""Z§.y += this.§"#Q§;
         }
         else
         {
            this.§3#S§ = 0;
            this.§"#Q§ = 0;
         }
         this.§@1§ -= param1 / 10;
      }
   }
}
