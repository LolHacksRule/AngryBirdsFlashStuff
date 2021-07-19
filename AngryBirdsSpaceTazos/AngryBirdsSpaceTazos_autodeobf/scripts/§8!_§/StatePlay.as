package §8!_§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §+G§.§+f§;
   import §+u§.§&!o§;
   import §+u§.§["!§;
   import §,"&§.§9q§;
   import §2"H§.§`N§;
   import §3"#§.§<!O§;
   import §77§.§ ",§;
   import §^8§.§#h§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   
   public class StatePlay extends §="%§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §&j§:§&!o§;
      
      protected var §-'§:§["!§;
      
      public function StatePlay(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §-x§() : §&!o§
      {
         return this.§&j§;
      }
      
      override protected function init() : void
      {
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §!u§() : void
      {
         this.§9!y§();
         this.§="-§();
         this.§7J§();
      }
      
      protected function §;§() : void
      {
         this.§!!^§();
         if(this.§&j§)
         {
            this.§&j§.dispose();
            this.§&j§ = null;
         }
         if(this.§-'§)
         {
            this.§-'§.dispose();
            this.§-'§ = null;
         }
      }
      
      protected function §9!y§() : void
      {
         var _loc1_:§=!_§ = § !g§.§;!'§.§&!`§;
         var _loc2_:§ ",§ = § ",§(§8!A§.getItemByName("Container_Pause"));
         this.§-'§ = new §+f§(_loc2_,§6u§,_loc1_,§7Z§);
      }
      
      protected function §="-§() : void
      {
         var _loc1_:§=!_§ = § !g§.§;!'§.§&!`§;
         var _loc2_:§ ",§ = § ",§(§8!A§.getItemByName("Container_Play"));
         this.§&j§ = new §`N§(_loc2_,§6u§,§!K§,_loc1_,§7Z§);
      }
      
      protected function §7J§() : void
      {
         this.§-'§.addEventListener(§#h§.§ C§,this.§%"9§);
         this.§-'§.addEventListener(§#h§.§&C§,this.§%"9§);
         this.§-'§.addEventListener(§#h§.RESTART_LEVEL,this.§%"9§);
         this.§-'§.addEventListener(§#h§.RESUME_LEVEL,this.§%"9§);
         this.§&j§.addEventListener(§#h§.§&C§,this.§%"9§);
         this.§&j§.addEventListener(§#h§.RESTART_LEVEL,this.§%"9§);
         this.§&j§.addEventListener(§#h§.RESUME_LEVEL,this.§%"9§);
         this.§&j§.addEventListener(§#h§.§0"1§,this.§%"9§);
      }
      
      protected function §!!^§() : void
      {
         this.§-'§.removeEventListener(§#h§.§ C§,this.§%"9§);
         this.§-'§.removeEventListener(§#h§.§&C§,this.§%"9§);
         this.§-'§.removeEventListener(§#h§.RESTART_LEVEL,this.§%"9§);
         this.§-'§.removeEventListener(§#h§.RESUME_LEVEL,this.§%"9§);
         this.§&j§.removeEventListener(§#h§.§&C§,this.§%"9§);
         this.§&j§.removeEventListener(§#h§.RESTART_LEVEL,this.§%"9§);
         this.§&j§.removeEventListener(§#h§.RESUME_LEVEL,this.§%"9§);
         this.§&j§.removeEventListener(§#h§.§0"1§,this.§%"9§);
      }
      
      override protected function levelStarted() : void
      {
         §<!O§.§'N§();
         super.levelStarted();
         this.§4!H§();
      }
      
      protected function §4!H§() : void
      {
         §<!O§.§`h§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!u§();
         this.§!!c§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§;§();
         § !g§.§;!'§.§#!'§ = false;
         super.deActivate();
      }
      
      protected function §!!c§(param1:Boolean, param2:Boolean = true) : void
      {
         § !g§.§;!'§.§#!'§ = param1;
         if(param1)
         {
            this.§&j§.disable(param2);
            this.§-'§.enable(param2);
         }
         else
         {
            this.§&j§.enable(param2);
            this.§-'§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§&j§ && this.§&j§.§7!=§())
         {
            this.§&j§.update(param1);
         }
         if(this.§-'§ && this.§-'§.§7!=§())
         {
            this.§-'§.update(param1);
         }
      }
      
      protected function §%"9§(param1:§#h§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §#h§.§ C§:
               break;
            case §#h§.§0"1§:
               this.§!!c§(true);
               break;
            case §#h§.RESUME_LEVEL:
               this.§!!c§(false);
               break;
            case §#h§.RESTART_LEVEL:
               §8!^§(this.§`!e§());
               break;
            case §#h§.§&C§:
               _loc2_ = param1.§1s§;
               §8!^§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§-x§.isEagleUsed())
         {
            return §3!g§.STATE_NAME;
         }
         return § null§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §8!H§.STATE_NAME;
      }
      
      protected function §`!e§() : String
      {
         return §?!#§.STATE_NAME;
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
            case 82:
               §8!^§(this.§`!e§());
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§9q§.§-"<§)
         {
            switch(param1.keyCode)
            {
               case 53:
                  §8!^§(this.§`!e§());
                  break;
               case 54:
                  §8!^§(this.§`!e§());
            }
         }
      }
   }
}
