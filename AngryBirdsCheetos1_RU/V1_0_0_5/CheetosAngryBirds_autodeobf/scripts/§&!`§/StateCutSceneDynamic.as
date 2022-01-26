package §&!`§
{
   import § =§.§ x§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §0C§.§"!T§;
   import §4!§.§5&§;
   import §4!§.§9U§;
   import §9$§.§;!K§;
   import §;C§.§5!O§;
   import §<s§.§]@§;
   import §[%§.§=!M§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends § x§
   {
      
      public static const §="§:String = "StateCutSceneDynamic";
      
      private static const §"j§:Number = 2000;
      
      private static var §]N§:Boolean = true;
      
      private static const § !'§:String = "flash/external_assets/dynamic/";
       
      
      private var §]j§:Boolean;
      
      private var §!!&§:Dictionary;
      
      private var §%I§:String;
      
      private var §<!M§:§5&§ = null;
      
      private var § `§:MovieClip = null;
      
      private var §<Y§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §5!+§() : void
      {
         if(§5!O§.§?4§("Channel_Theme") == null || !§5!O§.§?4§("Channel_Theme").§6!3§())
         {
            §5!O§.§-q§("birds_intro","Channel_Theme",100);
         }
      }
      
      public static function §+!C§() : void
      {
         if(§5!O§.§?4§("Channel_Theme"))
         {
            §5!O§.§?4§("Channel_Theme").§ for§();
         }
      }
      
      public static function set §5L§(param1:Boolean) : void
      {
         §]N§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_CutScene[0]);
         this.§!!&§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<Y§ = false;
         §3§.§^!_§();
         this.§]j§ = false;
         var _loc1_:String = this.§6&§();
         if(_loc1_)
         {
            if(!this.§!!&§[this.§%I§])
            {
               this.§^!#§(_loc1_);
            }
            else
            {
               this.§ `§ = this.§!!&§[this.§%I§];
               this.play();
            }
         }
         else
         {
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         §^!]§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§]j§)
         {
            this.end();
            return § x§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+d§(§^!]§.getItemByName("MovieClip_CutScene") as §=!M§,param1);
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      private function §+d§(param1:§=!M§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§<Y§ && param1.§6!3§ == true)
         {
            _loc3_ = param1.§<'§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§6!3§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §5!+§();
         this.§<Y§ = true;
         §^!]§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§ `§);
         (§^!]§.getItemByName("MovieClip_CutScene") as §=!M§).§&!'§("Start");
         §^!]§.getItemByName("MovieClip_Loading").setVisibility(false);
         §^!]§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§^!]§.getItemByName("MovieClip_CutScene") as §=!M§).§6!3§ = true;
      }
      
      private function end() : void
      {
         §+!C§();
         mNextState = §8!@§.§="§;
         if(§;!K§.override(§"!T§.§-Q§))
         {
            mNextState = §8!@§.§="§;
         }
         else
         {
            mNextState = §4q§.§="§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^!]§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §^!]§.getItemByName("MovieClip_Loading").setVisibility(false);
         §^!]§.getItemByName("Button_Skip").setVisibility(false);
         if(this.§<!M§)
         {
            this.§<!M§.dispose();
            this.§<!M§.removeEventListener(§9U§.§[Y§,this.§9!G§);
            this.§<!M§.removeEventListener(§9U§.§?W§,this.§6R§);
            this.§<!M§.removeEventListener(§9U§.§>4§,this.§=L§);
            this.§<!M§ = null;
         }
         §3>§.§8!$§.§&f§(true);
         §"!T§.§8y§ = null;
         §]N§ = false;
         (§^!]§.getItemByName("MovieClip_CutScene") as §=!M§).§&!'§("Start");
         §"!T§.§8y§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§]j§ = true;
         }
      }
      
      private function §^!#§(param1:String) : void
      {
         this.§<!M§ = new §5&§();
         this.§<!M§.addEventListener(§9U§.§[Y§,this.§9!G§);
         this.§<!M§.addEventListener(§9U§.§?W§,this.§6R§);
         this.§<!M§.addEventListener(§9U§.§>4§,this.§=L§);
         if(!this.§<!M§.load(§ !'§ + param1))
         {
            this.end();
         }
      }
      
      private function §9!G§(param1:§9U§) : void
      {
         this.§!!&§[this.§%I§] = this.§<!M§.content;
         this.§ `§ = this.§!!&§[this.§%I§];
         this.play();
      }
      
      private function §6R§(param1:§9U§) : void
      {
         this.end();
      }
      
      private function §=L§(param1:§9U§) : void
      {
         §^!]§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §6&§() : String
      {
         this.§%I§ = §"!T§.§8y§;
         if(this.§%I§ == null)
         {
            this.§%I§ = §"!T§.§-Q§;
         }
         if(§]N§)
         {
            this.§%I§ += "-INTRO";
         }
         else
         {
            this.§%I§ += "-OUTRO";
         }
         return §"!T§.§?+§().§"!Y§(this.§%I§);
      }
   }
}
