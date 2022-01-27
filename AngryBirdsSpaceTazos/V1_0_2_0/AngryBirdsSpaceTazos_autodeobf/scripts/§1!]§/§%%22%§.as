package §1!]§
{
   import §"_§.AbstractPopup;
   import §;"=§.§<!8§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!O§.ColorFadeLayerEvent;
   import §]!O§.§^!j§;
   
   public class §%"%§ extends AbstractPopup
   {
       
      
      private const §4p§:Number = 0.25;
      
      private const §;"A§:Number = 0.7;
      
      private const §=C§:Number = 0.25;
      
      protected var §0"#§:§^!j§ = null;
      
      private var §,Q§:Boolean;
      
      protected var §0!5§:§8"+§;
      
      protected var §&"<§:Boolean;
      
      protected var § !z§:Boolean;
      
      protected var §@1§:§<!8§;
      
      public function §%"%§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§0"#§ == null)
         {
            this.§0"#§ = new §^!j§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§ !z§)
         {
            §&#§.setVisibility(false);
            §&#§.mClip.scaleX = 0;
            §&#§.mClip.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§&"<§)
         {
            §&#§.mClip.addChildAt(this.§0"#§,0);
            this.§0"#§.§#A§(0.7,this.§4p§);
         }
         if(this.§ !z§)
         {
            if(this.§0!5§ != null)
            {
               this.§0!5§.stop();
            }
            this.§0!5§ = §<K§.§<"B§.§`!c§(§&#§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§;"A§,§<K§.§56§);
            this.§0!5§.play();
            this.§0!5§.updateState();
         }
         else
         {
            §&#§.mClip.scaleX = 1;
            §&#§.mClip.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§&"<§)
         {
            this.§0"#§.§#A§(0,this.§4p§);
            this.§0"#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.§7n§);
            if(this.§ !z§)
            {
               if(this.§0!5§ != null)
               {
                  this.§0!5§.stop();
               }
               this.§0!5§ = §<K§.§<"B§.§`!c§(§&#§.mClip,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§=C§,§<K§.§1Y§);
               this.§0!5§.play();
            }
         }
         else
         {
            this.§,"9§();
            super.hide(param1,param2);
         }
      }
      
      private function §,"9§() : void
      {
         if(§&#§.mClip == this.§0"#§.parent && §&#§.mClip != null)
         {
            §&#§.mClip.removeChild(this.§0"#§);
         }
         this.§0"#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.§7n§);
      }
      
      protected function §7n§(param1:ColorFadeLayerEvent) : void
      {
         this.§,"9§();
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
