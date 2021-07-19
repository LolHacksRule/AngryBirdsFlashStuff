package §-#a§
{
   import §4#!§.§ t§;
   import §<w§.§6#'§;
   import §<w§.§^!q§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import §]!$§.§`#?§;
   
   public class §0`§ extends AbstractPopup
   {
       
      
      protected var §3E§:String;
      
      protected var § #'§:String;
      
      protected var §'F§:String;
      
      protected var §`!w§:§>,§;
      
      protected var §%#]§:Boolean;
      
      public function §0`§(param1:XML, param2:String, param3:§>,§ = null)
      {
         this.§3E§ = §`#?§.§8#@§();
         this.§ #'§ = §`#?§.§@!!§();
         this.§'F§ = §`#?§.§[! §();
         super(§`"H§.§""7§,§+5§.§>!g§,param1,param2);
         this.§=#1§ = param3;
         this.§%#]§ = false;
      }
      
      public function set §=#1§(param1:§>,§) : void
      {
         this.§`!w§ = param1;
         §+#=§ = !!this.§`!w§ ? true : false;
      }
      
      public function get §=#1§() : §>,§
      {
         return this.§`!w§;
      }
      
      protected function setReverseLabels() : void
      {
      }
      
      override public function dispose() : void
      {
         this.§`!w§ = null;
         super.dispose();
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6y§.§>]§)
         {
            dispatchEvent(new § t§(§ t§.§]"]§,id));
         }
         else if(param1 == §6y§.§5z§)
         {
            §?!O§ = this.§0m§();
            if(this.§`!w§)
            {
               dispatchEvent(new § t§(§ t§.§4o§,id));
            }
            else
            {
               §7!=§.stop(true);
            }
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §6y§.§;X§)
         {
            dispatchEvent(new § t§(§ t§.END,id));
         }
         if(param1 == §6y§.§5z§ && !this.§`!w§)
         {
            dispatchEvent(new § t§(§ t§.§4o§,id));
         }
      }
      
      override protected function getRunTransitionData() : §6y§
      {
         var _loc1_:§6y§ = new §6y§();
         _loc1_.§%#N§ = §`#?§.§1#$§;
         _loc1_.§`"i§ = §`#?§.§;!&§;
         _loc1_.startLabel = this.§'F§;
         _loc1_.type = §6y§.§5z§;
         _loc1_.stageQuality = §^!`§;
         _loc1_.loop = §+#=§;
         return _loc1_;
      }
      
      override protected function getTransitionInData() : §6y§
      {
         var _loc1_:§6y§ = new §6y§();
         _loc1_.§%#N§ = §`#?§.§1#$§;
         _loc1_.§`"i§ = §`#?§.§;!&§;
         _loc1_.startLabel = this.§ #'§;
         _loc1_.type = §6y§.§>]§;
         _loc1_.stageQuality = §^!`§;
         return _loc1_;
      }
      
      protected function §0m§() : §6y§
      {
         var _loc1_:§6y§ = new §6y§();
         _loc1_.§%#N§ = §`#?§.§1#$§;
         _loc1_.§`"i§ = §`#?§.§;!&§;
         _loc1_.startLabel = this.§3E§;
         _loc1_.type = §6y§.§;X§;
         _loc1_.stageQuality = §^!`§;
         return _loc1_;
      }
      
      override public function get isTransitioning() : Boolean
      {
         if(§7!=§ && §7!=§.isRunning)
         {
            return true;
         }
         return false;
      }
      
      override protected function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(§`"B§);
      }
      
      public function showTransition(param1:String, param2:Boolean = false) : void
      {
         this.§%#]§ = true;
         if(param1 != "")
         {
            §6##§ = param1;
         }
         if(param2)
         {
            this.setReverseLabels();
         }
         else
         {
            createTransitionLabels();
         }
         init();
         §?"-§();
         this.show(true);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!this.§%#]§)
         {
            return;
         }
         §^c§.setVisibility(true);
         if(param1 && §7!=§)
         {
            §%!K§(this.getTransitionInData());
         }
         else
         {
            onTransitionInComplete();
         }
      }
      
      override protected function runTransition(param1:§^!q§) : void
      {
         super.runTransition(param1);
         if(§7!=§ && §7!=§.isRunning && this.§`!w§ && this.§`!w§.isLoaded)
         {
            §7!=§.stop(true);
         }
      }
      
      override protected function uIInteractionHandler(param1:§6#'§) : void
      {
         if(§7!=§ && §7!=§.isRunning && (§`"B§ == §6y§.§>]§ || §`"B§ == §6y§.§;X§))
         {
            return;
         }
         onUIInteraction(param1.§@#8§,param1.§=!k§,param1.§^"r§);
      }
   }
}
