package §>,§
{
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §9!7§.§6"0§;
   import §?!V§.§ T§;
   import flash.display.MovieClip;
   
   public class §?A§ extends § use§
   {
       
      
      private var §1!j§:§ T§;
      
      private var §!!X§:§;!5§;
      
      private var §0U§:§;!5§;
      
      private var §%K§:§;!5§;
      
      private var §<f§:§;!5§;
      
      private var §>!]§:§;!5§;
      
      private var §85§:§;!5§;
      
      private var §#" §:§3!6§;
      
      private var §!!4§:§3!6§;
      
      private var §3W§:§3!6§;
      
      private var §%$§:§3!6§;
      
      private var §"!!§:MovieClip;
      
      private var §;%§:§<!5§;
      
      private var startX:Number;
      
      private var §+!Z§:Number;
      
      private var §>"3§:Number;
      
      private var §5,§:Number;
      
      private const §<!2§:String = "Open";
      
      private const §;<§:String = "Closed";
      
      private const §@_§:String = "Moving";
      
      private const §-z§:Number = 0.1;
      
      private const §+^§:Number = 0.1;
      
      private var §"!M§:String = "linear";
      
      private var status:String = "Closed";
      
      private const §1T§:int = 6;
      
      public function §?A§(param1:XML, param2:§ use§)
      {
         super(param1,param2,null);
         param2.§">§(this);
         this.§#" § = getItemByName("Button_Help") as §3!6§;
         this.§#" §.setComponentState(§6"0§.§ B§);
         this.§!!4§ = getItemByName("Button_Sound") as §3!6§;
         this.§!!4§.setComponentState(§6"0§.§ B§);
         this.§3W§ = getItemByName("Button_Fullscreen") as §3!6§;
         this.§3W§.setComponentState(§6"0§.§ B§);
         this.§%$§ = getItemByName("Button_Settings") as §3!6§;
         this.§;%§ = getItemByName("MovieClip_Settings_Block") as §<!5§;
         this.§"!!§ = this.§%$§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§%$§.mClip.x;
         this.§+!Z§ = this.§#" §.mClip.x;
         this.§>"3§ = this.§3W§.mClip.x;
         this.§5,§ = this.§!!4§.mClip.x;
         this.§#" §.x = this.§%$§.x;
         this.§!!4§.x = this.§%$§.x;
         this.§3W§.x = this.§%$§.x;
         this.§;%§.setVisibility(false);
         this.§#" §.setVisibility(false);
         this.§!!4§.setVisibility(false);
         this.§3W§.setVisibility(false);
      }
      
      public function §1!t§() : void
      {
         if(this.status == this.§@_§)
         {
            return;
         }
         if(this.status == this.§<!2§)
         {
            this.§+!&§();
         }
         else if(this.status == this.§;<§)
         {
            this.§`5§();
         }
         this.status = this.§@_§;
      }
      
      private function §`5§() : void
      {
         if(this.§85§)
         {
            this.§85§.stop();
         }
         this.§!!X§ = §"!5§.§9j§.§4!p§(this.§#" §.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§+!Z§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-z§,this.§"!M§);
         this.§0U§ = §"!5§.§9j§.§4!p§(this.§3W§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§>"3§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-z§,this.§"!M§);
         this.§%K§ = §"!5§.§9j§.§4!p§(this.§!!4§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§5,§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§-z§,this.§"!M§);
         this.§<f§ = §"!5§.§9j§.§4!p§(this.§"!!§,{"rotation":-180},{"rotation":0},0.4,this.§"!M§);
         this.§#" §.setVisibility(true);
         this.§!!4§.setVisibility(true);
         this.§3W§.setVisibility(true);
         this.§>!]§ = §"!5§.§9j§.§["!§(this.§!!X§,this.§0U§,this.§%K§);
         this.§85§ = §"!5§.§9j§.§&>§(this.§<f§,this.§>!]§);
         this.§85§.onComplete = this.§]!M§;
         this.§85§.play();
      }
      
      private function §+!&§() : void
      {
         if(this.§85§)
         {
            this.§85§.stop();
         }
         this.§!!X§ = §"!5§.§9j§.§4!p§(this.§#" §.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§+!Z§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§+^§,this.§"!M§);
         this.§0U§ = §"!5§.§9j§.§4!p§(this.§3W§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§>"3§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§+^§,this.§"!M§);
         this.§%K§ = §"!5§.§9j§.§4!p§(this.§!!4§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§5,§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§+^§,this.§"!M§);
         this.§<f§ = §"!5§.§9j§.§4!p§(this.§"!!§,{"rotation":0},{"rotation":-180},0.4,this.§"!M§);
         this.§>!]§ = §"!5§.§9j§.§["!§(this.§%K§,this.§0U§,this.§!!X§);
         this.§85§ = §"!5§.§9j§.§&>§(this.§>!]§,this.§<f§);
         this.§85§.onComplete = this.§;" §;
         this.§85§.play();
      }
      
      private function §]!M§() : void
      {
         this.status = this.§<!2§;
      }
      
      private function §;" §() : void
      {
         this.§#" §.setVisibility(false);
         this.§!!4§.setVisibility(false);
         this.§3W§.setVisibility(false);
         this.status = this.§;<§;
      }
   }
}
