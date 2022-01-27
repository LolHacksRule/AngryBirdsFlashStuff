package §9%§
{
   import §%"%§.§2Z§;
   import §'!B§.§8T§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §7!6§.§@Y§;
   import §9!v§.§-!^§;
   import §9!v§.§6a§;
   import §>"2§.§8k§;
   import §`!`§.§-"B§;
   import §`!`§.§9"G§;
   import flash.events.Event;
   
   public class StateCutScene extends §>!s§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §else§:Number = 500;
       
      
      private var §""%§:§9"G§;
      
      private var §?z§:Boolean;
      
      private var §=f§:Number = 0;
      
      private var §[O§:Number = 0;
      
      protected var § "2§:§-!^§;
      
      public function StateCutScene(param1:§^!@§, param2:§2Z§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_CutScene[0]);
      }
      
      protected function §"E§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§ "2§)
            {
               §%!A§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§ "2§.removeEventListener(Event.COMPLETE,this.§7n§);
               this.§ "2§.removeEventListener(Event.CANCEL,this.§-c§);
               this.§ "2§.addEventListener(Event.COMPLETE,this.§7n§);
               this.§ "2§.addEventListener(Event.CANCEL,this.§-c§);
               this.§ "2§.§?">§("cutscene_" + param1);
            }
            else
            {
               this.§]o§();
            }
            return true;
         }
         return false;
      }
      
      private function §7n§(param1:Event) : void
      {
         if(this.§ "2§)
         {
            this.§ "2§.removeEventListener(Event.COMPLETE,this.§7n§);
            this.§ "2§.removeEventListener(Event.CANCEL,this.§-c§);
            this.§]o§();
         }
      }
      
      protected function §]o§() : void
      {
         §%!A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§^5§();
         var _loc2_:§6a§ = §6a§.§3R§;
         if(this.§ "2§)
         {
            _loc2_ = this.§ "2§.textureManager;
         }
         this.§""%§ = §-"B§.§`!k§(_loc1_,_loc2_);
         if(this.§""%§)
         {
            §2&§.§6o§.§2c§.userProgress.§?T§(_loc1_);
            §8k§.§;!]§.§#5§(true);
            §8k§.§;!]§.§6n§(false);
            this.§""%§.update(0);
            §8k§.§;!]§.§@!-§.addChild(this.§""%§.sprite);
         }
      }
      
      protected function §-c§(param1:Event) : void
      {
         if(this.§ "2§)
         {
            this.§ "2§.removeEventListener(Event.COMPLETE,this.§7n§);
            this.§ "2§.removeEventListener(Event.CANCEL,this.§-c§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8k§.§;!]§.clearLevel();
         §8k§.§;!]§.§#5§(false);
         if(!this.§ "2§)
         {
            this.§ "2§ = §8k§.§;!]§.§ !Y§;
         }
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.color = 0;
         }
         this.§=f§ = 0;
         this.§[O§ = 0;
         §%!A§.getItemByName("Button_Skip").setVisibility(false);
         §%!A§.getItemByName("Button_Skip").mClip.alpha = this.§=f§;
         §2&§.§6o§.§6I§();
         this.§?z§ = false;
         §%!A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.§^5§();
         if(!this.§"E§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function §^5§() : String
      {
         var _loc1_:String = §#"=§.previousLevel;
         var _loc2_:String = §#"=§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §#"=§.currentLevel;
            _loc2_ = §#"=§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§""%§)
         {
            §8k§.§;!]§.§@!-§.removeChild(this.§""%§.sprite);
            this.§""%§.dispose();
            this.§""%§ = null;
         }
         if(this.§ "2§)
         {
            this.§ "2§.removeEventListener(Event.COMPLETE,this.§7n§);
            this.§ "2§.removeEventListener(Event.CANCEL,this.§-c§);
         }
         §8k§.§;!]§.§6n§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§?z§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§[O§ > §else§)
         {
            §%!A§.getItemByName("Button_Skip").setVisibility(true);
            this.§=f§ += param1 / 1000;
            §%!A§.getItemByName("Button_Skip").mClip.alpha = this.§=f§;
            if(this.§=f§ > 1)
            {
               this.§=f§ = 1;
            }
         }
         else
         {
            this.§[O§ += param1;
         }
         if(this.§?z§ || this.§""%§ && !this.§""%§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§ "2§)
         {
            this.§ "2§.removeEventListener(Event.COMPLETE,this.§7n§);
            this.§ "2§.removeEventListener(Event.CANCEL,this.§-c§);
         }
         if(this.§""%§ && this.§""%§.§?!u§ == §9"G§.§]"0§)
         {
            § §.§7"+§ = StateCutScene.STATE_NAME;
            § !I§(§ §.STATE_NAME);
         }
         else if(this.§""%§ && this.§""%§.§?!u§ == §9"G§.§7"$§)
         {
            § !I§(§2w§.STATE_NAME);
         }
         else
         {
            _loc1_ = §#"=§.currentLevel;
            if(_loc1_)
            {
               § !I§(this.§7T§());
            }
            else
            {
               § !I§(§ §.STATE_NAME);
            }
         }
      }
      
      protected function §7T§() : String
      {
         return §^! §.STATE_NAME;
      }
   }
}
