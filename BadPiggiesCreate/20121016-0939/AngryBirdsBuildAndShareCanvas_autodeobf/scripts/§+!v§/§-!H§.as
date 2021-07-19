package §+!v§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   
   public class §-!H§ extends §`!T§
   {
       
      
      private var §?E§:§'s§;
      
      private var §,!y§:§3^§;
      
      private var §0!Z§:§3^§;
      
      private var §^!=§:§3^§;
      
      private var §8F§:§3^§;
      
      private var § !A§:§3^§;
      
      private var §]B§:§3^§;
      
      private var §3!D§:§3^§;
      
      private var §,"7§:§="#§;
      
      private var §;h§:§="#§;
      
      private var §3"7§:§="#§;
      
      private var §'5§:§="#§;
      
      private var §=!x§:§="#§;
      
      private var §-u§:MovieClip;
      
      private var §#n§:§%+§;
      
      private var startX:Number;
      
      private var § !L§:Number;
      
      private var §"![§:Number;
      
      private var §`!m§:Number;
      
      private var §+Q§:Number;
      
      private const §[!V§:String = "Open";
      
      private const §6T§:String = "Closed";
      
      private const §<!X§:String = "Moving";
      
      private const §+!J§:String = "Normal";
      
      private const §!r§:String = "FullScreen";
      
      private const §^i§:Number = 0.1;
      
      private const §^!8§:Number = 0.1;
      
      private var §@! §:Function;
      
      private var status:String = "Closed";
      
      private const §+c§:int = 6;
      
      public function §-!H§(param1:XML, param2:§`!T§)
      {
         this.§@! § = §7!E§.§+!E§;
         super(param1,param2,null);
         param2.§;!R§(this);
         this.§,"7§ = getItemByName("Button_Tool") as §="#§;
         this.§,"7§.setComponentState(§9!!§.§,!0§);
         this.§;h§ = getItemByName("Button_Help") as §="#§;
         this.§;h§.setComponentState(§9!!§.§,!0§);
         this.§3"7§ = getItemByName("Button_Sound") as §="#§;
         this.§3"7§.setComponentState(§9!!§.§,!0§);
         this.§'5§ = getItemByName("Button_Fullscreen") as §="#§;
         this.§'5§.setComponentState(§9!!§.§,!0§);
         this.§=!x§ = getItemByName("Button_Settings") as §="#§;
         this.§#n§ = getItemByName("MovieClip_Settings_Block") as §%+§;
         this.§-u§ = this.§=!x§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§=!x§.mClip.x;
         this.§ !L§ = this.§,"7§.mClip.x;
         this.§"![§ = this.§;h§.mClip.x;
         this.§`!m§ = this.§'5§.mClip.x;
         this.§+Q§ = this.§3"7§.mClip.x;
         this.§,"7§.x = this.§=!x§.x;
         this.§;h§.x = this.§=!x§.x;
         this.§3"7§.x = this.§=!x§.x;
         this.§'5§.x = this.§=!x§.x;
         this.§#n§.setVisibility(false);
         this.§,"7§.setVisibility(false);
         this.§;h§.setVisibility(false);
         this.§3"7§.setVisibility(false);
         this.§'5§.setVisibility(false);
      }
      
      public function §#!s§() : void
      {
         if(this.status == this.§<!X§)
         {
            return;
         }
         if(this.status == this.§[!V§)
         {
            this.§[o§();
         }
         else if(this.status == this.§6T§)
         {
            this.§"!5§();
         }
         this.status = this.§<!X§;
      }
      
      private function §"!5§() : void
      {
         if(this.§3!D§)
         {
            this.§3!D§.stop();
         }
         this.§0!Z§ = §7!E§.§2=§.§<!C§(this.§,"7§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§ !L§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§^i§,this.§@! §);
         this.§,!y§ = §7!E§.§2=§.§<!C§(this.§;h§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§"![§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§^i§,this.§@! §);
         this.§^!=§ = §7!E§.§2=§.§<!C§(this.§'5§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§`!m§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§^i§,this.§@! §);
         this.§8F§ = §7!E§.§2=§.§<!C§(this.§3"7§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§+Q§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§^i§,this.§@! §);
         this.§ !A§ = §7!E§.§2=§.§<!C§(this.§-u§,{"rotation":-180},{"rotation":0},0.4,this.§@! §);
         if(!§>"§.§%d§.§^!'§())
         {
            this.§,"7§.setVisibility(true);
            this.§'5§.setVisibility(true);
            this.§;h§.setVisibility(false);
            this.§3"7§.setVisibility(false);
            this.§]B§ = §7!E§.§2=§.§2!u§(this.§^!=§,this.§0!Z§);
         }
         else
         {
            this.§,"7§.setVisibility(true);
            this.§'5§.setVisibility(true);
            this.§;h§.setVisibility(true);
            this.§3"7§.setVisibility(true);
            this.§]B§ = §7!E§.§2=§.§2!u§(this.§^!=§,this.§0!Z§,this.§,!y§,this.§8F§);
         }
         this.§3!D§ = §7!E§.§2=§.§7#§(this.§ !A§,this.§]B§);
         this.§3!D§.onComplete = this.§6A§;
         this.§3!D§.play();
      }
      
      private function §[o§() : void
      {
         if(this.§3!D§)
         {
            this.§3!D§.stop();
         }
         this.§0!Z§ = §7!E§.§2=§.§<!C§(this.§,"7§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§ !L§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§^!8§,this.§@! §);
         this.§,!y§ = §7!E§.§2=§.§<!C§(this.§;h§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§"![§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§^!8§,this.§@! §);
         this.§^!=§ = §7!E§.§2=§.§<!C§(this.§'5§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§`!m§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§^!8§,this.§@! §);
         this.§8F§ = §7!E§.§2=§.§<!C§(this.§3"7§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§+Q§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§^!8§,this.§@! §);
         this.§ !A§ = §7!E§.§2=§.§<!C§(this.§-u§,{"rotation":0},{"rotation":-180},0.4,this.§@! §);
         if(!§>"§.§%d§.§^!'§())
         {
            this.§,"7§.setVisibility(true);
            this.§'5§.setVisibility(true);
            this.§;h§.setVisibility(false);
            this.§3"7§.setVisibility(false);
            this.§]B§ = §7!E§.§2=§.§2!u§(this.§^!=§,this.§0!Z§);
         }
         else
         {
            this.§,"7§.setVisibility(true);
            this.§'5§.setVisibility(true);
            this.§;h§.setVisibility(true);
            this.§3"7§.setVisibility(true);
            this.§]B§ = §7!E§.§2=§.§2!u§(this.§8F§,this.§,!y§,this.§0!Z§,this.§^!=§);
         }
         this.§3!D§ = §7!E§.§2=§.§7#§(this.§]B§,this.§ !A§);
         this.§3!D§.onComplete = this.§7!B§;
         this.§3!D§.play();
      }
      
      private function §6A§() : void
      {
         this.status = this.§[!V§;
      }
      
      private function §7!B§() : void
      {
         this.§,"7§.setVisibility(false);
         this.§;h§.setVisibility(false);
         this.§3"7§.setVisibility(false);
         this.§'5§.setVisibility(false);
         this.status = this.§6T§;
      }
   }
}
