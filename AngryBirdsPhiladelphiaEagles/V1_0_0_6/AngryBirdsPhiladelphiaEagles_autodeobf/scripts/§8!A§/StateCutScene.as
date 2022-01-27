package §8!A§
{
   import §!!0§.§ true§;
   import §#R§.§0I§;
   import §#R§.§?x§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §4!0§.§3§;
   import §4!0§.§]u§;
   import §4M§.;
   import §4M§.§^'§;
   import §;!!§.§0H§;
   import §@g§.§4!@§;
   import flash.events.Event;
   
   public class StateCutScene extends §0H§
   {
      
      public static const §2`§:String = "StateCutScene";
      
      private static const §6e§:Number = 500;
       
      
      private var §&d§:§?x§;
      
      private var §&R§:Boolean;
      
      private var §]n§:Number = 0;
      
      private var §<g§:Number = 0;
      
      private var §`H§:§]u§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_CutScene[0]);
      }
      
      protected function §>]§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§`H§)
            {
               §<A§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§`H§.removeEventListener(Event.COMPLETE,this.§@!<§);
               this.§`H§.removeEventListener(Event.CANCEL,this.§?M§);
               this.§`H§.addEventListener(Event.COMPLETE,this.§@!<§);
               this.§`H§.addEventListener(Event.CANCEL,this.§?M§);
               this.§`H§.§;a§("cutscene_" + param1);
            }
            else
            {
               this.§5J§();
            }
            return true;
         }
         return false;
      }
      
      private function §@!<§(param1:Event) : void
      {
         if(this.§`H§)
         {
            this.§`H§.removeEventListener(Event.COMPLETE,this.§@!<§);
            this.§`H§.removeEventListener(Event.CANCEL,this.§?M§);
            this.§5J§();
         }
      }
      
      private function §5J§() : void
      {
         §<A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§%e§();
         var _loc2_:§3§ = §3§.§<"§;
         if(this.§`H§)
         {
            _loc2_ = this.§`H§.textureManager;
         }
         this.§&d§ = §0I§.§?!K§(_loc1_,_loc2_);
         if(this.§&d§)
         {
            AngryBirdsFP11.§ !-§.§]-§(_loc1_);
            §[F§.§9u§.§#Q§(true);
            §[F§.§9u§.§@!4§(false);
            this.§&d§.update(0);
            §[F§.§9u§.§43§.addChild(this.§&d§.sprite);
         }
      }
      
      protected function §?M§(param1:Event) : void
      {
         if(this.§`H§)
         {
            this.§`H§.removeEventListener(Event.COMPLETE,this.§@!<§);
            this.§`H§.removeEventListener(Event.CANCEL,this.§?M§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§`H§)
         {
            this.§`H§ = §[F§.§9u§.§@!%§;
         }
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.color = 0;
         }
         this.§]n§ = 0;
         this.§<g§ = 0;
         §<A§.getItemByName("Button_Skip").setVisibility(false);
         §<A§.getItemByName("Button_Skip").mClip.alpha = this.§]n§;
         AngryBirdsFP11.§2!7§();
         this.§&R§ = false;
         §<A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§%e§();
         if(!this.§>]§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §%e§() : String
      {
         var _loc1_:String = §2h§.§^B§;
         var _loc2_:String = §2h§.§4m§().§68§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §2h§.§,!P§;
            _loc2_ = §2h§.§4m§().§68§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§&d§)
         {
            §[F§.§9u§.§43§.removeChild(this.§&d§.sprite);
            this.§&d§.dispose();
            this.§&d§ = null;
         }
         if(this.§`H§)
         {
            this.§`H§.removeEventListener(Event.COMPLETE,this.§@!<§);
            this.§`H§.removeEventListener(Event.CANCEL,this.§?M§);
         }
         §[F§.§9u§.§@!4§(true);
         §2h§.§^B§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§&R§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§<g§ > §6e§)
         {
            §<A§.getItemByName("Button_Skip").setVisibility(true);
            this.§]n§ += param1 / 1000;
            §<A§.getItemByName("Button_Skip").mClip.alpha = this.§]n§;
            if(this.§]n§ > 1)
            {
               this.§]n§ = 1;
            }
         }
         else
         {
            this.§<g§ += param1;
         }
         if(this.§&R§)
         {
            this.end();
            return §0H§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         if(this.§&d§ && !this.§&d§.update(param1))
         {
            this.end();
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§&d§ && this.§&d§.§95§ == §?x§.§[!8§)
         {
            §6!C§.§<!M§ = StateCutScene.§2`§;
            mNextState = §6!C§.§2`§;
         }
         else if(this.§&d§ && this.§&d§.§95§ == §?x§.§9!4§)
         {
            mNextState = §4!?§.§2`§;
         }
         else
         {
            _loc1_ = §2h§.§,!P§;
            if(_loc1_)
            {
               mNextState = this.§6u§();
            }
            else
            {
               mNextState = §6!C§.§2`§;
            }
         }
      }
      
      protected function §6u§() : String
      {
         return §#u§.§2`§;
      }
   }
}
