package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §9!$§.§,i§;
   import §9!$§.§6R§;
   import §=!3§.§;!!§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import flash.events.Event;
   
   public class StateCutScene extends §;!!§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §#_§:Number = 500;
       
      
      private var §9-§:§6R§;
      
      private var §%!f§:Boolean;
      
      private var §;!9§:Number = 0;
      
      private var §4![§:Number = 0;
      
      private var §"X§:§-b§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_CutScene[0]);
      }
      
      protected function §"!o§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§"X§)
            {
               §+!$§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§"X§.removeEventListener(Event.COMPLETE,this.§-!X§);
               this.§"X§.removeEventListener(Event.CANCEL,this.§5!G§);
               this.§"X§.addEventListener(Event.COMPLETE,this.§-!X§);
               this.§"X§.addEventListener(Event.CANCEL,this.§5!G§);
               this.§"X§.§95§("cutscene_" + param1);
            }
            else
            {
               this.§2e§();
            }
            return true;
         }
         return false;
      }
      
      private function §-!X§(param1:Event) : void
      {
         if(this.§"X§)
         {
            this.§"X§.removeEventListener(Event.COMPLETE,this.§-!X§);
            this.§"X§.removeEventListener(Event.CANCEL,this.§5!G§);
            this.§2e§();
         }
      }
      
      private function §2e§() : void
      {
         §+!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§[!#§();
         var _loc2_:§3p§ = §3p§.§`!t§;
         if(this.§"X§)
         {
            _loc2_ = this.§"X§.textureManager;
         }
         this.§9-§ = §,i§.§#!>§(_loc1_,_loc2_);
         if(this.§9-§)
         {
            AngryBirdsFP11.sUserProgress.§&,§(_loc1_);
            §'!V§.§1!2§.§-I§(true);
            §'!V§.§1!2§.§?m§(false);
            this.§9-§.update(0);
            §'!V§.§1!2§.§&]§.addChild(this.§9-§.sprite);
         }
      }
      
      protected function §5!G§(param1:Event) : void
      {
         if(this.§"X§)
         {
            this.§"X§.removeEventListener(Event.COMPLETE,this.§-!X§);
            this.§"X§.removeEventListener(Event.CANCEL,this.§5!G§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§"X§)
         {
            this.§"X§ = §'!V§.§1!2§.§?!r§;
         }
         if(§7j§.§else§)
         {
            §7j§.§else§.color = 0;
         }
         this.§;!9§ = 0;
         this.§4![§ = 0;
         §+!$§.getItemByName("Button_Skip").setVisibility(false);
         §+!$§.getItemByName("Button_Skip").mClip.alpha = this.§;!9§;
         AngryBirdsFP11.§9!?§();
         this.§%!f§ = false;
         §+!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§[!#§();
         if(!this.§"!o§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §[!#§() : String
      {
         var _loc1_:String = §1^§.§3W§;
         var _loc2_:String = §1^§.§'j§().§8!Z§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §1^§.§ ]§;
            _loc2_ = §1^§.§'j§().§8!Z§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§9-§)
         {
            §'!V§.§1!2§.§&]§.removeChild(this.§9-§.sprite);
            this.§9-§.dispose();
            this.§9-§ = null;
         }
         if(this.§"X§)
         {
            this.§"X§.removeEventListener(Event.COMPLETE,this.§-!X§);
            this.§"X§.removeEventListener(Event.CANCEL,this.§5!G§);
         }
         §'!V§.§1!2§.§?m§(true);
         §1^§.§3W§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§%!f§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§4![§ > §#_§)
         {
            §+!$§.getItemByName("Button_Skip").setVisibility(true);
            this.§;!9§ += param1 / 1000;
            §+!$§.getItemByName("Button_Skip").mClip.alpha = this.§;!9§;
            if(this.§;!9§ > 1)
            {
               this.§;!9§ = 1;
            }
         }
         else
         {
            this.§4![§ += param1;
         }
         if(this.§%!f§)
         {
            this.end();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         if(this.§9-§ && !this.§9-§.update(param1))
         {
            this.end();
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§9-§ && this.§9-§.§+G§ == §6R§.§4!0§)
         {
            §?&§.§3d§ = StateCutScene.STATE_NAME;
            mNextState = §?&§.STATE_NAME;
         }
         else if(this.§9-§ && this.§9-§.§+G§ == §6R§.§!!J§)
         {
            mNextState = §?!M§.STATE_NAME;
         }
         else
         {
            _loc1_ = §1^§.§ ]§;
            if(_loc1_)
            {
               mNextState = this.§0H§();
            }
            else
            {
               mNextState = §?&§.STATE_NAME;
            }
         }
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
   }
}
