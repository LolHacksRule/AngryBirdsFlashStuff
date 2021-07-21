package § true§
{
   import §#?§.§%!5§;
   import §#?§.§6!4§;
   import §,!,§.§2t§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import §`@§.§#!G§;
   import §`@§.§@6§;
   import flash.events.Event;
   
   public class StateCutScene extends §,!?§
   {
      
      public static const §`W§:String = "StateCutScene";
      
      private static const § Y§:Number = 500;
      
      protected static var §0!E§:Boolean;
      
      protected static var §"Q§:int;
       
      
      protected var §2=§:§#!G§;
      
      private var §&3§:Boolean;
      
      private var §,h§:Number = 0;
      
      private var §;"§:Number = 0;
      
      private var §!!D§:§%!5§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §@t§(param1:Boolean, param2:int = -2147483648) : void
      {
         §0!E§ = param1;
         §"Q§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_CutScene[0]);
      }
      
      protected function §0!K§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§!!D§)
            {
               §while§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§!!D§.removeEventListener(Event.COMPLETE,this.§5x§);
               this.§!!D§.removeEventListener(Event.CANCEL,this.§@U§);
               this.§!!D§.addEventListener(Event.COMPLETE,this.§5x§);
               this.§!!D§.addEventListener(Event.CANCEL,this.§@U§);
               this.§!!D§.§=!4§("cutscene_" + param1);
            }
            else
            {
               this.§1_§();
            }
            return true;
         }
         return false;
      }
      
      private function §5x§(param1:Event) : void
      {
         if(this.§!!D§)
         {
            this.§!!D§.removeEventListener(Event.COMPLETE,this.§5x§);
            this.§!!D§.removeEventListener(Event.CANCEL,this.§@U§);
            this.§1_§();
         }
      }
      
      protected function §1_§() : void
      {
         §while§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§]T§();
         var _loc2_:§6!4§ = §6!4§.§;R§;
         if(this.§!!D§)
         {
            _loc2_ = this.§!!D§.textureManager;
         }
         this.§2=§ = §@6§.§?4§(_loc1_,_loc2_);
         if(this.§2=§)
         {
            AngryBirdsFP11.sUserProgress.§!w§(_loc1_);
            §[+§.§,!&§.§`9§(true);
            §[+§.§,!&§.§7T§(false);
            this.§2=§.update(0);
            §[+§.§,!&§.§^C§.addChild(this.§2=§.sprite);
         }
      }
      
      protected function §@U§(param1:Event) : void
      {
         if(this.§!!D§)
         {
            this.§!!D§.removeEventListener(Event.COMPLETE,this.§5x§);
            this.§!!D§.removeEventListener(Event.CANCEL,this.§@U§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§!!D§)
         {
            this.§!!D§ = §[+§.§,!&§.§1-§;
         }
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.color = 0;
         }
         this.§,h§ = 0;
         this.§;"§ = 0;
         §while§.getItemByName("Button_Skip").setVisibility(false);
         §while§.getItemByName("Button_Skip").mClip.alpha = this.§,h§;
         AngryBirdsFP11.§]-§();
         this.§&3§ = false;
         §while§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§]T§();
         if(!this.§0!K§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §]T§() : String
      {
         var _loc1_:String = §`R§.§[D§;
         var _loc2_:String = §`R§.§7!!§().§8z§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §`R§.§7S§;
            _loc2_ = §`R§.§7!!§().§8z§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§2=§)
         {
            §[+§.§,!&§.§^C§.removeChild(this.§2=§.sprite);
            this.§2=§.dispose();
            this.§2=§ = null;
         }
         if(this.§!!D§)
         {
            this.§!!D§.removeEventListener(Event.COMPLETE,this.§5x§);
            this.§!!D§.removeEventListener(Event.CANCEL,this.§@U§);
         }
         §[+§.§,!&§.§7T§(true);
         §`R§.§[D§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§&3§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§;"§ > § Y§)
         {
            §while§.getItemByName("Button_Skip").setVisibility(!§0!E§);
            this.§,h§ += param1 / 1000;
            §while§.getItemByName("Button_Skip").mClip.alpha = this.§,h§;
            if(this.§,h§ > 1)
            {
               this.§,h§ = 1;
            }
         }
         else
         {
            this.§;"§ += param1;
         }
         if(this.§&3§)
         {
            this.end();
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         if(!§0!E§)
         {
            if(this.§2=§ && !this.§2=§.update(param1))
            {
               this.end();
            }
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§2=§ && this.§2=§.§<!G§ == §#!G§.§switch§)
         {
            §&!F§.§;!C§ = StateCutScene.§`W§;
            mNextState = this.§#d§();
         }
         else if(this.§2=§ && this.§2=§.§<!G§ == §#!G§.§![§)
         {
            mNextState = §>x§.§`W§;
         }
         else
         {
            _loc1_ = §`R§.§7S§;
            if(_loc1_)
            {
               mNextState = this.§6F§();
            }
            else
            {
               mNextState = this.§#d§();
            }
         }
         §@t§(false);
      }
      
      protected function §#d§() : String
      {
         return §&!F§.§`W§;
      }
      
      protected function §6F§() : String
      {
         return §case §.§`W§;
      }
   }
}
