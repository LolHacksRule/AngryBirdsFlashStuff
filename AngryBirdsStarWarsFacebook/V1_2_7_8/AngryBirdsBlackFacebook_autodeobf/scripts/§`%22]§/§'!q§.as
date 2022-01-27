package §`"]§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §#!k§.§4!4§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §="8§.§,#!§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §'!q§
   {
      
      private static const §&!N§:Number = 20;
      
      public static const § o§:int = 6000;
      
      private static var § r§:§2"8§;
       
      
      protected var §=5§:§,m§;
      
      protected var §9!n§:§"!'§;
      
      protected var §9!a§:TextField;
      
      protected var §3f§:MovieClip;
      
      protected var §]"p§:MovieClip;
      
      private var §>!e§:§2"8§;
      
      protected var §&"R§:MovieClip;
      
      protected var §?r§:§,#!§;
      
      protected var §@"6§:§4!Q§;
      
      protected var §8!i§:Number = -1;
      
      protected var §%"e§:Number = 0.0;
      
      protected var §,!z§:Number = 0.0;
      
      protected var §+=§:§4!Q§;
      
      protected var §'!k§:Boolean;
      
      protected var §+`§:Number;
      
      protected var §const§:String;
      
      public function §'!q§(param1:§,m§, param2:§,#!§)
      {
         super();
         this.§?r§ = param2;
         this.init(param1);
      }
      
      public static function §>k§() : void
      {
         § r§.setVisibility(false);
      }
      
      public function get §?!j§() : §"!'§
      {
         return this.§9!n§;
      }
      
      public function get isVisible() : Boolean
      {
         return this.§'!k§;
      }
      
      public function get §7"x§() : Number
      {
         return this.§+`§;
      }
      
      public function set §7"x§(param1:Number) : void
      {
         this.§+`§ = param1;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.§9!n§.enabled = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§9!n§.enabled;
      }
      
      protected function init(param1:§,m§) : void
      {
         this.§=5§ = param1;
         this.§3f§ = this.§=5§.getItemByName("Container_ExtraBirdContent").mClip;
         this.§]"p§ = this.§=5§.getItemByName("Container_AnimateIn").mClip;
         this.§&"R§ = this.§=5§.getItemByName("MovieClip_Blocker").mClip;
         this.§9!n§ = new §"!'§(§,m§(this.§=5§.getItemByName("Container_ExtraBirdButton")),this.§?r§);
         this.§9!n§.enabled = true;
         this.§>!e§ = §2"8§(this.§=5§.getItemByName("Button_Use_Clone_Bird"));
         this.§>!e§.addEventListener(§4!4§.§="n§,this.§9!n§.onUIInteraction);
         § r§ = §2"8§(this.§=5§.getItemByName("Button_Skip_Extra_Bird"));
         § r§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         § r§.setVisibility(true);
         this.§9!a§ = TextField(this.§=5§.getItemByName("MovieClip_TimeLeft").mClip.txtLabel);
         this.§'!k§ = false;
         this.§=5§.mClip.visible = false;
         this.§const§ = §;"@§.singleton.§!# §.getLocalizedString("extrabird_timer");
      }
      
      private function onUIInteraction(param1:§4!4§) : void
      {
         if(param1.§84§.toUpperCase() == "NEXT_LEVEL")
         {
            this.§+`§ = 0;
         }
      }
      
      public function dispose() : void
      {
         if(this.§@"6§)
         {
            this.§@"6§.stop();
            this.§@"6§ = null;
         }
         if(this.§+=§)
         {
            this.§+=§.stop();
            this.§+=§ = null;
         }
         this.hide();
         this.§9!n§.dispose();
         this.§9!n§ = null;
         this.§8!i§ = -1;
      }
      
      public function show() : void
      {
         this.§9!a§.text = "";
         this.§=5§.mClip.visible = true;
         this.§]"p§.alpha = 0;
         this.§]"p§.y = 0;
         this.§]"p§.x = 0;
         this.§@"6§ = §41§.§-G§.§&#'§(this.§]"p§,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },{
            "scaleX":7,
            "scaleY":7,
            "alpha":1
         },0.1);
         this.§@"6§.onComplete = this.§="y§;
         this.§@"6§.delay = 0.3;
         this.§@"6§.play();
         this.§+=§ = §41§.§-G§.§&#'§(this.§&"R§,{"alpha":1},{"alpha":0},0.3);
         this.§+=§.play();
         this.§'!k§ = true;
         this.§+`§ = § o§;
         this.§9!n§.§<!!§(§ o§ / 1000);
      }
      
      public function hide() : void
      {
         if(this.§@"6§)
         {
            this.§@"6§.stop();
            this.§@"6§ = null;
         }
         if(this.§+=§)
         {
            this.§+=§.stop();
            this.§+=§ = null;
         }
         this.§9!n§.§-!b§();
         this.§=5§.mClip.visible = false;
         this.§'!k§ = false;
      }
      
      protected function §="y§() : void
      {
         this.§!!6§();
      }
      
      protected function §!!6§() : void
      {
         this.§%"e§ = 0;
         this.§,!z§ = 0;
         this.§8!i§ = §&!N§;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§'!k§)
         {
            return;
         }
         this.§+`§ -= param1;
         var _loc2_:String = this.§+`§ < 0 ? "0" : Math.ceil(this.§+`§ / 1000).toString();
         this.§9!a§.text = this.§const§.replace("[duration]",_loc2_);
         if(this.§+`§ < 0 || this.§8!i§ < 0)
         {
            return;
         }
         this.§]"p§.x -= this.§%"e§;
         this.§]"p§.y -= this.§,!z§;
         if(this.§8!i§ > 0)
         {
            this.§%"e§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,!z§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§]"p§.x += this.§%"e§;
            this.§]"p§.y += this.§,!z§;
         }
         else
         {
            this.§%"e§ = 0;
            this.§,!z§ = 0;
         }
         this.§8!i§ -= param1 / 10;
      }
   }
}
