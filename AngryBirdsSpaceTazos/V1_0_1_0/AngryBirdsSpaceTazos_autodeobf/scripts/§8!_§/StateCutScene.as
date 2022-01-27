package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §4&§.§ "E§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §5X§.§+!#§;
   import §?_§.§>",§;
   import §?_§.§^"4§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   
   public class StateCutScene extends §5!&§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §%!z§:Number = 500;
       
      
      private var §5?§:§>",§;
      
      private var §78§:Boolean;
      
      private var §07§:Number = 0;
      
      private var §%,§:Number = 0;
      
      protected var §,!g§:§ "E§;
      
      public function StateCutScene(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_CutScene[0]);
      }
      
      protected function §5!Z§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§,!g§)
            {
               §8!A§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§,!g§.removeEventListener(Event.COMPLETE,this.§7m§);
               this.§,!g§.removeEventListener(Event.CANCEL,this.§<!&§);
               this.§,!g§.addEventListener(Event.COMPLETE,this.§7m§);
               this.§,!g§.addEventListener(Event.CANCEL,this.§<!&§);
               this.§,!g§.§@t§("cutscene_" + param1);
            }
            else
            {
               this.§&g§();
            }
            return true;
         }
         return false;
      }
      
      private function §7m§(param1:Event) : void
      {
         if(this.§,!g§)
         {
            this.§,!g§.removeEventListener(Event.COMPLETE,this.§7m§);
            this.§,!g§.removeEventListener(Event.CANCEL,this.§<!&§);
            this.§&g§();
         }
      }
      
      protected function §&g§() : void
      {
         §8!A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§6,§();
         var _loc2_:§,C§ = §,C§.§[!1§;
         if(this.§,!g§)
         {
            _loc2_ = this.§,!g§.textureManager;
         }
         this.§5?§ = §^"4§.§]!b§(_loc1_,_loc2_);
         if(this.§5?§)
         {
            § !g§.§;!'§.§&!`§.userProgress.§=!=§(_loc1_);
            §9q§.§>!L§.§0!M§(true);
            §9q§.§>!L§.§1!L§(false);
            this.§5?§.update(0);
            §9q§.§>!L§.§5!`§.addChild(this.§5?§.sprite);
         }
      }
      
      protected function §<!&§(param1:Event) : void
      {
         if(this.§,!g§)
         {
            this.§,!g§.removeEventListener(Event.COMPLETE,this.§7m§);
            this.§,!g§.removeEventListener(Event.CANCEL,this.§<!&§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9q§.§>!L§.clearLevel();
         §9q§.§>!L§.§0!M§(false);
         if(!this.§,!g§)
         {
            this.§,!g§ = §9q§.§>!L§.§[!l§;
         }
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.color = 0;
         }
         this.§07§ = 0;
         this.§%,§ = 0;
         §8!A§.getItemByName("Button_Skip").setVisibility(false);
         §8!A§.getItemByName("Button_Skip").mClip.alpha = this.§07§;
         § !g§.§;!'§.§0!c§();
         this.§78§ = false;
         §8!A§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.§6,§();
         if(!this.§5!Z§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function §6,§() : String
      {
         var _loc1_:String = §6u§.previousLevel;
         var _loc2_:String = §6u§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §6u§.currentLevel;
            _loc2_ = §6u§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§5?§)
         {
            §9q§.§>!L§.§5!`§.removeChild(this.§5?§.sprite);
            this.§5?§.dispose();
            this.§5?§ = null;
         }
         if(this.§,!g§)
         {
            this.§,!g§.removeEventListener(Event.COMPLETE,this.§7m§);
            this.§,!g§.removeEventListener(Event.CANCEL,this.§<!&§);
         }
         §9q§.§>!L§.§1!L§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§78§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§%,§ > §%!z§)
         {
            §8!A§.getItemByName("Button_Skip").setVisibility(true);
            this.§07§ += param1 / 1000;
            §8!A§.getItemByName("Button_Skip").mClip.alpha = this.§07§;
            if(this.§07§ > 1)
            {
               this.§07§ = 1;
            }
         }
         else
         {
            this.§%,§ += param1;
         }
         if(this.§78§ || this.§5?§ && !this.§5?§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§,!g§)
         {
            this.§,!g§.removeEventListener(Event.COMPLETE,this.§7m§);
            this.§,!g§.removeEventListener(Event.CANCEL,this.§<!&§);
         }
         if(this.§5?§ && this.§5?§.§5"-§ == §>",§.§6!Z§)
         {
            §]J§.§6"?§ = StateCutScene.STATE_NAME;
            §8!^§(§]J§.STATE_NAME);
         }
         else if(this.§5?§ && this.§5?§.§5"-§ == §>",§.§]!W§)
         {
            §8!^§(§4!U§.STATE_NAME);
         }
         else
         {
            _loc1_ = §6u§.currentLevel;
            if(_loc1_)
            {
               §8!^§(this.§^!m§());
            }
            else
            {
               §8!^§(§]J§.STATE_NAME);
            }
         }
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
   }
}
