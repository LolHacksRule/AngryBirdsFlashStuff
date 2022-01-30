package §2!b§
{
   import §#!`§.§+"#§;
   import §-!F§.§?!k§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §;f§.§'!3§;
   import §=!7§.§9c§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!L§.§?!d§;
   import §>!a§.§5l§;
   import §@"1§.§`!j§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §]!d§.§-!<§;
   import §`!C§.§=!a§;
   import §`!h§.§8!n§;
   import com.angrybirds.§4!l§;
   import flash.display.MovieClip;
   
   public class §1n§ extends §8!n§
   {
      
      public static const §`T§:int = 50;
      
      protected static const §6Q§:String = "MightyEagleButtonVisible";
      
      protected static const §+!u§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1" §:String = "MightyEagleButtonHide";
       
      
      protected var §^]§:§'!3§;
      
      protected var §!!s§:§?!k§;
      
      protected var §&=§:§]!X§;
      
      protected var §3!+§:String;
      
      protected var §^+§:§?v§;
      
      protected var §^7§:§?v§;
      
      protected var §get §:§?v§;
      
      protected var §!!c§:§?v§;
      
      protected var §&;§:MovieClip;
      
      protected var §%!o§:Boolean = false;
      
      public function §1n§(param1:§5" §, param2:§5l§, param3:§'!3§, param4:§+"#§, param5:§-!<§)
      {
         this.§!!s§ = new §?!k§();
         super(param1,param2,param4,param5);
         this.§^]§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§%!o§;
      }
      
      override protected function init() : void
      {
         §&!e§.setVisibility(false);
         this.§^+§ = §?v§(§&!e§.getItemByName("Button_MightyEagle"));
         this.§^7§ = §?v§(§&!e§.getItemByName("Button_Pause"));
         this.§get § = §?v§(§&!e§.getItemByName("Button_Restart"));
         this.§!!c§ = §?v§(§&!e§.getItemByName("Button_FullScreen"));
         this.§&;§ = §&!e§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §&!e§.setVisibility(true);
         §&!e§.addEventListener(§?!d§.§@q§,this.onUIInteraction);
         this.§!!s§.§4!Y§(0);
         this.§@!F§(0);
         this.§'N§();
         this.§3!+§ = §6Q§;
         this.§&=§ = null;
         this.§%!o§ = false;
         if(this.§^+§)
         {
            this.§^+§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §&!e§.setVisibility(false);
         §&!e§.removeEventListener(§?!d§.§@q§,this.onUIInteraction);
         this.§^7§.setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§get §.setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1!^§();
         if(this.§&=§ != null)
         {
            this.§&=§.stop();
            this.§&=§ = null;
         }
      }
      
      protected function §6!H§() : void
      {
         if(§&N§.§#Y§.§`"$§.userProgress.§8a§ && §&N§.§#Y§.§`"$§.userProgress.§`#§(§^!§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§@!F§(param1);
         if(this.§3!+§ == §6Q§ && !§4!l§.§,!8§.objects.isPigsAlive())
         {
            this.§+3§();
         }
         if((this.§3!+§ == §6Q§ || this.§3!+§ == §+!u§) && §4!l§.§,!8§.slingshot.mSlingShotState == §`!j§.§>!n§)
         {
            this.§0r§();
         }
      }
      
      protected function §'N§() : void
      {
         this.§&;§.scaleY = 1;
         this.§&;§.scaleX = 1;
      }
      
      public function §1!^§() : void
      {
         this.§^+§.setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§^+§.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §+3§() : void
      {
         this.§3!+§ = §+!u§;
      }
      
      protected function §0r§() : void
      {
         this.§^+§.setComponentState(§4d§.COMPONENT_STATE_DISABLED);
         this.§^+§.setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§&=§ == null)
         {
            this.§&=§ = §`!F§.§=J§.§-r§(this.§&;§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§3!+§ = §1" §;
         this.§&=§.onComplete = this.§ !F§;
         this.§&=§.play();
      }
      
      protected function § !F§() : void
      {
         this.§&=§ = §`!F§.§=J§.§-r§(this.§&;§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§&=§.play();
         this.§3!+§ = §1" §;
      }
      
      protected function §@!F§(param1:Number) : void
      {
         var _loc2_:int = this.§^]§.getScore(10);
         var _loc3_:int = §'c§.userProgress.getScoreForLevel(§^!§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§!!s§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§!!s§.getValue() + param1 * §`T§);
            this.§!!s§.§4!Y§(_loc4_);
         }
      }
      
      protected function § !Z§() : void
      {
         var _loc1_:int = §&N§.§#Y§.§`"$§.userProgress.§%"-§(§^!§.currentLevel);
      }
      
      protected function §&"0§() : void
      {
         §4!l§.§,!8§.§&"0§();
         this.§ !Z§();
         this.§%!o§ = true;
      }
      
      protected function onUIInteraction(param1:§?!d§) : void
      {
         if(§0n§)
         {
            return;
         }
         if(param1.§8!P§ is §?v§)
         {
            if(param1.§^P§ == §&!"§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9c§.mouseDown();
            }
            else if(param1.§^P§ == §&!"§.LISTENER_EVENT_MOUSE_UP)
            {
               §9c§.mouseUp();
            }
         }
         switch(param1.§&"5§)
         {
            case "PAUSE":
               dispatchEvent(new §=!a§(§=!a§.§[!4§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §=!a§(§=!a§.§1K§,§4!5§()));
               break;
            case "MIGHTY_EAGLE":
               if(§&N§.§#Y§.§`"$§.userProgress.§`#§(§^!§.currentLevel))
               {
                  if(§&N§.§#Y§.§`"$§.userProgress.§8a§)
                  {
                     this.§&"0§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
   }
}
