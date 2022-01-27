package §7#'§
{
   import §'"I§.§1-§;
   import §'"I§.§>!t§;
   import §+"x§.§2!s§;
   import §+"x§.AbstractPopup;
   import §7!H§.§5k§;
   import §=!4§.§7!@§;
   import §=!4§.§8"U§;
   
   public class §?e§ extends AbstractPopup
   {
       
      
      protected var §`L§:String;
      
      protected var §4"E§:String;
      
      protected var §'k§:String;
      
      protected var §+J§:§ !8§;
      
      protected var §&"l§:Boolean;
      
      public function §?e§(param1:XML, param2:String, param3:§ !8§ = null)
      {
         this.§`L§ = §>!t§.§#!e§();
         this.§4"E§ = §>!t§.§4#&§();
         this.§'k§ = §>!t§.§,"x§();
         super(§-"s§.§"!e§,§2!s§.§@"$§,param1,param2);
         this.§+!T§ = param3;
         this.§&"l§ = false;
      }
      
      public function set §+!T§(param1:§ !8§) : void
      {
         this.§+J§ = param1;
         §9"o§ = !!this.§+J§ ? true : false;
      }
      
      public function get §+!T§() : § !8§
      {
         return this.§+J§;
      }
      
      protected function setReverseLabels() : void
      {
      }
      
      override public function dispose() : void
      {
         this.§+J§ = null;
         super.dispose();
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §1-§.§?j§)
         {
            dispatchEvent(new §5k§(§5k§.§3!&§,id));
         }
         else if(param1 == §1-§.§!o§)
         {
            §;!]§ = this.§9"m§();
            if(this.§+J§)
            {
               dispatchEvent(new §5k§(§5k§.§"!l§,id));
            }
            else
            {
               §[#§.stop(true);
            }
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §1-§.§<§)
         {
            dispatchEvent(new §5k§(§5k§.§7"v§,id));
         }
         if(param1 == §1-§.§!o§ && !this.§+J§)
         {
            dispatchEvent(new §5k§(§5k§.§"!l§,id));
         }
      }
      
      override protected function getRunTransitionData() : §1-§
      {
         var _loc1_:§1-§ = new §1-§();
         _loc1_.§ try§ = §>!t§.§?>§;
         _loc1_.§@"D§ = §>!t§.§%M§;
         _loc1_.startLabel = this.§'k§;
         _loc1_.type = §1-§.§!o§;
         _loc1_.stageQuality = §^"Z§;
         _loc1_.loop = §9"o§;
         return _loc1_;
      }
      
      override protected function getTransitionInData() : §1-§
      {
         var _loc1_:§1-§ = new §1-§();
         _loc1_.§ try§ = §>!t§.§?>§;
         _loc1_.§@"D§ = §>!t§.§%M§;
         _loc1_.startLabel = this.§4"E§;
         _loc1_.type = §1-§.§?j§;
         _loc1_.stageQuality = §^"Z§;
         return _loc1_;
      }
      
      protected function §9"m§() : §1-§
      {
         var _loc1_:§1-§ = new §1-§();
         _loc1_.§ try§ = §>!t§.§?>§;
         _loc1_.§@"D§ = §>!t§.§%M§;
         _loc1_.startLabel = this.§`L§;
         _loc1_.type = §1-§.§<§;
         _loc1_.stageQuality = §^"Z§;
         return _loc1_;
      }
      
      override public function get isTransitioning() : Boolean
      {
         if(§[#§ && §[#§.isRunning)
         {
            return true;
         }
         return false;
      }
      
      override protected function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(§,"-§);
      }
      
      public function showTransition(param1:String, param2:Boolean = false) : void
      {
         this.§&"l§ = true;
         if(param1 != "")
         {
            §]!R§ = param1;
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
         §+#"§();
         this.show(true);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!this.§&"l§)
         {
            return;
         }
         §[#,§.setVisibility(true);
         if(param1 && §[#§)
         {
            §'U§(this.getTransitionInData());
         }
         else
         {
            onTransitionInComplete();
         }
      }
      
      override protected function runTransition(param1:§7!@§) : void
      {
         super.runTransition(param1);
         if(§[#§ && §[#§.isRunning && this.§+J§ && this.§+J§.isLoaded)
         {
            §[#§.stop(true);
         }
      }
      
      override protected function uIInteractionHandler(param1:§8"U§) : void
      {
         if(§[#§ && §[#§.isRunning && (§,"-§ == §1-§.§?j§ || §,"-§ == §1-§.§<§))
         {
            return;
         }
         onUIInteraction(param1.§;#6§,param1.§5!u§,param1.§7!k§);
      }
   }
}
