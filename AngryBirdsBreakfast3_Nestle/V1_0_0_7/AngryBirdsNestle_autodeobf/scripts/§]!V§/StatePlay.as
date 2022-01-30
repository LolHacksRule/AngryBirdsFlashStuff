package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §'H§.§[0§;
   import §1F§.§@o§;
   import §3@§.§`!h§;
   import §8"!§.§=""§;
   import §9!Q§.§"!q§;
   import §9!Q§.§1§;
   import §;s§.§%!c§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §`"%§
   {
      
      public static const §+a§:String = "StatePlay";
       
      
      protected var §&"6§:§1§;
      
      protected var §<!k§:§"!q§;
      
      public function StatePlay(param1:§5!1§, param2:§&S§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §`;§() : §1§
      {
         return this.§&"6§;
      }
      
      override protected function init() : void
      {
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §<"4§() : void
      {
         this.§&!Q§();
         this.§>!§();
         this.§&!<§();
      }
      
      protected function §`!r§() : void
      {
         this.§]3§();
         if(this.§&"6§)
         {
            this.§&"6§.dispose();
            this.§&"6§ = null;
         }
         if(this.§<!k§)
         {
            this.§<!k§.dispose();
            this.§<!k§ = null;
         }
      }
      
      protected function §&!Q§() : void
      {
         var _loc1_:§`!h§ = §,!X§.§>!G§.§>!I§;
         var _loc2_:§]"4§ = §]"4§(§5+§.getItemByName("Container_Pause"));
         this.§<!k§ = new §=""§(_loc2_,§97§,_loc1_,§-F§);
      }
      
      protected function §>!§() : void
      {
         var _loc1_:§`!h§ = §,!X§.§>!G§.§>!I§;
         var _loc2_:§]"4§ = §]"4§(§5+§.getItemByName("Container_Play"));
         this.§&"6§ = new §@o§(_loc2_,§97§,§=e§,_loc1_,§-F§);
      }
      
      protected function §&!<§() : void
      {
         this.§<!k§.addEventListener(§[0§.§"p§,this.§&]§);
         this.§<!k§.addEventListener(§[0§.§+§,this.§&]§);
         this.§<!k§.addEventListener(§[0§.RESTART_LEVEL,this.§&]§);
         this.§<!k§.addEventListener(§[0§.RESUME_LEVEL,this.§&]§);
         this.§&"6§.addEventListener(§[0§.§+§,this.§&]§);
         this.§&"6§.addEventListener(§[0§.RESTART_LEVEL,this.§&]§);
         this.§&"6§.addEventListener(§[0§.RESUME_LEVEL,this.§&]§);
         this.§&"6§.addEventListener(§[0§.§"!<§,this.§&]§);
      }
      
      protected function §]3§() : void
      {
         this.§<!k§.removeEventListener(§[0§.§"p§,this.§&]§);
         this.§<!k§.removeEventListener(§[0§.§+§,this.§&]§);
         this.§<!k§.removeEventListener(§[0§.RESTART_LEVEL,this.§&]§);
         this.§<!k§.removeEventListener(§[0§.RESUME_LEVEL,this.§&]§);
         this.§&"6§.removeEventListener(§[0§.§+§,this.§&]§);
         this.§&"6§.removeEventListener(§[0§.RESTART_LEVEL,this.§&]§);
         this.§&"6§.removeEventListener(§[0§.RESUME_LEVEL,this.§&]§);
         this.§&"6§.removeEventListener(§[0§.§"!<§,this.§&]§);
      }
      
      override protected function levelStarted() : void
      {
         this.§5!Z§();
         super.levelStarted();
         this.§^"5§();
      }
      
      protected function §5!Z§() : void
      {
         §%!c§.§0O§();
      }
      
      protected function §^"5§() : void
      {
         §%!c§.§!c§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§<"4§();
         this.§4!K§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§`!r§();
         §,!X§.§>!G§.§=q§ = false;
         super.deActivate();
      }
      
      protected function §4!K§(param1:Boolean, param2:Boolean = true) : void
      {
         §,!X§.§>!G§.§=q§ = param1;
         if(param1)
         {
            this.§&"6§.disable(param2);
            this.§<!k§.enable(param2);
         }
         else
         {
            this.§&"6§.enable(param2);
            this.§<!k§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§&"6§ && this.§&"6§.§%&§())
         {
            this.§&"6§.update(param1);
         }
         if(this.§<!k§ && this.§<!k§.§%&§())
         {
            this.§<!k§.update(param1);
         }
      }
      
      protected function §&]§(param1:§[0§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §[0§.§"p§:
               break;
            case §[0§.§"!<§:
               this.§4!K§(true);
               break;
            case §[0§.RESUME_LEVEL:
               this.§4!K§(false);
               break;
            case §[0§.RESTART_LEVEL:
               this.§"! §();
               break;
            case §[0§.§+§:
               _loc2_ = param1.§+!+§;
               §8!`§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§`;§.isEagleUsed())
         {
            return §`!&§.§+a§;
         }
         return §3"&§.§+a§;
      }
      
      override public function getLoserStateName() : String
      {
         return §6J§.§+a§;
      }
      
      protected function §>!O§() : String
      {
         return §5!h§.§+a§;
      }
      
      protected function §"! §() : void
      {
         §8!`§(this.§>!O§());
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§#Z§.isPaused)
               {
                  this.§"! §();
                  break;
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§#Z§.§?!,§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §8!`§(this.§>!O§());
                  break;
               case Keyboard.NUMBER_6:
                  §8!`§(this.§>!O§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
   }
}
