package §?!D§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.MovieClip;
   
   public class §0"4§ extends §1H§
   {
       
      
      private var §3?§:§=!]§;
      
      private var §9[§:§-!m§;
      
      private var §8!v§:§-!m§;
      
      private var §3J§:§-!m§;
      
      private var §>!7§:§-!m§;
      
      private var §@!L§:§-!m§;
      
      private var §!W§:§-!m§;
      
      private var §'"7§:§-!m§;
      
      private var §"!C§:§8K§;
      
      private var §4!9§:§8K§;
      
      private var §3!a§:§8K§;
      
      private var §=v§:§8K§;
      
      private var §79§:§8K§;
      
      private var §'r§:MovieClip;
      
      private var §!T§:§%!7§;
      
      private var startX:Number;
      
      private var §]!K§:Number;
      
      private var §8!N§:Number;
      
      private var §>Q§:Number;
      
      private var §]I§:Number;
      
      private const §5X§:String = "Open";
      
      private const §=!9§:String = "Closed";
      
      private const §;`§:String = "Moving";
      
      private const §85§:String = "Normal";
      
      private const §"!T§:String = "FullScreen";
      
      private const §-!N§:Number = 0.1;
      
      private const §]!$§:Number = 0.1;
      
      private var §3x§:Function;
      
      private var status:String = "Closed";
      
      private const §4C§:int = 6;
      
      public function §0"4§(param1:XML, param2:§1H§)
      {
         this.§3x§ = §"L§.§6_§;
         super(param1,param2,null);
         param2.§[!I§(this);
         this.§"!C§ = getItemByName("Button_Tool") as §8K§;
         this.§"!C§.setComponentState(§""3§.§!`§);
         this.§4!9§ = getItemByName("Button_Help") as §8K§;
         this.§4!9§.setComponentState(§""3§.§!`§);
         this.§3!a§ = getItemByName("Button_Sound") as §8K§;
         this.§3!a§.setComponentState(§""3§.§!`§);
         this.§=v§ = getItemByName("Button_Fullscreen") as §8K§;
         this.§=v§.setComponentState(§""3§.§!`§);
         this.§79§ = getItemByName("Button_Settings") as §8K§;
         this.§!T§ = getItemByName("MovieClip_Settings_Block") as §%!7§;
         this.§'r§ = this.§79§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§79§.mClip.x;
         this.§]!K§ = this.§"!C§.mClip.x;
         this.§8!N§ = this.§4!9§.mClip.x;
         this.§>Q§ = this.§=v§.mClip.x;
         this.§]I§ = this.§3!a§.mClip.x;
         this.§"!C§.x = this.§79§.x;
         this.§4!9§.x = this.§79§.x;
         this.§3!a§.x = this.§79§.x;
         this.§=v§.x = this.§79§.x;
         this.§!T§.setVisibility(false);
         this.§"!C§.setVisibility(false);
         this.§4!9§.setVisibility(false);
         this.§3!a§.setVisibility(false);
         this.§=v§.setVisibility(false);
      }
      
      public function §%7§() : void
      {
         if(this.status == this.§;`§)
         {
            return;
         }
         if(this.status == this.§5X§)
         {
            this.§!D§();
         }
         else if(this.status == this.§=!9§)
         {
            this.§8!P§();
         }
         this.status = this.§;`§;
      }
      
      private function §8!P§() : void
      {
         if(this.§'"7§)
         {
            this.§'"7§.stop();
         }
         this.§8!v§ = §"L§.§7!?§.§4!P§(this.§"!C§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§]!K§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-!N§,this.§3x§);
         this.§9[§ = §"L§.§7!?§.§4!P§(this.§4!9§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§8!N§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-!N§,this.§3x§);
         this.§3J§ = §"L§.§7!?§.§4!P§(this.§=v§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§>Q§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-!N§,this.§3x§);
         this.§>!7§ = §"L§.§7!?§.§4!P§(this.§3!a§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§]I§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-!N§,this.§3x§);
         this.§@!L§ = §"L§.§7!?§.§4!P§(this.§'r§,{"rotation":-180},{"rotation":0},0.4,this.§3x§);
         if(!§@=§.§2p§.§'"2§())
         {
            this.§"!C§.setVisibility(true);
            this.§=v§.setVisibility(true);
            this.§4!9§.setVisibility(false);
            this.§3!a§.setVisibility(false);
            this.§!W§ = §"L§.§7!?§.§@!H§(this.§3J§,this.§8!v§);
         }
         else
         {
            this.§"!C§.setVisibility(true);
            this.§=v§.setVisibility(true);
            this.§4!9§.setVisibility(true);
            this.§3!a§.setVisibility(true);
            this.§!W§ = §"L§.§7!?§.§@!H§(this.§3J§,this.§8!v§,this.§9[§,this.§>!7§);
         }
         this.§'"7§ = §"L§.§7!?§.§#!x§(this.§@!L§,this.§!W§);
         this.§'"7§.onComplete = this.§'!l§;
         this.§'"7§.play();
      }
      
      private function §!D§() : void
      {
         if(this.§'"7§)
         {
            this.§'"7§.stop();
         }
         this.§8!v§ = §"L§.§7!?§.§4!P§(this.§"!C§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§]!K§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§]!$§,this.§3x§);
         this.§9[§ = §"L§.§7!?§.§4!P§(this.§4!9§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§8!N§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§]!$§,this.§3x§);
         this.§3J§ = §"L§.§7!?§.§4!P§(this.§=v§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§>Q§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§]!$§,this.§3x§);
         this.§>!7§ = §"L§.§7!?§.§4!P§(this.§3!a§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§]I§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§]!$§,this.§3x§);
         this.§@!L§ = §"L§.§7!?§.§4!P§(this.§'r§,{"rotation":0},{"rotation":-180},0.4,this.§3x§);
         if(!§@=§.§2p§.§'"2§())
         {
            this.§"!C§.setVisibility(true);
            this.§=v§.setVisibility(true);
            this.§4!9§.setVisibility(false);
            this.§3!a§.setVisibility(false);
            this.§!W§ = §"L§.§7!?§.§@!H§(this.§3J§,this.§8!v§);
         }
         else
         {
            this.§"!C§.setVisibility(true);
            this.§=v§.setVisibility(true);
            this.§4!9§.setVisibility(true);
            this.§3!a§.setVisibility(true);
            this.§!W§ = §"L§.§7!?§.§@!H§(this.§>!7§,this.§9[§,this.§8!v§,this.§3J§);
         }
         this.§'"7§ = §"L§.§7!?§.§#!x§(this.§!W§,this.§@!L§);
         this.§'"7§.onComplete = this.§^R§;
         this.§'"7§.play();
      }
      
      private function §'!l§() : void
      {
         this.status = this.§5X§;
      }
      
      private function §^R§() : void
      {
         this.§"!C§.setVisibility(false);
         this.§4!9§.setVisibility(false);
         this.§3!a§.setVisibility(false);
         this.§=v§.setVisibility(false);
         this.status = this.§=!9§;
      }
   }
}
