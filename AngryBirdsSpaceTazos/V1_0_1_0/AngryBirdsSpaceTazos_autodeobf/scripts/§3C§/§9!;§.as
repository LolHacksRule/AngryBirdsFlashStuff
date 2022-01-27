package §3C§
{
   import §"!&§.§!"7§;
   import §7!H§.AbstractPopup;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   
   public class §9!;§ extends AbstractPopup
   {
       
      
      private const §3!"§:Number = 0.25;
      
      private const §&!'§:Number = 0.7;
      
      private const §5! §:Number = 0.25;
      
      protected var §&!=§:§&"$§ = null;
      
      private var §<;§:Boolean;
      
      protected var §[>§:§5!9§;
      
      protected var §>"2§:Boolean;
      
      protected var §1"$§:Boolean;
      
      protected var §3"4§:§!"7§;
      
      public function §9!;§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§&!=§ == null)
         {
            this.§&!=§ = new §&"$§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§1"$§)
         {
            §[S§.setVisibility(false);
            §[S§.mClip.scaleX = 0;
            §[S§.mClip.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§>"2§)
         {
            §[S§.mClip.addChildAt(this.§&!=§,0);
            this.§&!=§.§7t§(0.7,this.§3!"§);
         }
         if(this.§1"$§)
         {
            if(this.§[>§ != null)
            {
               this.§[>§.stop();
            }
            this.§[>§ = §!D§.§[!1§.§1"<§(§[S§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§&!'§,§!D§.§3K§);
            this.§[>§.play();
            this.§[>§.updateState();
         }
         else
         {
            §[S§.mClip.scaleX = 1;
            §[S§.mClip.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§>"2§)
         {
            this.§&!=§.§7t§(0,this.§3!"§);
            this.§&!=§.addEventListener(ColorFadeLayerEvent.§;Y§,this.§5S§);
            if(this.§1"$§)
            {
               if(this.§[>§ != null)
               {
                  this.§[>§.stop();
               }
               this.§[>§ = §!D§.§[!1§.§1"<§(§[S§.mClip,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§5! §,§!D§.§=S§);
               this.§[>§.play();
            }
         }
         else
         {
            this.§1P§();
            super.hide(param1,param2);
         }
      }
      
      private function §1P§() : void
      {
         if(§[S§.mClip == this.§&!=§.parent && §[S§.mClip != null)
         {
            §[S§.mClip.removeChild(this.§&!=§);
         }
         this.§&!=§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.§5S§);
      }
      
      protected function §5S§(param1:ColorFadeLayerEvent) : void
      {
         this.§1P§();
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
