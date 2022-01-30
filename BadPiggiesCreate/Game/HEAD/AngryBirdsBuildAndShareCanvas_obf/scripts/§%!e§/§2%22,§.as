package §%!e§
{
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   
   public class §2",§ extends §6W§
   {
       
      
      private var §`!v§:§>!V§;
      
      private var §#!L§:§=!r§;
      
      private var §,D§:§=!r§;
      
      private var §8!V§:§=!r§;
      
      private var §'N§:§=!r§;
      
      private var §5!v§:§=!r§;
      
      private var §?%§:§=!r§;
      
      private var §?!J§:§=!r§;
      
      private var §<"4§:§9"8§;
      
      private var §continue§:§9"8§;
      
      private var §84§:§9"8§;
      
      private var §<$§:§9"8§;
      
      private var §%[§:§9"8§;
      
      private var §5!&§:MovieClip;
      
      private var §?!"§:§@u§;
      
      private var startX:Number;
      
      private var §3x§:Number;
      
      private var §0m§:Number;
      
      private var §-F§:Number;
      
      private var §"k§:Number;
      
      private const §6%§:String = "Open";
      
      private const §-!F§:String = "Closed";
      
      private const §%!I§:String = "Moving";
      
      private const §[!F§:String = "Normal";
      
      private const §8!F§:String = "FullScreen";
      
      private const §=4§:Number = 0.1;
      
      private const §2"8§:Number = 0.1;
      
      private var §71§:Function;
      
      private var status:String = "Closed";
      
      private const §@",§:int = 6;
      
      public function §2",§(param1:XML, param2:§6W§)
      {
         this.§71§ = §7I§.§,S§;
         super(param1,param2,null);
         param2.§#i§(this);
         this.§<"4§ = getItemByName("Button_Tool") as §9"8§;
         this.§<"4§.setComponentState(§>!D§.§;!M§);
         this.§continue§ = getItemByName("Button_Help") as §9"8§;
         this.§continue§.setComponentState(§>!D§.§;!M§);
         this.§84§ = getItemByName("Button_Sound") as §9"8§;
         this.§84§.setComponentState(§>!D§.§;!M§);
         this.§<$§ = getItemByName("Button_Fullscreen") as §9"8§;
         this.§<$§.setComponentState(§>!D§.§;!M§);
         this.§%[§ = getItemByName("Button_Settings") as §9"8§;
         this.§?!"§ = getItemByName("MovieClip_Settings_Block") as §@u§;
         this.§5!&§ = this.§%[§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§%[§.mClip.x;
         this.§3x§ = this.§<"4§.mClip.x;
         this.§0m§ = this.§continue§.mClip.x;
         this.§-F§ = this.§<$§.mClip.x;
         this.§"k§ = this.§84§.mClip.x;
         this.§<"4§.x = this.§%[§.x;
         this.§continue§.x = this.§%[§.x;
         this.§84§.x = this.§%[§.x;
         this.§<$§.x = this.§%[§.x;
         this.§?!"§.setVisibility(false);
         this.§<"4§.setVisibility(false);
         this.§continue§.setVisibility(false);
         this.§84§.setVisibility(false);
         this.§<$§.setVisibility(false);
      }
      
      public function §0"3§() : void
      {
         if(this.status == this.§%!I§)
         {
            return;
         }
         if(this.status == this.§6%§)
         {
            this.§4!^§();
         }
         else if(this.status == this.§-!F§)
         {
            this.§5Z§();
         }
         this.status = this.§%!I§;
      }
      
      private function §5Z§() : void
      {
         if(this.§?!J§)
         {
            this.§?!J§.stop();
         }
         this.§,D§ = §7I§.§[E§.§ ";§(this.§<"4§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§3x§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§=4§,this.§71§);
         this.§#!L§ = §7I§.§[E§.§ ";§(this.§continue§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§0m§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§=4§,this.§71§);
         this.§8!V§ = §7I§.§[E§.§ ";§(this.§<$§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§-F§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§=4§,this.§71§);
         this.§'N§ = §7I§.§[E§.§ ";§(this.§84§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§"k§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§=4§,this.§71§);
         this.§5!v§ = §7I§.§[E§.§ ";§(this.§5!&§,{"rotation":-180},{"rotation":0},0.4,this.§71§);
         if(!§[!^§.§@"7§.§&!6§())
         {
            this.§<"4§.setVisibility(true);
            this.§<$§.setVisibility(true);
            this.§continue§.setVisibility(false);
            this.§84§.setVisibility(false);
            this.§?%§ = §7I§.§[E§.§5!@§(this.§8!V§,this.§,D§);
         }
         else
         {
            this.§<"4§.setVisibility(true);
            this.§<$§.setVisibility(true);
            this.§continue§.setVisibility(true);
            this.§84§.setVisibility(true);
            this.§?%§ = §7I§.§[E§.§5!@§(this.§8!V§,this.§,D§,this.§#!L§,this.§'N§);
         }
         this.§?!J§ = §7I§.§[E§.§]g§(this.§5!v§,this.§?%§);
         this.§?!J§.onComplete = this.§!!r§;
         this.§?!J§.play();
      }
      
      private function §4!^§() : void
      {
         if(this.§?!J§)
         {
            this.§?!J§.stop();
         }
         this.§,D§ = §7I§.§[E§.§ ";§(this.§<"4§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§3x§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2"8§,this.§71§);
         this.§#!L§ = §7I§.§[E§.§ ";§(this.§continue§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§0m§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2"8§,this.§71§);
         this.§8!V§ = §7I§.§[E§.§ ";§(this.§<$§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§-F§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2"8§,this.§71§);
         this.§'N§ = §7I§.§[E§.§ ";§(this.§84§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§"k§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§2"8§,this.§71§);
         this.§5!v§ = §7I§.§[E§.§ ";§(this.§5!&§,{"rotation":0},{"rotation":-180},0.4,this.§71§);
         if(!§[!^§.§@"7§.§&!6§())
         {
            this.§<"4§.setVisibility(true);
            this.§<$§.setVisibility(true);
            this.§continue§.setVisibility(false);
            this.§84§.setVisibility(false);
            this.§?%§ = §7I§.§[E§.§5!@§(this.§8!V§,this.§,D§);
         }
         else
         {
            this.§<"4§.setVisibility(true);
            this.§<$§.setVisibility(true);
            this.§continue§.setVisibility(true);
            this.§84§.setVisibility(true);
            this.§?%§ = §7I§.§[E§.§5!@§(this.§'N§,this.§#!L§,this.§,D§,this.§8!V§);
         }
         this.§?!J§ = §7I§.§[E§.§]g§(this.§?%§,this.§5!v§);
         this.§?!J§.onComplete = this.§^r§;
         this.§?!J§.play();
      }
      
      private function §!!r§() : void
      {
         this.status = this.§6%§;
      }
      
      private function §^r§() : void
      {
         this.§<"4§.setVisibility(false);
         this.§continue§.setVisibility(false);
         this.§84§.setVisibility(false);
         this.§<$§.setVisibility(false);
         this.status = this.§-!F§;
      }
   }
}
