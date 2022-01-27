package §=",§
{
   import §#!$§.§2,§;
   import §#!k§.§4!4§;
   import §#!k§.§`L§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §7!@§.§6"§;
   import §7!@§.§[`§;
   
   public class §>#-§ extends AbstractPopup
   {
       
      
      protected var §]#-§:String;
      
      protected var §-"q§:String;
      
      protected var §;!Z§:String;
      
      protected var §1"?§:§"!a§;
      
      protected var §`!0§:Boolean;
      
      public function §>#-§(param1:XML, param2:String, param3:§"!a§ = null)
      {
         this.§]#-§ = §[`§.§^"f§();
         this.§-"q§ = §[`§.§%!]§();
         this.§;!Z§ = §[`§.§]L§();
         super(§5#!§.§-"#§,§^T§.§0O§,param1,param2);
         this.§&Y§ = param3;
         this.§`!0§ = false;
      }
      
      public function set §&Y§(param1:§"!a§) : void
      {
         this.§1"?§ = param1;
         §,!7§ = !!this.§1"?§ ? true : false;
      }
      
      public function get §&Y§() : §"!a§
      {
         return this.§1"?§;
      }
      
      protected function setReverseLabels() : void
      {
      }
      
      override public function dispose() : void
      {
         this.§1"?§ = null;
         super.dispose();
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6"§.§,#2§)
         {
            dispatchEvent(new §2,§(§2,§.§#"J§,id));
         }
         else if(param1 == §6"§.§+"n§)
         {
            §<7§ = this.§?W§();
            if(this.§1"?§)
            {
               dispatchEvent(new §2,§(§2,§.§;"N§,id));
            }
            else
            {
               §,_§.stop(true);
            }
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == §6"§.§9!j§)
         {
            dispatchEvent(new §2,§(§2,§.§!"w§,id));
         }
         if(param1 == §6"§.§+"n§ && !this.§1"?§)
         {
            dispatchEvent(new §2,§(§2,§.§;"N§,id));
         }
      }
      
      override protected function getRunTransitionData() : §6"§
      {
         var _loc1_:§6"§ = new §6"§();
         _loc1_.§>"$§ = §[`§.§-"y§;
         _loc1_.§!"X§ = §[`§.§!Y§;
         _loc1_.startLabel = this.§;!Z§;
         _loc1_.type = §6"§.§+"n§;
         _loc1_.stageQuality = §?m§;
         _loc1_.loop = §,!7§;
         return _loc1_;
      }
      
      override protected function getTransitionInData() : §6"§
      {
         var _loc1_:§6"§ = new §6"§();
         _loc1_.§>"$§ = §[`§.§-"y§;
         _loc1_.§!"X§ = §[`§.§!Y§;
         _loc1_.startLabel = this.§-"q§;
         _loc1_.type = §6"§.§,#2§;
         _loc1_.stageQuality = §?m§;
         return _loc1_;
      }
      
      protected function §?W§() : §6"§
      {
         var _loc1_:§6"§ = new §6"§();
         _loc1_.§>"$§ = §[`§.§-"y§;
         _loc1_.§!"X§ = §[`§.§!Y§;
         _loc1_.startLabel = this.§]#-§;
         _loc1_.type = §6"§.§9!j§;
         _loc1_.stageQuality = §?m§;
         return _loc1_;
      }
      
      override public function get isTransitioning() : Boolean
      {
         if(§,_§ && §,_§.isRunning)
         {
            return true;
         }
         return false;
      }
      
      override protected function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(§#"f§);
      }
      
      public function showTransition(param1:String, param2:Boolean = false) : void
      {
         this.§`!0§ = true;
         if(param1 != "")
         {
            §[7§ = param1;
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
         §0!1§();
         this.show(true);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!this.§`!0§)
         {
            return;
         }
         §,r§.setVisibility(true);
         if(param1 && §,_§)
         {
            §?<§(this.getTransitionInData());
         }
         else
         {
            onTransitionInComplete();
         }
      }
      
      override protected function runTransition(param1:§`L§) : void
      {
         super.runTransition(param1);
         if(§,_§ && §,_§.isRunning && this.§1"?§ && this.§1"?§.isLoaded)
         {
            §,_§.stop(true);
         }
      }
      
      override protected function uIInteractionHandler(param1:§4!4§) : void
      {
         if(§,_§ && §,_§.isRunning && (§#"f§ == §6"§.§,#2§ || §#"f§ == §6"§.§9!j§))
         {
            return;
         }
         onUIInteraction(param1.§6$§,param1.§84§,param1.§-w§);
      }
   }
}
