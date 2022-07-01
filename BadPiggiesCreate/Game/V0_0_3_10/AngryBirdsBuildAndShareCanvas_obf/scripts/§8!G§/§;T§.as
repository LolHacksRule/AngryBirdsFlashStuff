package §8!G§
{
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §4!t§.§=p§;
   import §<8§.§"h§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import flash.display.MovieClip;
   
   public class §;T§ extends §7!a§
   {
       
      
      private var §'K§:§=p§;
      
      private var §0!x§:§^F§;
      
      private var §[!`§:§^F§;
      
      private var §+!D§:§^F§;
      
      private var §"G§:§^F§;
      
      private var §@!;§:§^F§;
      
      private var §#!;§:§^F§;
      
      private var §=!&§:§^F§;
      
      private var §%!O§:§8!r§;
      
      private var §%"5§:§8!r§;
      
      private var § !D§:§8!r§;
      
      private var §#g§:§8!r§;
      
      private var §+"9§:§8!r§;
      
      private var §>"'§:MovieClip;
      
      private var §0=§:§%!9§;
      
      private var startX:Number;
      
      private var §>!>§:Number;
      
      private var §6l§:Number;
      
      private var §`!9§:Number;
      
      private var §7!Z§:Number;
      
      private const §'!q§:String = "Open";
      
      private const §#!z§:String = "Closed";
      
      private const §9!4§:String = "Moving";
      
      private const §4!I§:String = "Normal";
      
      private const §throw§:String = "FullScreen";
      
      private const §>"$§:Number = 0.1;
      
      private const §<Z§:Number = 0.1;
      
      private var §&!@§:Function;
      
      private var status:String = "Closed";
      
      private const §56§:int = 6;
      
      public function §;T§(param1:XML, param2:§7!a§)
      {
         this.§&!@§ = §<y§.§6[§;
         super(param1,param2,null);
         param2.§2!%§(this);
         this.§%!O§ = getItemByName("Button_Tool") as §8!r§;
         this.§%!O§.setComponentState(§"h§.§"!a§);
         this.§%"5§ = getItemByName("Button_Help") as §8!r§;
         this.§%"5§.setComponentState(§"h§.§"!a§);
         this.§ !D§ = getItemByName("Button_Sound") as §8!r§;
         this.§ !D§.setComponentState(§"h§.§"!a§);
         this.§#g§ = getItemByName("Button_Fullscreen") as §8!r§;
         this.§#g§.setComponentState(§"h§.§"!a§);
         this.§+"9§ = getItemByName("Button_Settings") as §8!r§;
         this.§0=§ = getItemByName("MovieClip_Settings_Block") as §%!9§;
         this.§>"'§ = this.§+"9§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§+"9§.mClip.x;
         this.§>!>§ = this.§%!O§.mClip.x;
         this.§6l§ = this.§%"5§.mClip.x;
         this.§`!9§ = this.§#g§.mClip.x;
         this.§7!Z§ = this.§ !D§.mClip.x;
         this.§%!O§.x = this.§+"9§.x;
         this.§%"5§.x = this.§+"9§.x;
         this.§ !D§.x = this.§+"9§.x;
         this.§#g§.x = this.§+"9§.x;
         this.§0=§.setVisibility(false);
         this.§%!O§.setVisibility(false);
         this.§%"5§.setVisibility(false);
         this.§ !D§.setVisibility(false);
         this.§#g§.setVisibility(false);
      }
      
      public function §`n§() : void
      {
         if(this.status == this.§9!4§)
         {
            return;
         }
         if(this.status == this.§'!q§)
         {
            this.§=b§();
         }
         else if(this.status == this.§#!z§)
         {
            this.§!!u§();
         }
         this.status = this.§9!4§;
      }
      
      private function §!!u§() : void
      {
         if(this.§=!&§)
         {
            this.§=!&§.stop();
         }
         this.§[!`§ = §<y§.§,l§.§]!C§(this.§%!O§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§>!>§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§>"$§,this.§&!@§);
         this.§0!x§ = §<y§.§,l§.§]!C§(this.§%"5§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§6l§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§>"$§,this.§&!@§);
         this.§+!D§ = §<y§.§,l§.§]!C§(this.§#g§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§`!9§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§>"$§,this.§&!@§);
         this.§"G§ = §<y§.§,l§.§]!C§(this.§ !D§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§7!Z§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§>"$§,this.§&!@§);
         this.§@!;§ = §<y§.§,l§.§]!C§(this.§>"'§,{"rotation":-180},{"rotation":0},0.4,this.§&!@§);
         if(!§7"$§.§'"0§.§]8§())
         {
            this.§%!O§.setVisibility(true);
            this.§#g§.setVisibility(true);
            this.§%"5§.setVisibility(false);
            this.§ !D§.setVisibility(false);
            this.§#!;§ = §<y§.§,l§.§=!D§(this.§+!D§,this.§[!`§);
         }
         else
         {
            this.§%!O§.setVisibility(true);
            this.§#g§.setVisibility(true);
            this.§%"5§.setVisibility(true);
            this.§ !D§.setVisibility(true);
            this.§#!;§ = §<y§.§,l§.§=!D§(this.§+!D§,this.§[!`§,this.§0!x§,this.§"G§);
         }
         this.§=!&§ = §<y§.§,l§.§'!^§(this.§@!;§,this.§#!;§);
         this.§=!&§.onComplete = this.§+E§;
         this.§=!&§.play();
      }
      
      private function §=b§() : void
      {
         if(this.§=!&§)
         {
            this.§=!&§.stop();
         }
         this.§[!`§ = §<y§.§,l§.§]!C§(this.§%!O§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§>!>§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§<Z§,this.§&!@§);
         this.§0!x§ = §<y§.§,l§.§]!C§(this.§%"5§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§6l§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§<Z§,this.§&!@§);
         this.§+!D§ = §<y§.§,l§.§]!C§(this.§#g§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§`!9§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§<Z§,this.§&!@§);
         this.§"G§ = §<y§.§,l§.§]!C§(this.§ !D§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§7!Z§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§<Z§,this.§&!@§);
         this.§@!;§ = §<y§.§,l§.§]!C§(this.§>"'§,{"rotation":0},{"rotation":-180},0.4,this.§&!@§);
         if(!§7"$§.§'"0§.§]8§())
         {
            this.§%!O§.setVisibility(true);
            this.§#g§.setVisibility(true);
            this.§%"5§.setVisibility(false);
            this.§ !D§.setVisibility(false);
            this.§#!;§ = §<y§.§,l§.§=!D§(this.§+!D§,this.§[!`§);
         }
         else
         {
            this.§%!O§.setVisibility(true);
            this.§#g§.setVisibility(true);
            this.§%"5§.setVisibility(true);
            this.§ !D§.setVisibility(true);
            this.§#!;§ = §<y§.§,l§.§=!D§(this.§"G§,this.§0!x§,this.§[!`§,this.§+!D§);
         }
         this.§=!&§ = §<y§.§,l§.§'!^§(this.§#!;§,this.§@!;§);
         this.§=!&§.onComplete = this.§6"7§;
         this.§=!&§.play();
      }
      
      private function §+E§() : void
      {
         this.status = this.§'!q§;
      }
      
      private function §6"7§() : void
      {
         this.§%!O§.setVisibility(false);
         this.§%"5§.setVisibility(false);
         this.§ !D§.setVisibility(false);
         this.§#g§.setVisibility(false);
         this.status = this.§#!z§;
      }
   }
}
