package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §!!^§.§-^§;
   import §!!^§.§2_§;
   import §&<§.§^!#§;
   import §-!Y§.§%!%§;
   import §-!b§.§0!D§;
   import §-!b§.§[E§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import flash.events.Event;
   
   public class StateCutScene extends §3!3§
   {
      
      public static const §7w§:String = "StateCutScene";
      
      private static const §-!0§:Number = 500;
       
      
      private var §&!7§:§2_§;
      
      private var §-!^§:Boolean;
      
      private var §<!D§:Number = 0;
      
      private var §^"%§:Number = 0;
      
      protected var §&"3§:§0!D§;
      
      public function StateCutScene(param1:§ q§, param2:§>u§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §0<§() : §2_§
      {
         return this.§&!7§;
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_CutScene[0]);
      }
      
      protected function §`!S§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§&"3§)
            {
               § !z§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§&"3§.removeEventListener(Event.COMPLETE,this.§^!Z§);
               this.§&"3§.removeEventListener(Event.CANCEL,this.§?9§);
               this.§&"3§.addEventListener(Event.COMPLETE,this.§^!Z§);
               this.§&"3§.addEventListener(Event.CANCEL,this.§?9§);
               this.loadCutSceneContent(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function loadCutSceneContent(param1:String) : void
      {
         this.§&"3§.loadContent("cutscene_" + param1);
      }
      
      protected function §^!Z§(param1:Event) : void
      {
         if(this.§&"3§)
         {
            this.§&"3§.removeEventListener(Event.COMPLETE,this.§^!Z§);
            this.§&"3§.removeEventListener(Event.CANCEL,this.§?9§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         § !z§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§[E§ = §[E§.§<"5§;
         if(this.§&"3§)
         {
            _loc2_ = this.§&"3§.§0p§;
         }
         this.§&!7§ = §-^§.§,r§(_loc1_,_loc2_);
         if(this.§&!7§)
         {
            §-!I§.§[f§.§?4§.userProgress.§!!c§(_loc1_);
            §6!E§.§7I§.§'F§(true);
            §6!E§.§7I§.§8w§(false);
            this.§&!7§.update(0);
            §6!E§.§7I§.§#Q§.addChild(this.§&!7§.sprite);
         }
      }
      
      protected function §?9§(param1:Event) : void
      {
         if(this.§&"3§)
         {
            this.§&"3§.removeEventListener(Event.COMPLETE,this.§^!Z§);
            this.§&"3§.removeEventListener(Event.CANCEL,this.§?9§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.clearLevel();
         §6!E§.§7I§.§'F§(false);
         if(!this.§&"3§)
         {
            this.§&"3§ = §6!E§.§7I§.§+!z§;
         }
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.color = 0;
         }
         this.§<!D§ = 0;
         this.§^"%§ = 0;
         § !z§.getItemByName("Button_Skip").setVisibility(false);
         § !z§.getItemByName("Button_Skip").mClip.alpha = this.§<!D§;
         §-!I§.§[f§.§4@§();
         this.§-!^§ = false;
         § !z§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§`!S§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §="4§.previousLevel;
         var _loc2_:String = §="4§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §="4§.currentLevel;
            _loc2_ = §="4§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§&!7§)
         {
            §6!E§.§7I§.§#Q§.removeChild(this.§&!7§.sprite);
            this.§&!7§.dispose();
            this.§&!7§ = null;
         }
         if(this.§&"3§)
         {
            this.§&"3§.removeEventListener(Event.COMPLETE,this.§^!Z§);
            this.§&"3§.removeEventListener(Event.CANCEL,this.§?9§);
         }
         §6!E§.§7I§.§8w§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§-!^§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§^"%§ > §-!0§)
         {
            § !z§.getItemByName("Button_Skip").setVisibility(true);
            this.§<!D§ += param1 / 1000;
            § !z§.getItemByName("Button_Skip").mClip.alpha = this.§<!D§;
            if(this.§<!D§ > 1)
            {
               this.§<!D§ = 1;
            }
         }
         else
         {
            this.§^"%§ += param1;
         }
         if(this.§-!^§ || this.§&!7§ && !this.§&!7§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§&"3§)
         {
            this.§&"3§.removeEventListener(Event.COMPLETE,this.§^!Z§);
            this.§&"3§.removeEventListener(Event.CANCEL,this.§?9§);
         }
         if(this.§&!7§ && this.§&!7§.§+]§ == §2_§.§#c§)
         {
            §^!+§.§1!0§ = StateCutScene.§7w§;
            §?n§(§^!+§.§7w§);
         }
         else if(this.§&!7§ && this.§&!7§.§+]§ == §2_§.§=m§)
         {
            §?n§(§ !S§.§7w§);
         }
         else
         {
            _loc1_ = §="4§.currentLevel;
            if(_loc1_)
            {
               §?n§(this.§8"0§());
            }
            else
            {
               §?n§(this.§-e§);
            }
         }
      }
      
      protected function get §-e§() : String
      {
         return §^!+§.§7w§;
      }
      
      protected function §8"0§() : String
      {
         return §4!R§.§7w§;
      }
   }
}
