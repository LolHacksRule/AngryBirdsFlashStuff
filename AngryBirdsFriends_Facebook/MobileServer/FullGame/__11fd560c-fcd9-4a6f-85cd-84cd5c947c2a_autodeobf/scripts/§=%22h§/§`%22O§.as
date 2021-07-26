package §="h§
{
   import §!$3§.§,$§;
   import §"!+§.§4"#§;
   import §&$!§.§%#k§;
   import §'#d§.§5!Z§;
   import §-R§.§2#c§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §5F§.§`N§;
   import §7#Z§.§"#Y§;
   import §9#B§.§=!L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §`"O§ extends EventDispatcher
   {
      
      public static const §9"v§:String = "UpdateTournamentEvent";
      
      private static var §!c§:§`"O§;
       
      
      private var §`#u§:Number;
      
      private var §@!I§:Boolean;
      
      private var §!"C§:Boolean;
      
      private var §'!2§:§<"T§;
      
      public function §`"O§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get §6!§() : §`"O§
      {
         if(§!c§ == null)
         {
            §!c§ = new §`"O§();
         }
         return §!c§;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.§'!2§ || this.§'!2§.ID != param1.eid)
         {
            this.§=#"§();
            switch(param1.eid)
            {
               case §2#c§.§^^§:
                  this.§`#u§ = param1.endTime;
                  this.§!"C§ = true;
                  this.§'!2§ = new §2#c§();
                  break;
               case §`N§.§^^§:
                  this.§'!2§ = new §`N§();
                  break;
               case §4"#§.§^^§:
                  this.§'!2§ = new §4"#§();
                  break;
               case §,$§.§^^§:
                  this.§'!2§ = new §,$§();
                  break;
               case §"#Y§.§^^§:
                  this.§`#u§ = param1.endTime;
                  this.§!"C§ = true;
                  this.§'!2§ = new §"#Y§();
                  break;
               case §5!Z§.§^^§:
                  this.§`#u§ = param1.endTime;
                  this.§!"C§ = true;
                  this.§'!2§ = new §5!Z§();
                  break;
               default:
                  this.§'!2§ = null;
            }
            §=!L§.§6T§();
         }
         if(this.§'!2§)
         {
            this.§'!2§.§>#<§(param1);
         }
         this.§@!I§ = true;
      }
      
      public function §8!>§() : Boolean
      {
         return this.§'!2§ != null;
      }
      
      public function §!!I§() : §<"T§
      {
         return this.§'!2§;
      }
      
      private function §=#"§() : void
      {
         this.§@!I§ = false;
         this.§`#u§ = 0;
         this.§!"C§ = false;
         if(this.§'!2§)
         {
            this.§'!2§.§=#"§();
            this.§'!2§ = null;
         }
      }
      
      public function §[!n§() : Number
      {
         return this.§&"P§(this.§`#u§);
      }
      
      public function §&"P§(param1:Number) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc2_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc2_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc3_:Number = (param1 - _loc2_) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ == 0)
         {
            param1 = 0;
         }
         return _loc3_;
      }
      
      public function §[z§() : void
      {
         if(this.§!"C§ && this.§@!I§)
         {
            dispatchEvent(new Event(§9"v§));
            if(this.§[!n§() == 0)
            {
               this.§@!I§ = false;
               this.§=#"§();
               §=!L§.§4K§();
            }
         }
      }
      
      public function §&$1§() : void
      {
         if(this.§@!I§ && !this.§!"C§)
         {
            this.§=#"§();
            §=!L§.§4K§();
         }
      }
      
      public function §4u§() : Boolean
      {
         return this.§'!2§ is §"#Y§ && §-#+§.§6!§.§=b§(§%#k§.§[4§.§5"g§) > 0;
      }
   }
}
