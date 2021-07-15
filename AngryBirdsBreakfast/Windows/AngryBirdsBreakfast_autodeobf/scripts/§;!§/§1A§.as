package §;!§
{
   import §"n§.§!!G§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import com.angrybirds.§&!"§;
   
   public class §1A§ extends §;" §
   {
      
      public static const §-!q§:String = "LegalState";
       
      
      public function §1A§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "LegalState")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLegal[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.§"!Q§(false);
         §6!!§.singleton.§%![§.§[!"§();
         this.updateLocalization();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "AGREE":
               §6!!§.singleton.§<f§(§4!9§.§-!q§);
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "DISAGREE":
               (§6!!§.singleton as §4!=§).§=D§(false);
               (§6!!§.singleton as §4!=§).§?!b§.§[o§(null);
               §6!!§.singleton.§<f§(§^!N§.§-!q§);
               §'!c§.§3!f§("Menu_Back");
         }
      }
      
      override public function updateLocalization() : void
      {
         §!!G§.§2Z§.updateTextFields(§?P§.container,"LegalState");
      }
   }
}
