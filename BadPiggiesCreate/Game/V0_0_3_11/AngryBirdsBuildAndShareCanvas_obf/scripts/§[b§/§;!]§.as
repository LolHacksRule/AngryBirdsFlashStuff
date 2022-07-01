package §[b§
{
   import §+!d§.§"r§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.MovieClip;
   
   public class §;!]§ extends §;!u§
   {
       
      
      private var §%""§:§`5§;
      
      private var §8"+§:§8!K§;
      
      private var §0!d§:§8!K§;
      
      private var §6'§:§8!K§;
      
      private var §]r§:§8!K§;
      
      private var §<!c§:§8!K§;
      
      private var §<E§:§8!K§;
      
      private var §<Y§:§8!K§;
      
      private var §=!8§:§2v§;
      
      private var §6!2§:§2v§;
      
      private var §5x§:§2v§;
      
      private var §2]§:§2v§;
      
      private var §<0§:§2v§;
      
      private var §+A§:MovieClip;
      
      private var § !m§:§%!`§;
      
      private var startX:Number;
      
      private var §#K§:Number;
      
      private var §^=§:Number;
      
      private var §!!n§:Number;
      
      private var §>!q§:Number;
      
      private const §!!,§:String = "Open";
      
      private const §+!=§:String = "Closed";
      
      private const §^V§:String = "Moving";
      
      private const §2L§:String = "Normal";
      
      private const §]"#§:String = "FullScreen";
      
      private const §+O§:Number = 0.1;
      
      private const §#,§:Number = 0.1;
      
      private var §1!A§:Function;
      
      private var status:String = "Closed";
      
      private const §3E§:int = 6;
      
      public function §;!]§(param1:XML, param2:§;!u§)
      {
         this.§1!A§ = §%!Z§.§1R§;
         super(param1,param2,null);
         param2.§&!W§(this);
         this.§=!8§ = getItemByName("Button_Tool") as §2v§;
         this.§=!8§.setComponentState(§"r§.§5!D§);
         this.§6!2§ = getItemByName("Button_Help") as §2v§;
         this.§6!2§.setComponentState(§"r§.§5!D§);
         this.§5x§ = getItemByName("Button_Sound") as §2v§;
         this.§5x§.setComponentState(§"r§.§5!D§);
         this.§2]§ = getItemByName("Button_Fullscreen") as §2v§;
         this.§2]§.setComponentState(§"r§.§5!D§);
         this.§<0§ = getItemByName("Button_Settings") as §2v§;
         this.§ !m§ = getItemByName("MovieClip_Settings_Block") as §%!`§;
         this.§+A§ = this.§<0§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
         this.startX = this.§<0§.mClip.x;
         this.§#K§ = this.§=!8§.mClip.x;
         this.§^=§ = this.§6!2§.mClip.x;
         this.§!!n§ = this.§2]§.mClip.x;
         this.§>!q§ = this.§5x§.mClip.x;
         this.§=!8§.x = this.§<0§.x;
         this.§6!2§.x = this.§<0§.x;
         this.§5x§.x = this.§<0§.x;
         this.§2]§.x = this.§<0§.x;
         this.§ !m§.setVisibility(false);
         this.§=!8§.setVisibility(false);
         this.§6!2§.setVisibility(false);
         this.§5x§.setVisibility(false);
         this.§2]§.setVisibility(false);
      }
      
      public function §56§() : void
      {
         if(this.status == this.§^V§)
         {
            return;
         }
         if(this.status == this.§!!,§)
         {
            this.§6R§();
         }
         else if(this.status == this.§+!=§)
         {
            this.§1c§();
         }
         this.status = this.§^V§;
      }
      
      private function §1c§() : void
      {
         if(this.§<Y§)
         {
            this.§<Y§.stop();
         }
         this.§0!d§ = §%!Z§.§if §.§"<§(this.§=!8§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§#K§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§+O§,this.§1!A§);
         this.§8"+§ = §%!Z§.§if §.§"<§(this.§6!2§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§^=§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§+O§,this.§1!A§);
         this.§6'§ = §%!Z§.§if §.§"<§(this.§2]§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§!!n§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§+O§,this.§1!A§);
         this.§]r§ = §%!Z§.§if §.§"<§(this.§5x§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.§>!q§
         },{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.startX
         },this.§+O§,this.§1!A§);
         this.§<!c§ = §%!Z§.§if §.§"<§(this.§+A§,{"rotation":-180},{"rotation":0},0.4,this.§1!A§);
         if(!§'N§.§@!N§.§^R§())
         {
            this.§=!8§.setVisibility(true);
            this.§2]§.setVisibility(true);
            this.§6!2§.setVisibility(false);
            this.§5x§.setVisibility(false);
            this.§<E§ = §%!Z§.§if §.§9y§(this.§6'§,this.§0!d§);
         }
         else
         {
            this.§=!8§.setVisibility(true);
            this.§2]§.setVisibility(true);
            this.§6!2§.setVisibility(true);
            this.§5x§.setVisibility(true);
            this.§<E§ = §%!Z§.§if §.§9y§(this.§6'§,this.§0!d§,this.§8"+§,this.§]r§);
         }
         this.§<Y§ = §%!Z§.§if §.§"U§(this.§<!c§,this.§<E§);
         this.§<Y§.onComplete = this.§!"$§;
         this.§<Y§.play();
      }
      
      private function §6R§() : void
      {
         if(this.§<Y§)
         {
            this.§<Y§.stop();
         }
         this.§0!d§ = §%!Z§.§if §.§"<§(this.§=!8§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§#K§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§#,§,this.§1!A§);
         this.§8"+§ = §%!Z§.§if §.§"<§(this.§6!2§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§^=§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§#,§,this.§1!A§);
         this.§6'§ = §%!Z§.§if §.§"<§(this.§2]§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§!!n§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§#,§,this.§1!A§);
         this.§]r§ = §%!Z§.§if §.§"<§(this.§5x§.mClip,{
            "scaleX":0,
            "scaleY":0,
            "rotation":360,
            "x":this.§>!q§
         },{
            "scaleX":1,
            "scaleY":1,
            "rotation":0,
            "x":this.startX
         },this.§#,§,this.§1!A§);
         this.§<!c§ = §%!Z§.§if §.§"<§(this.§+A§,{"rotation":0},{"rotation":-180},0.4,this.§1!A§);
         if(!§'N§.§@!N§.§^R§())
         {
            this.§=!8§.setVisibility(true);
            this.§2]§.setVisibility(true);
            this.§6!2§.setVisibility(false);
            this.§5x§.setVisibility(false);
            this.§<E§ = §%!Z§.§if §.§9y§(this.§6'§,this.§0!d§);
         }
         else
         {
            this.§=!8§.setVisibility(true);
            this.§2]§.setVisibility(true);
            this.§6!2§.setVisibility(true);
            this.§5x§.setVisibility(true);
            this.§<E§ = §%!Z§.§if §.§9y§(this.§]r§,this.§8"+§,this.§0!d§,this.§6'§);
         }
         this.§<Y§ = §%!Z§.§if §.§"U§(this.§<E§,this.§<!c§);
         this.§<Y§.onComplete = this.§!W§;
         this.§<Y§.play();
      }
      
      private function §!"$§() : void
      {
         this.status = this.§!!,§;
      }
      
      private function §!W§() : void
      {
         this.§=!8§.setVisibility(false);
         this.§6!2§.setVisibility(false);
         this.§5x§.setVisibility(false);
         this.§2]§.setVisibility(false);
         this.status = this.§+!=§;
      }
   }
}
