package §+"C§
{
   import §+"2§.AbstractPopup;
   import §6!M§.§1",§;
   import §9!L§.§8u§;
   import §9!L§.ColorFadeLayerEvent;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   
   public class §^"4§ extends AbstractPopup
   {
       
      
      private const §^!O§:Number = 0.25;
      
      private const §7!E§:Number = 0.7;
      
      private const §]!s§:Number = 0.25;
      
      protected var §`!5§:§8u§ = null;
      
      private var §8!"§:Boolean;
      
      protected var §=!D§:§15§;
      
      protected var §^">§:Boolean;
      
      protected var §6"B§:Boolean;
      
      protected var §2!?§:§1",§;
      
      public function §^"4§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§`!5§ == null)
         {
            this.§`!5§ = new §8u§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§6"B§)
         {
            § 1§.setVisibility(false);
            § 1§.mClip.scaleX = 0;
            § 1§.mClip.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§^">§)
         {
            § 1§.mClip.addChildAt(this.§`!5§,0);
            this.§`!5§.§<"&§(0.7,this.§^!O§);
         }
         if(this.§6"B§)
         {
            if(this.§=!D§ != null)
            {
               this.§=!D§.stop();
            }
            this.§=!D§ = §@F§.§8!J§.§&6§(§ 1§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§7!E§,§@F§.§%!#§);
            this.§=!D§.play();
            this.§=!D§.updateState();
         }
         else
         {
            § 1§.mClip.scaleX = 1;
            § 1§.mClip.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§^">§)
         {
            this.§`!5§.§<"&§(0,this.§^!O§);
            this.§`!5§.addEventListener(ColorFadeLayerEvent.§+[§,this.§-!Z§);
            if(this.§6"B§)
            {
               if(this.§=!D§ != null)
               {
                  this.§=!D§.stop();
               }
               this.§=!D§ = §@F§.§8!J§.§&6§(§ 1§.mClip,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§]!s§,§@F§.§,!q§);
               this.§=!D§.play();
            }
         }
         else
         {
            this.§+'§();
            super.hide(param1,param2);
         }
      }
      
      private function §+'§() : void
      {
         if(§ 1§.mClip == this.§`!5§.parent && § 1§.mClip != null)
         {
            § 1§.mClip.removeChild(this.§`!5§);
         }
         this.§`!5§.removeEventListener(ColorFadeLayerEvent.§+[§,this.§-!Z§);
      }
      
      protected function §-!Z§(param1:ColorFadeLayerEvent) : void
      {
         this.§+'§();
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
