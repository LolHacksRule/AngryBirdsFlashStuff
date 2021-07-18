package §2S§
{
   import §"n§.§<!e§;
   import §#"&§.§4!W§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §7!A§.§9!y§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§;!3§;
   import §^!3§.§,"'§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import each.§5<§;
   import flash.display.MovieClip;
   
   public class §<!'§ extends §9!y§
   {
      
      public static const §!6§:int = 50;
      
      protected static const §,o§:String = "MightyEagleButtonVisible";
      
      protected static const §@!3§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §&e§:String = "MightyEagleButtonHide";
       
      
      protected var §>A§:§,"'§;
      
      protected var § g§:§<!e§;
      
      protected var §;!m§:§0]§;
      
      protected var §,@§:String;
      
      protected var §+M§:§;§;
      
      protected var §]D§:§;§;
      
      protected var §'!h§:§;§;
      
      protected var §%W§:§;§;
      
      protected var §^!o§:MovieClip;
      
      protected var §'!6§:Boolean = false;
      
      public function §<!'§(param1:§"!a§, param2:§5!Y§, param3:§,"'§, param4:§4!W§, param5:§6h§)
      {
         this.§ g§ = new §<!e§();
         super(param1,param2,param4,param5);
         this.§>A§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§'!6§;
      }
      
      override protected function init() : void
      {
         §!O§.setVisibility(false);
         this.§+M§ = §;§(§!O§.getItemByName("Button_MightyEagle"));
         this.§]D§ = §;§(§!O§.getItemByName("Button_Pause"));
         this.§'!h§ = §;§(§!O§.getItemByName("Button_Restart"));
         this.§%W§ = §;§(§!O§.getItemByName("Button_FullScreen"));
         this.§^!o§ = §!O§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §!O§.setVisibility(true);
         §!O§.addEventListener(§>!B§.§7"&§,this.onUIInteraction);
         this.§ g§.§[@§(0);
         this.§6!O§(0);
         this.§%Q§();
         this.§,@§ = §,o§;
         this.§;!m§ = null;
         this.§'!6§ = false;
         if(this.§+M§)
         {
            this.§+M§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §!O§.setVisibility(false);
         §!O§.removeEventListener(§>!B§.§7"&§,this.onUIInteraction);
         this.§]D§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§'!h§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=!3§();
         if(this.§;!m§ != null)
         {
            this.§;!m§.stop();
            this.§;!m§ = null;
         }
      }
      
      protected function §6"'§() : void
      {
         if(§6!!§.singleton.§<!S§.userProgress.§,!>§ && §6!!§.singleton.§<!S§.userProgress.§"!h§(§&" §.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§6!O§(param1);
         if(this.§,@§ == §,o§ && !§&!"§.§1!D§.objects.isPigsAlive())
         {
            this.§8"'§();
         }
         if((this.§,@§ == §,o§ || this.§,@§ == §@!3§) && §&!"§.§1!D§.slingshot.mSlingShotState == §;!3§.§9"$§)
         {
            this.§-!V§();
         }
      }
      
      protected function §%Q§() : void
      {
         this.§^!o§.scaleY = 1;
         this.§^!o§.scaleX = 1;
      }
      
      public function §=!3§() : void
      {
         this.§+M§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+M§.setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §8"'§() : void
      {
         this.§,@§ = §@!3§;
      }
      
      protected function §-!V§() : void
      {
         this.§+M§.setComponentState(§%J§.COMPONENT_STATE_DISABLED);
         this.§+M§.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§;!m§ == null)
         {
            this.§;!m§ = §'^§.§2Z§.§!!f§(this.§^!o§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§,@§ = §&e§;
         this.§;!m§.onComplete = this.§"d§;
         this.§;!m§.play();
      }
      
      protected function §"d§() : void
      {
         this.§;!m§ = §'^§.§2Z§.§!!f§(this.§^!o§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§;!m§.play();
         this.§,@§ = §&e§;
      }
      
      protected function §6!O§(param1:Number) : void
      {
         var _loc2_:int = this.§>A§.getScore(10);
         var _loc3_:int = §^!8§.userProgress.getScoreForLevel(§&" §.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§ g§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§ g§.getValue() + param1 * §!6§);
            this.§ g§.§[@§(_loc4_);
         }
      }
      
      protected function §+s§() : void
      {
         var _loc1_:int = §6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel);
      }
      
      protected function §1!G§() : void
      {
         §&!"§.§1!D§.§1!G§();
         this.§+s§();
         this.§'!6§ = true;
      }
      
      protected function onUIInteraction(param1:§>!B§) : void
      {
         if(§2!,§)
         {
            return;
         }
         if(param1.§@! § is §;§)
         {
            if(param1.§3o§ == §6!W§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §5<§.mouseDown();
            }
            else if(param1.§3o§ == §6!W§.LISTENER_EVENT_MOUSE_UP)
            {
               §5<§.mouseUp();
            }
         }
         switch(param1.§3!C§)
         {
            case "PAUSE":
               dispatchEvent(new §8S§(§8S§.§[!&§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §8S§(§8S§.§1!K§,§0!S§()));
               break;
            case "MIGHTY_EAGLE":
               if(§6!!§.singleton.§<!S§.userProgress.§"!h§(§&" §.currentLevel))
               {
                  if(§6!!§.singleton.§<!S§.userProgress.§,!>§)
                  {
                     this.§1!G§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
   }
}
