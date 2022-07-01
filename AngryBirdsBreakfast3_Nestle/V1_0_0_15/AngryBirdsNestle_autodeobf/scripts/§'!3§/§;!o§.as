package §'!3§
{
   import §%8§.§;!=§;
   import §1!i§.AbstractPopup;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.display.MovieClip;
   
   public class §;!o§ extends AbstractPopup
   {
       
      
      private const §,!<§:Number = 0.25;
      
      private const §"#§:Number = 0.7;
      
      private const §6m§:Number = 0.25;
      
      protected var §]!b§:§?>§ = null;
      
      private var §&!K§:Boolean;
      
      protected var §%"1§:§]W§;
      
      protected var §9p§:Boolean;
      
      protected var §]G§:Boolean;
      
      protected var §^J§:Boolean = false;
      
      protected var §@!]§:§;!=§;
      
      private var §-!;§:MovieClip;
      
      public function §;!o§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§]!b§ == null)
         {
            this.§]!b§ = new §?>§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-!;§ = §29§.mClip;
         if(this.§]G§)
         {
            this.§-!;§.scaleX = 0;
            this.§-!;§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§^J§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§,!W§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§1"&§ * 220;
            }
            this.§-!;§.x = (param1 - _loc3_) / 2;
            this.§-!;§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§9p§)
         {
            §29§.mClip.addChildAt(this.§]!b§,0);
            this.§]!b§.§!!p§(0.7,this.§,!<§);
         }
         if(this.§]G§)
         {
            if(this.§%"1§ != null)
            {
               this.§%"1§.stop();
            }
            this.§%"1§ = §0!o§.§,2§.§4!t§(this.§-!;§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§"#§,§0!o§.§2+§);
            this.§%"1§.play();
            this.§%"1§.updateState();
         }
         else
         {
            this.§-!;§.scaleX = 1;
            this.§-!;§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§9p§)
         {
            this.§]!b§.§!!p§(0,this.§,!<§);
            this.§]!b§.addEventListener(ColorFadeLayerEvent.§#!9§,this.§8?§);
            if(this.§]G§)
            {
               if(this.§%"1§ != null)
               {
                  this.§%"1§.stop();
               }
               this.§%"1§ = §0!o§.§,2§.§4!t§(this.§-!;§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§6m§,§0!o§.§'"6§);
               this.§%"1§.play();
            }
         }
         else
         {
            this.§;!K§();
            super.hide(param1,param2);
         }
      }
      
      private function §;!K§() : void
      {
         if(§29§.mClip == this.§]!b§.parent && §29§.mClip != null)
         {
            §29§.mClip.removeChild(this.§]!b§);
         }
         this.§]!b§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.§8?§);
      }
      
      protected function §8?§(param1:ColorFadeLayerEvent) : void
      {
         this.§;!K§();
         super.hide();
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
   }
}
