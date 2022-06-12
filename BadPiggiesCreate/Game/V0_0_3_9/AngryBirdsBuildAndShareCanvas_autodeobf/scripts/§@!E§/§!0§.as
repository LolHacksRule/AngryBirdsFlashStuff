package §@!E§
{
   import §&!&§.§+!A§;
   import §<!I§.§&5§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.display.MovieClip;
   
   public class §!0§ extends §>"-§
   {
       
      
      private var §;i§:§7!!§;
      
      private var §&^§:§^!#§;
      
      private var §`h§:§^!#§;
      
      private var §?!b§:§^!#§;
      
      private var §-D§:§^!#§;
      
      private var § V§:§^!#§;
      
      private var §#G§:§^!#§;
      
      private var §5^§:§^!#§;
      
      private var §9N§:§="5§;
      
      private var §-L§:§="5§;
      
      private var §<c§:§="5§;
      
      private var §8^§:§="5§;
      
      private var §%!#§:§="5§;
      
      private var §>&§:MovieClip;
      
      private var §[1§:§&5§;
      
      private var startX:Number;
      
      private var §+!R§:Number;
      
      private var §"!6§:Number;
      
      private var §;D§:Number;
      
      private var §3"$§:Number;
      
      private const §^!'§:String = "Open";
      
      private const §-!2§:String = "Closed";
      
      private const §,!#§:String = "Moving";
      
      private const §"P§:String = "Normal";
      
      private const §&!b§:String = "FullScreen";
      
      private const §@]§:Number = 0.1;
      
      private const §'4§:Number = 0.1;
      
      private var §3!o§:Function;
      
      private var status:String = "Closed";
      
      private const § "-§:int = 6;
      
      public function §!0§(param1:XML, param2:§>"-§)
      {
         this.§3!o§ = §"g§.§7!§;
         super(param1,param2,null);
         param2.§?!;§(this);
         this.§9N§ = getItemByName("Button_Tool") as §="5§;
         this.§9N§.setComponentState(§+!A§.§5"6§);
         this.§-L§ = getItemByName("Button_Help") as §="5§;
         this.§-L§.setComponentState(§+!A§.§5"6§);
         this.§<c§ = getItemByName("Button_Sound") as §="5§;
         this.§<c§.setComponentState(§+!A§.§5"6§);
         this.§8^§ = getItemByName("Button_Fullscreen") as §="5§;
         this.§8^§.setComponentState(§+!A§.§5"6§);
         this.§%!#§ = getItemByName("Button_Settings") as §="5§;
         this.§[1§ = getItemByName("MovieClip_Settings_Block") as §&5§;
         this.§>&§ = this.§%!#§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§%!#§.mClip.x;
         this.§+!R§ = this.§9N§.mClip.x;
         this.§"!6§ = this.§-L§.mClip.x;
         this.§;D§ = this.§8^§.mClip.x;
         this.§3"$§ = this.§<c§.mClip.x;
         this.§9N§.x = this.§%!#§.x;
         this.§-L§.x = this.§%!#§.x;
         this.§<c§.x = this.§%!#§.x;
         this.§8^§.x = this.§%!#§.x;
         this.§[1§.setVisibility(false);
         this.§9N§.setVisibility(false);
         this.§-L§.setVisibility(false);
         this.§<c§.setVisibility(false);
         this.§8^§.setVisibility(false);
      }
      
      public function §6l§() : void
      {
         if(this.status == this.§,!#§)
         {
            return;
         }
         if(this.status == this.§^!'§)
         {
            this.§-v§();
         }
         else if(this.status == this.§-!2§)
         {
            this.§8!h§();
         }
         this.status = this.§,!#§;
      }
      
      private function §8!h§() : void
      {
         if(this.§5^§)
         {
            this.§5^§.stop();
         }
         this.§`h§ = §"g§.§'!o§.§while§(this.§9N§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§+!R§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§@]§,this.§3!o§);
         this.§&^§ = §"g§.§'!o§.§while§(this.§-L§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§"!6§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§@]§,this.§3!o§);
         this.§?!b§ = §"g§.§'!o§.§while§(this.§8^§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§;D§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§@]§,this.§3!o§);
         this.§-D§ = §"g§.§'!o§.§while§(this.§<c§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§3"$§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§@]§,this.§3!o§);
         this.§ V§ = §"g§.§'!o§.§while§(this.§>&§,{"rotation":-180},{"rotation":0},0.4,this.§3!o§);
         if(!§1+§.§?!-§.§%9§())
         {
            this.§9N§.setVisibility(true);
            this.§8^§.setVisibility(true);
            this.§-L§.setVisibility(false);
            this.§<c§.setVisibility(false);
            this.§#G§ = §"g§.§'!o§.§%l§(this.§?!b§,this.§`h§);
         }
         else
         {
            this.§9N§.setVisibility(true);
            this.§8^§.setVisibility(true);
            this.§-L§.setVisibility(true);
            this.§<c§.setVisibility(true);
            this.§#G§ = §"g§.§'!o§.§%l§(this.§?!b§,this.§`h§,this.§&^§,this.§-D§);
         }
         this.§5^§ = §"g§.§'!o§.§3!p§(this.§ V§,this.§#G§);
         this.§5^§.onComplete = this.§=!c§;
         this.§5^§.play();
      }
      
      private function §-v§() : void
      {
         if(this.§5^§)
         {
            this.§5^§.stop();
         }
         this.§`h§ = §"g§.§'!o§.§while§(this.§9N§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§+!R§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§'4§,this.§3!o§);
         this.§&^§ = §"g§.§'!o§.§while§(this.§-L§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§"!6§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§'4§,this.§3!o§);
         this.§?!b§ = §"g§.§'!o§.§while§(this.§8^§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§;D§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§'4§,this.§3!o§);
         this.§-D§ = §"g§.§'!o§.§while§(this.§<c§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§3"$§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§'4§,this.§3!o§);
         this.§ V§ = §"g§.§'!o§.§while§(this.§>&§,{"rotation":0},{"rotation":-180},0.4,this.§3!o§);
         if(!§1+§.§?!-§.§%9§())
         {
            this.§9N§.setVisibility(true);
            this.§8^§.setVisibility(true);
            this.§-L§.setVisibility(false);
            this.§<c§.setVisibility(false);
            this.§#G§ = §"g§.§'!o§.§%l§(this.§?!b§,this.§`h§);
         }
         else
         {
            this.§9N§.setVisibility(true);
            this.§8^§.setVisibility(true);
            this.§-L§.setVisibility(true);
            this.§<c§.setVisibility(true);
            this.§#G§ = §"g§.§'!o§.§%l§(this.§-D§,this.§&^§,this.§`h§,this.§?!b§);
         }
         this.§5^§ = §"g§.§'!o§.§3!p§(this.§#G§,this.§ V§);
         this.§5^§.onComplete = this.§;F§;
         this.§5^§.play();
      }
      
      private function §=!c§() : void
      {
         this.status = this.§^!'§;
      }
      
      private function §;F§() : void
      {
         this.§9N§.setVisibility(false);
         this.§-L§.setVisibility(false);
         this.§<c§.setVisibility(false);
         this.§8^§.setVisibility(false);
         this.status = this.§-!2§;
      }
   }
}
