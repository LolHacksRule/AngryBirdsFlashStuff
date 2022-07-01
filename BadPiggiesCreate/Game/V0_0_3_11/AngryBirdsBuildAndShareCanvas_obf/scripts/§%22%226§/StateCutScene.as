package §""6§
{
   import §!-§.§%!#§;
   import §!-§.§1!P§;
   import §'x§.§?z§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §0P§.§!!l§;
   import §2!O§.§,w§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §[_§.§2!B§;
   import §[_§.§]#§;
   import flash.events.Event;
   
   public class StateCutScene extends §,w§
   {
      
      public static const §^z§:String = "StateCutScene";
      
      private static const §!!h§:Number = 500;
       
      
      private var §3S§:§1!P§;
      
      private var §+d§:Boolean;
      
      private var §#!j§:Number = 0;
      
      private var §0!x§:Number = 0;
      
      private var §';§:§]#§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_CutScene[0]);
      }
      
      protected function §;=§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§';§)
            {
               §%""§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§';§.removeEventListener(Event.COMPLETE,this.§94§);
               this.§';§.removeEventListener(Event.CANCEL,this.§@!&§);
               this.§';§.addEventListener(Event.COMPLETE,this.§94§);
               this.§';§.addEventListener(Event.CANCEL,this.§@!&§);
               this.§';§.§4!a§("cutscene_" + param1);
            }
            else
            {
               this.§5k§();
            }
            return true;
         }
         return false;
      }
      
      private function §94§(param1:Event) : void
      {
         if(this.§';§)
         {
            this.§';§.removeEventListener(Event.COMPLETE,this.§94§);
            this.§';§.removeEventListener(Event.CANCEL,this.§@!&§);
            this.§5k§();
         }
      }
      
      private function §5k§() : void
      {
         §%""§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§ !R§();
         var _loc2_:§2!B§ = §2!B§.§if §;
         if(this.§';§)
         {
            _loc2_ = this.§';§.§while§;
         }
         this.§3S§ = §%!#§.§`e§(_loc1_,_loc2_);
         if(this.§3S§)
         {
            AngryBirdsFP11.§8!I§.§ <§(_loc1_);
            §?z§.§=7§.§,L§(true);
            §?z§.§=7§.§3!'§(false);
            this.§3S§.update(0);
            §?z§.§=7§.§3-§.addChild(this.§3S§.sprite);
         }
      }
      
      protected function §@!&§(param1:Event) : void
      {
         if(this.§';§)
         {
            this.§';§.removeEventListener(Event.COMPLETE,this.§94§);
            this.§';§.removeEventListener(Event.CANCEL,this.§@!&§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§';§)
         {
            this.§';§ = §?z§.§=7§.§^!c§;
         }
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.color = 0;
         }
         this.§#!j§ = 0;
         this.§0!x§ = 0;
         §%""§.getItemByName("Button_Skip").setVisibility(false);
         §%""§.getItemByName("Button_Skip").mClip.alpha = this.§#!j§;
         AngryBirdsFP11.§>X§();
         this.§+d§ = false;
         §%""§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§ !R§();
         if(!this.§;=§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function § !R§() : String
      {
         var _loc1_:String = §+"%§.§%"'§;
         var _loc2_:String = §+"%§.§,!6§().§&h§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §+"%§.§9!'§;
            _loc2_ = §+"%§.§,!6§().§&h§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§3S§)
         {
            §?z§.§=7§.§3-§.removeChild(this.§3S§.sprite);
            this.§3S§.dispose();
            this.§3S§ = null;
         }
         if(this.§';§)
         {
            this.§';§.removeEventListener(Event.COMPLETE,this.§94§);
            this.§';§.removeEventListener(Event.CANCEL,this.§@!&§);
         }
         §?z§.§=7§.§3!'§(true);
         §+"%§.§%"'§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§+d§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§0!x§ > §!!h§)
         {
            §%""§.getItemByName("Button_Skip").setVisibility(true);
            this.§#!j§ += param1 / 1000;
            §%""§.getItemByName("Button_Skip").mClip.alpha = this.§#!j§;
            if(this.§#!j§ > 1)
            {
               this.§#!j§ = 1;
            }
         }
         else
         {
            this.§0!x§ += param1;
         }
         if(this.§+d§)
         {
            this.end();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         if(this.§3S§ && !this.§3S§.update(param1))
         {
            this.end();
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§3S§ && this.§3S§.§8K§ == §1!P§.§8^§)
         {
            §`!%§.§+!b§ = StateCutScene.§^z§;
            mNextState = §`!%§.§^z§;
         }
         else if(this.§3S§ && this.§3S§.§8K§ == §1!P§.§5!L§)
         {
            mNextState = §"!Y§.§^z§;
         }
         else
         {
            _loc1_ = §+"%§.§9!'§;
            if(_loc1_)
            {
               mNextState = this.§2!v§();
            }
            else
            {
               mNextState = §`!%§.§^z§;
            }
         }
      }
      
      protected function §2!v§() : String
      {
         return §!Z§.§^z§;
      }
   }
}
