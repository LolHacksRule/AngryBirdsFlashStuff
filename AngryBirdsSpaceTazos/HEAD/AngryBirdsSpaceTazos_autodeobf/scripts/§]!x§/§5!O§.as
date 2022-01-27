package §]!x§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §-!r§.AbstractPopup;
   import §1!k§.§2!^§;
   import §1!k§.ColorFadeLayerEvent;
   import §3>§.§?_§;
   
   public class §5!O§ extends AbstractPopup
   {
       
      
      private const §5V§:Number = 0.25;
      
      private const §6A§:Number = 0.7;
      
      private const §!e§:Number = 0.25;
      
      protected var §'!<§:§2!^§ = null;
      
      private var §#j§:Boolean;
      
      protected var §2G§:§,4§;
      
      protected var §<"5§:Boolean;
      
      protected var §8!X§:Boolean;
      
      protected var §!d§:§?_§;
      
      public function §5!O§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§'!<§ == null)
         {
            this.§'!<§ = new §2!^§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§8!X§)
         {
            §3!a§.setVisibility(false);
            §3!a§.mClip.scaleX = 0;
            §3!a§.mClip.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§<"5§)
         {
            §3!a§.mClip.addChildAt(this.§'!<§,0);
            this.§'!<§.§[!1§(0.7,this.§5V§);
         }
         if(this.§8!X§)
         {
            if(this.§2G§ != null)
            {
               this.§2G§.stop();
            }
            this.§2G§ = §"!t§.§3R§.§2m§(§3!a§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§6A§,§"!t§.§@!Q§);
            this.§2G§.play();
            this.§2G§.updateState();
         }
         else
         {
            §3!a§.mClip.scaleX = 1;
            §3!a§.mClip.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§<"5§)
         {
            this.§'!<§.§[!1§(0,this.§5V§);
            this.§'!<§.addEventListener(ColorFadeLayerEvent.§4,§,this.§7_§);
            if(this.§8!X§)
            {
               if(this.§2G§ != null)
               {
                  this.§2G§.stop();
               }
               this.§2G§ = §"!t§.§3R§.§2m§(§3!a§.mClip,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§!e§,§"!t§.§="=§);
               this.§2G§.play();
            }
         }
         else
         {
            this.§;!#§();
            super.hide(param1,param2);
         }
      }
      
      private function §;!#§() : void
      {
         if(§3!a§.mClip == this.§'!<§.parent && §3!a§.mClip != null)
         {
            §3!a§.mClip.removeChild(this.§'!<§);
         }
         this.§'!<§.removeEventListener(ColorFadeLayerEvent.§4,§,this.§7_§);
      }
      
      protected function §7_§(param1:ColorFadeLayerEvent) : void
      {
         this.§;!#§();
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
