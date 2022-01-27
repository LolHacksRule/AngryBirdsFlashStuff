package §9%§
{
   import §%!P§.§@o§;
   import §%"%§.§2Z§;
   import §+g§.§%!N§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §6!s§.§@";§;
   import §="<§.§,"$§;
   import §>"2§.§8k§;
   import §["9§.§`"=§;
   import §const§.§-!u§;
   import §const§.§`!<§;
   import flash.events.KeyboardEvent;
   
   public class StatePlay extends §6"G§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §+"7§:§-!u§;
      
      protected var §&!B§:§`!<§;
      
      public function StatePlay(param1:§^!@§, param2:§2Z§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §&!7§() : §-!u§
      {
         return this.§+"7§;
      }
      
      override protected function init() : void
      {
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §3m§() : void
      {
         this.§each §();
         this.§""1§();
         this.§+e§();
      }
      
      protected function §!E§() : void
      {
         this.§&"1§();
         if(this.§+"7§)
         {
            this.§+"7§.dispose();
            this.§+"7§ = null;
         }
         if(this.§&!B§)
         {
            this.§&!B§.dispose();
            this.§&!B§ = null;
         }
      }
      
      protected function §each §() : void
      {
         var _loc1_:§@o§ = §2&§.§6o§.§2c§;
         var _loc2_:§,"$§ = §,"$§(§%!A§.getItemByName("Container_Pause"));
         this.§&!B§ = new §%!N§(_loc2_,§#"=§,_loc1_,§ "@§);
      }
      
      protected function §""1§() : void
      {
         var _loc1_:§@o§ = §2&§.§6o§.§2c§;
         var _loc2_:§,"$§ = §,"$§(§%!A§.getItemByName("Container_Play"));
         this.§+"7§ = new §@";§(_loc2_,§#"=§,§2`§,_loc1_,§ "@§);
      }
      
      protected function §+e§() : void
      {
         this.§&!B§.addEventListener(§`"=§.§1"3§,this.§"M§);
         this.§&!B§.addEventListener(§`"=§.§`w§,this.§"M§);
         this.§&!B§.addEventListener(§`"=§.RESTART_LEVEL,this.§"M§);
         this.§&!B§.addEventListener(§`"=§.RESUME_LEVEL,this.§"M§);
         this.§+"7§.addEventListener(§`"=§.§`w§,this.§"M§);
         this.§+"7§.addEventListener(§`"=§.RESTART_LEVEL,this.§"M§);
         this.§+"7§.addEventListener(§`"=§.RESUME_LEVEL,this.§"M§);
         this.§+"7§.addEventListener(§`"=§.§1$§,this.§"M§);
      }
      
      protected function §&"1§() : void
      {
         this.§&!B§.removeEventListener(§`"=§.§1"3§,this.§"M§);
         this.§&!B§.removeEventListener(§`"=§.§`w§,this.§"M§);
         this.§&!B§.removeEventListener(§`"=§.RESTART_LEVEL,this.§"M§);
         this.§&!B§.removeEventListener(§`"=§.RESUME_LEVEL,this.§"M§);
         this.§+"7§.removeEventListener(§`"=§.§`w§,this.§"M§);
         this.§+"7§.removeEventListener(§`"=§.RESTART_LEVEL,this.§"M§);
         this.§+"7§.removeEventListener(§`"=§.RESUME_LEVEL,this.§"M§);
         this.§+"7§.removeEventListener(§`"=§.§1$§,this.§"M§);
      }
      
      override protected function levelStarted() : void
      {
         §<5§.§>!R§();
         super.levelStarted();
         this.§%!^§();
      }
      
      protected function §%!^§() : void
      {
         §<5§.§%!X§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§3m§();
         this.§&"-§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§!E§();
         §2&§.§6o§.§-b§ = false;
         super.deActivate();
      }
      
      protected function §&"-§(param1:Boolean, param2:Boolean = true) : void
      {
         §2&§.§6o§.§-b§ = param1;
         if(param1)
         {
            this.§+"7§.disable(param2);
            this.§&!B§.enable(param2);
         }
         else
         {
            this.§+"7§.enable(param2);
            this.§&!B§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§+"7§ && this.§+"7§.§ "9§())
         {
            this.§+"7§.update(param1);
         }
         if(this.§&!B§ && this.§&!B§.§ "9§())
         {
            this.§&!B§.update(param1);
         }
      }
      
      protected function §"M§(param1:§`"=§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §`"=§.§1"3§:
               break;
            case §`"=§.§1$§:
               this.§&"-§(true);
               break;
            case §`"=§.RESUME_LEVEL:
               this.§&"-§(false);
               break;
            case §`"=§.RESTART_LEVEL:
               § !I§(this.§ 4§());
               break;
            case §`"=§.§`w§:
               _loc2_ = param1.§+f§;
               § !I§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§&!7§.isEagleUsed())
         {
            return §8E§.STATE_NAME;
         }
         return §?"$§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return § !u§.STATE_NAME;
      }
      
      protected function § 4§() : String
      {
         return §^! §.STATE_NAME;
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
               § !I§(this.§ 4§());
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§8k§.§"",§)
         {
            switch(param1.keyCode)
            {
               case 53:
                  § !I§(this.§ 4§());
                  break;
               case 54:
                  § !I§(this.§ 4§());
            }
         }
      }
   }
}
