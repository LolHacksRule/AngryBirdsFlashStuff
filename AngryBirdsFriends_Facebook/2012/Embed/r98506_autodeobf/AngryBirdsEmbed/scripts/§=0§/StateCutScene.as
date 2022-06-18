package §=0§
{
   import §"a§.§>X§;
   import §"a§.§`9§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §8!G§.§-Z§;
   import §;%§.§8o§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §]f§.§06§;
   import §]f§.§;,§;
   import §`t§.§^?§;
   import flash.events.Event;
   
   public class StateCutScene extends §`U§
   {
      
      public static const §?1§:String = "StateCutScene";
      
      private static const §#!9§:Number = 500;
       
      
      private var §;0§:§;,§;
      
      private var §6!7§:Boolean;
      
      private var §<s§:Number = 0;
      
      private var §5!@§:Number = 0;
      
      private var §#K§:§`9§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_CutScene[0]);
      }
      
      protected function §[n§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§#K§)
            {
               §4G§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§#K§.removeEventListener(Event.COMPLETE,this.§;R§);
               this.§#K§.removeEventListener(Event.CANCEL,this.§5R§);
               this.§#K§.addEventListener(Event.COMPLETE,this.§;R§);
               this.§#K§.addEventListener(Event.CANCEL,this.§5R§);
               this.§#K§.§=!J§("cutscene_" + param1);
            }
            else
            {
               this.§4!4§();
            }
            return true;
         }
         return false;
      }
      
      private function §;R§(param1:Event) : void
      {
         if(this.§#K§)
         {
            this.§#K§.removeEventListener(Event.COMPLETE,this.§;R§);
            this.§#K§.removeEventListener(Event.CANCEL,this.§5R§);
            this.§4!4§();
         }
      }
      
      private function §4!4§() : void
      {
         §4G§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§>!+§();
         var _loc2_:§>X§ = §>X§.§72§;
         if(this.§#K§)
         {
            _loc2_ = this.§#K§.textureManager;
         }
         this.§;0§ = §06§.§]!#§(_loc1_,_loc2_);
         if(this.§;0§)
         {
            AngryBirdsFP11.sUserProgress.§]!I§(_loc1_);
            §^?§.§]!%§.§ U§(true);
            §^?§.§]!%§.§%0§(false);
            this.§;0§.update(0);
            §^?§.§]!%§.§0!;§.addChild(this.§;0§.sprite);
         }
      }
      
      protected function §5R§(param1:Event) : void
      {
         if(this.§#K§)
         {
            this.§#K§.removeEventListener(Event.COMPLETE,this.§;R§);
            this.§#K§.removeEventListener(Event.CANCEL,this.§5R§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§#K§)
         {
            this.§#K§ = §^?§.§]!%§.§&"§;
         }
         if(§8o§.§5J§)
         {
            §8o§.§5J§.color = 0;
         }
         this.§<s§ = 0;
         this.§5!@§ = 0;
         §4G§.getItemByName("Button_Skip").setVisibility(false);
         §4G§.getItemByName("Button_Skip").mClip.alpha = this.§<s§;
         AngryBirdsFP11.§[&§();
         this.§6!7§ = false;
         §4G§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§>!+§();
         if(!this.§[n§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §>!+§() : String
      {
         var _loc1_:String = §-Z§.§,!#§;
         var _loc2_:String = §-Z§.§?!!§().§3A§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §-Z§.§%s§;
            _loc2_ = §-Z§.§?!!§().§3A§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§;0§)
         {
            §^?§.§]!%§.§0!;§.removeChild(this.§;0§.sprite);
            this.§;0§.dispose();
            this.§;0§ = null;
         }
         if(this.§#K§)
         {
            this.§#K§.removeEventListener(Event.COMPLETE,this.§;R§);
            this.§#K§.removeEventListener(Event.CANCEL,this.§5R§);
         }
         §^?§.§]!%§.§%0§(true);
         §-Z§.§,!#§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§6!7§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§5!@§ > §#!9§)
         {
            §4G§.getItemByName("Button_Skip").setVisibility(true);
            this.§<s§ += param1 / 1000;
            §4G§.getItemByName("Button_Skip").mClip.alpha = this.§<s§;
            if(this.§<s§ > 1)
            {
               this.§<s§ = 1;
            }
         }
         else
         {
            this.§5!@§ += param1;
         }
         if(this.§6!7§)
         {
            this.end();
            return §`U§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         if(this.§;0§ && !this.§;0§.update(param1))
         {
            this.end();
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§;0§ && this.§;0§.§%!9§ == §;,§.§6V§)
         {
            §33§.§3d§ = StateCutScene.§?1§;
            mNextState = §33§.§?1§;
         }
         else if(this.§;0§ && this.§;0§.§%!9§ == §;,§.§+C§)
         {
            mNextState = §%!$§.§?1§;
         }
         else
         {
            _loc1_ = §-Z§.§%s§;
            if(_loc1_)
            {
               mNextState = this.§;!<§();
            }
            else
            {
               mNextState = §33§.§?1§;
            }
         }
      }
      
      protected function §;!<§() : String
      {
         return § !2§.§?1§;
      }
   }
}
