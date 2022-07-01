package §,r§
{
   import §%!,§.§,v§;
   import §,%§.§-!4§;
   import §,%§.§6G§;
   import §0E§.§-!F§;
   import §3",§.§0"<§;
   import §7"1§.§%W§;
   import §@!-§.§&!$§;
   import §@!-§.§3"1§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.events.Event;
   
   public class StateCutScene extends §,v§
   {
      
      public static const §8n§:String = "StateCutScene";
      
      private static const §@" §:Number = 500;
       
      
      private var §7!V§:§-!4§;
      
      private var §!!k§:Boolean;
      
      private var §>!0§:Number = 0;
      
      private var §6J§:Number = 0;
      
      private var § ! §:§&!$§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_CutScene[0]);
      }
      
      protected function §+!N§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§ ! §)
            {
               §?F§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§ ! §.removeEventListener(Event.COMPLETE,this.§>k§);
               this.§ ! §.removeEventListener(Event.CANCEL,this.§-a§);
               this.§ ! §.addEventListener(Event.COMPLETE,this.§>k§);
               this.§ ! §.addEventListener(Event.CANCEL,this.§-a§);
               this.§ ! §.§&X§("cutscene_" + param1);
            }
            else
            {
               this.§,m§();
            }
            return true;
         }
         return false;
      }
      
      private function §>k§(param1:Event) : void
      {
         if(this.§ ! §)
         {
            this.§ ! §.removeEventListener(Event.COMPLETE,this.§>k§);
            this.§ ! §.removeEventListener(Event.CANCEL,this.§-a§);
            this.§,m§();
         }
      }
      
      private function §,m§() : void
      {
         §?F§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`"'§();
         var _loc2_:§3"1§ = §3"1§.§ "!§;
         if(this.§ ! §)
         {
            _loc2_ = this.§ ! §.§="!§;
         }
         this.§7!V§ = §6G§.§,l§(_loc1_,_loc2_);
         if(this.§7!V§)
         {
            AngryBirdsFP11.§`!j§.§<![§(_loc1_);
            §%W§.§5"8§.§'N§(true);
            §%W§.§5"8§.§[!g§(false);
            this.§7!V§.update(0);
            §%W§.§5"8§.§[!Z§.addChild(this.§7!V§.sprite);
         }
      }
      
      protected function §-a§(param1:Event) : void
      {
         if(this.§ ! §)
         {
            this.§ ! §.removeEventListener(Event.COMPLETE,this.§>k§);
            this.§ ! §.removeEventListener(Event.CANCEL,this.§-a§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§ ! §)
         {
            this.§ ! § = §%W§.§5"8§.§"!M§;
         }
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.color = 0;
         }
         this.§>!0§ = 0;
         this.§6J§ = 0;
         §?F§.getItemByName("Button_Skip").setVisibility(false);
         §?F§.getItemByName("Button_Skip").mClip.alpha = this.§>!0§;
         AngryBirdsFP11.§#N§();
         this.§!!k§ = false;
         §?F§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`"'§();
         if(!this.§+!N§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §`"'§() : String
      {
         var _loc1_:String = §-!F§.§4"8§;
         var _loc2_:String = §-!F§.§%!R§().§?";§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §-!F§.§"!L§;
            _loc2_ = §-!F§.§%!R§().§?";§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§7!V§)
         {
            §%W§.§5"8§.§[!Z§.removeChild(this.§7!V§.sprite);
            this.§7!V§.dispose();
            this.§7!V§ = null;
         }
         if(this.§ ! §)
         {
            this.§ ! §.removeEventListener(Event.COMPLETE,this.§>k§);
            this.§ ! §.removeEventListener(Event.CANCEL,this.§-a§);
         }
         §%W§.§5"8§.§[!g§(true);
         §-!F§.§4"8§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§!!k§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§6J§ > §@" §)
         {
            §?F§.getItemByName("Button_Skip").setVisibility(true);
            this.§>!0§ += param1 / 1000;
            §?F§.getItemByName("Button_Skip").mClip.alpha = this.§>!0§;
            if(this.§>!0§ > 1)
            {
               this.§>!0§ = 1;
            }
         }
         else
         {
            this.§6J§ += param1;
         }
         if(this.§!!k§)
         {
            this.end();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         if(this.§7!V§ && !this.§7!V§.update(param1))
         {
            this.end();
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§7!V§ && this.§7!V§.§4w§ == §-!4§.§+!;§)
         {
            §+!F§.§&"!§ = StateCutScene.§8n§;
            mNextState = §+!F§.§8n§;
         }
         else if(this.§7!V§ && this.§7!V§.§4w§ == §-!4§.§>!n§)
         {
            mNextState = §`!X§.§8n§;
         }
         else
         {
            _loc1_ = §-!F§.§"!L§;
            if(_loc1_)
            {
               mNextState = this.§=d§();
            }
            else
            {
               mNextState = §+!F§.§8n§;
            }
         }
      }
      
      protected function §=d§() : String
      {
         return §'!O§.§8n§;
      }
   }
}
