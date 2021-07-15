package §;!§
{
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import flash.desktop.NativeApplication;
   
   public class §?!x§ extends §&4§
   {
       
      
      private var §<Y§:§?!'§;
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      public function §?!x§(param1:§5!Y§, param2:§6h§, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         this.§'x§ = new §,!e§(0,0,0,1);
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         this.§<Y§ = §&!"§.§1!D§;
         §#!7§ = new §9R§(this.§<Y§,§&" §);
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.View_Credits[0];
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§<Y§.§"!Q§(true);
         §&!"§.resume();
         §&!"§.setController(§#!7§);
         this.§<Y§.camera.§ 4§();
         this.§`!N§();
         §4!=§.§"!<§();
      }
      
      private function §`!N§() : void
      {
         var _loc1_:§3!&§ = null;
         for each(_loc1_ in this.§<Y§.slingshot.§06§)
         {
            _loc1_.§6s§ = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§;!u§ = false;
               this.§6@§();
               §'!c§.§3!f§("Menu_Back");
         }
      }
      
      protected function §6@§() : void
      {
         if(this.§'x§ && !this.§;!u§)
         {
            this.§'x§.mouseEnabled = true;
            this.§;!u§ = true;
            this.§'x§.§7z§(0);
            this.§'x§.§=v§(1,0.25);
            this.§'x§.addEventListener(ColorFadeLayerEvent.§9e§,this.§#!G§);
         }
      }
      
      protected function §#!G§(param1:ColorFadeLayerEvent) : void
      {
         this.§'x§.mouseEnabled = false;
         this.§'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.§#!G§);
         if((§6!!§.singleton as §4!=§).§"!L§())
         {
            §<f§(§`B§.§-!q§);
         }
         else
         {
            §<f§(§^!N§.§-!q§);
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'x§.mouseEnabled = true;
         this.§;!u§ = false;
         §?P§.container.mClip.addChild(this.§'x§);
         this.§<s§();
         §6!!§.singleton.§%![§.§[!"§();
      }
      
      protected function §<s§() : void
      {
         if(this.§'x§ && !this.§;!u§)
         {
            this.§;!u§ = true;
            this.§'x§.§7z§(1);
            this.§'x§.§=v§(0,0.25);
            this.§'x§.addEventListener(ColorFadeLayerEvent.§9e§,this.§!r§);
         }
      }
      
      private function §!r§(param1:ColorFadeLayerEvent) : void
      {
         this.§'x§.mouseEnabled = false;
         this.§'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.§!r§);
      }
      
      override public function deActivate() : void
      {
         if(this.§'x§.parent == §?P§.container.mClip)
         {
            §?P§.container.mClip.removeChild(this.§'x§);
         }
         super.deActivate();
      }
      
      override protected function setVersion() : void
      {
         var _loc1_:XML = NativeApplication.nativeApplication.applicationDescriptor;
         var _loc2_:Namespace = _loc1_.namespace();
         §?P§.setText(_loc1_._loc2_::versionNumber,"TextField_Version_Number");
      }
   }
}
