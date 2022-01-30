package §0!6§
{
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import flash.display.MovieClip;
   
   public class §&l§ extends §+!?§
   {
       
      
      private var §?F§:§%!u§;
      
      private var §5z§:§+I§;
      
      private var §'!2§:§+I§;
      
      private var §^'§:§+I§;
      
      private var §5![§:§+I§;
      
      private var § v§:§+I§;
      
      private var §!"<§:§+I§;
      
      private var §7"7§:§+I§;
      
      private var §!!v§:§;!Z§;
      
      private var §,"1§:§;!Z§;
      
      private var § !y§:§;!Z§;
      
      private var §0">§:§;!Z§;
      
      private var §6E§:§;!Z§;
      
      private var §;B§:MovieClip;
      
      private var §`a§:§;!P§;
      
      private var startX:Number;
      
      private var §`"7§:Number;
      
      private var §=F§:Number;
      
      private var §8,§:Number;
      
      private var §5!M§:Number;
      
      private const §4G§:String = "Open";
      
      private const §-8§:String = "Closed";
      
      private const §=W§:String = "Moving";
      
      private const §!%§:String = "Normal";
      
      private const §'j§:String = "FullScreen";
      
      private const §7!Y§:Number = 0.1;
      
      private const §2!Z§:Number = 0.1;
      
      private var §?"§:Function;
      
      private var status:String = "Closed";
      
      private const §<"#§:int = 6;
      
      public function §&l§(param1:XML, param2:§+!?§)
      {
         this.§?"§ = §-!M§.§0!;§;
         super(param1,param2,null);
         param2.§`!Y§(this);
         this.§!!v§ = getItemByName("Button_Tool") as §;!Z§;
         this.§!!v§.setComponentState(§;_§.§ "2§);
         this.§,"1§ = getItemByName("Button_Help") as §;!Z§;
         this.§,"1§.setComponentState(§;_§.§ "2§);
         this.§ !y§ = getItemByName("Button_Sound") as §;!Z§;
         this.§ !y§.setComponentState(§;_§.§ "2§);
         this.§0">§ = getItemByName("Button_Fullscreen") as §;!Z§;
         this.§0">§.setComponentState(§;_§.§ "2§);
         this.§6E§ = getItemByName("Button_Settings") as §;!Z§;
         this.§`a§ = getItemByName("MovieClip_Settings_Block") as §;!P§;
         this.§;B§ = this.§6E§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§6E§.mClip.x;
         this.§`"7§ = this.§!!v§.mClip.x;
         this.§=F§ = this.§,"1§.mClip.x;
         this.§8,§ = this.§0">§.mClip.x;
         this.§5!M§ = this.§ !y§.mClip.x;
         this.§!!v§.x = this.§6E§.x;
         this.§,"1§.x = this.§6E§.x;
         this.§ !y§.x = this.§6E§.x;
         this.§0">§.x = this.§6E§.x;
         this.§`a§.setVisibility(false);
         this.§!!v§.setVisibility(false);
         this.§,"1§.setVisibility(false);
         this.§ !y§.setVisibility(false);
         this.§0">§.setVisibility(false);
      }
      
      public function §>!o§() : void
      {
         if(this.status == this.§=W§)
         {
            return;
         }
         if(this.status == this.§4G§)
         {
            this.§ !g§();
         }
         else if(this.status == this.§-8§)
         {
            this.§&]§();
         }
         this.status = this.§=W§;
      }
      
      private function §&]§() : void
      {
         if(this.§7"7§)
         {
            this.§7"7§.stop();
         }
         this.§'!2§ = §-!M§.§ "!§.§+d§(this.§!!v§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§`"7§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§7!Y§,this.§?"§);
         this.§5z§ = §-!M§.§ "!§.§+d§(this.§,"1§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§=F§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§7!Y§,this.§?"§);
         this.§^'§ = §-!M§.§ "!§.§+d§(this.§0">§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§8,§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§7!Y§,this.§?"§);
         this.§5![§ = §-!M§.§ "!§.§+d§(this.§ !y§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§5!M§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§7!Y§,this.§?"§);
         this.§ v§ = §-!M§.§ "!§.§+d§(this.§;B§,{"rotation":-180},{"rotation":0},0.4,this.§?"§);
         if(!§%"$§.§"!V§.§&%§())
         {
            this.§!!v§.setVisibility(true);
            this.§0">§.setVisibility(true);
            this.§,"1§.setVisibility(false);
            this.§ !y§.setVisibility(false);
            this.§!"<§ = §-!M§.§ "!§.§=!1§(this.§^'§,this.§'!2§);
         }
         else
         {
            this.§!!v§.setVisibility(true);
            this.§0">§.setVisibility(true);
            this.§,"1§.setVisibility(true);
            this.§ !y§.setVisibility(true);
            this.§!"<§ = §-!M§.§ "!§.§=!1§(this.§^'§,this.§'!2§,this.§5z§,this.§5![§);
         }
         this.§7"7§ = §-!M§.§ "!§.§["!§(this.§ v§,this.§!"<§);
         this.§7"7§.onComplete = this.§`! §;
         this.§7"7§.play();
      }
      
      private function § !g§() : void
      {
         if(this.§7"7§)
         {
            this.§7"7§.stop();
         }
         this.§'!2§ = §-!M§.§ "!§.§+d§(this.§!!v§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§`"7§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2!Z§,this.§?"§);
         this.§5z§ = §-!M§.§ "!§.§+d§(this.§,"1§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§=F§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2!Z§,this.§?"§);
         this.§^'§ = §-!M§.§ "!§.§+d§(this.§0">§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§8,§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2!Z§,this.§?"§);
         this.§5![§ = §-!M§.§ "!§.§+d§(this.§ !y§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§5!M§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2!Z§,this.§?"§);
         this.§ v§ = §-!M§.§ "!§.§+d§(this.§;B§,{"rotation":0},{"rotation":-180},0.4,this.§?"§);
         if(!§%"$§.§"!V§.§&%§())
         {
            this.§!!v§.setVisibility(true);
            this.§0">§.setVisibility(true);
            this.§,"1§.setVisibility(false);
            this.§ !y§.setVisibility(false);
            this.§!"<§ = §-!M§.§ "!§.§=!1§(this.§^'§,this.§'!2§);
         }
         else
         {
            this.§!!v§.setVisibility(true);
            this.§0">§.setVisibility(true);
            this.§,"1§.setVisibility(true);
            this.§ !y§.setVisibility(true);
            this.§!"<§ = §-!M§.§ "!§.§=!1§(this.§5![§,this.§5z§,this.§'!2§,this.§^'§);
         }
         this.§7"7§ = §-!M§.§ "!§.§["!§(this.§!"<§,this.§ v§);
         this.§7"7§.onComplete = this.§+!t§;
         this.§7"7§.play();
      }
      
      private function §`! §() : void
      {
         this.status = this.§4G§;
      }
      
      private function §+!t§() : void
      {
         this.§!!v§.setVisibility(false);
         this.§,"1§.setVisibility(false);
         this.§ !y§.setVisibility(false);
         this.§0">§.setVisibility(false);
         this.status = this.§-8§;
      }
   }
}
