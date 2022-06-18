package §]M§
{
   import §!"1§.§9!X§;
   import §+"_§.§>"%§;
   import §;"i§.§;§;
   import §<"I§.§<$B§;
   import §>"e§.§2$$§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §?!<§.§5!M§;
   import §[#v§.§4e§;
   import §^!b§.§5"c§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §=!a§ extends EventDispatcher
   {
      
      public static const §9!e§:String = "UpdateTournamentEvent";
      
      private static var §!#m§:§=!a§;
       
      
      private var §1!Y§:Number;
      
      private var §3!N§:Boolean;
      
      private var §6!!§:Boolean;
      
      private var §[h§:§-"-§;
      
      public function §=!a§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get §3"1§() : §=!a§
      {
         if(§!#m§ == null)
         {
            §!#m§ = new §=!a§();
         }
         return §!#m§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public function §@$§(param1:Object) : void
      {
         if(!param1)
         {
            if(this.§[h§)
            {
               this.§[h§.§@$§(null);
            }
            this.§[h§ = null;
            return;
         }
         if(!this.§[h§ || this.§[h§.ID != param1.eid)
         {
            this.§&#D§();
            switch(param1.eid)
            {
               case §9!X§.§?"n§:
                  this.§1!Y§ = param1.endTime;
                  this.§6!!§ = true;
                  this.§[h§ = new §9!X§();
                  break;
               case §2$$§.§?"n§:
                  this.§[h§ = new §2$$§();
                  break;
               case §5!M§.§?"n§:
                  this.§[h§ = new §5!M§();
                  break;
               case §;#0§.§?"n§:
                  this.§1!Y§ = param1.endTime;
                  this.§6!!§ = true;
                  this.§[h§ = new §;#0§();
                  break;
               case §>"%§.§?"n§:
                  this.§1!Y§ = param1.endTime;
                  this.§6!!§ = true;
                  this.§[h§ = new §>"%§();
                  break;
               case §5"c§.§?"n§:
                  this.§[h§ = new §5"c§();
                  break;
               default:
                  this.§[h§ = null;
            }
            §4e§.§%#8§();
         }
         if(this.§[h§)
         {
            this.§[h§.§@$§(param1);
         }
         this.§3!N§ = true;
      }
      
      public function §#"P§() : Boolean
      {
         return this.§[h§ != null;
      }
      
      public function §>"Q§() : §-"-§
      {
         return this.§[h§;
      }
      
      public function §?#4§() : String
      {
         if(this.§[h§)
         {
            return this.§[h§.ID;
         }
         return null;
      }
      
      private function §&#D§() : void
      {
         this.§3!N§ = false;
         this.§1!Y§ = 0;
         this.§6!!§ = false;
         if(this.§[h§)
         {
            this.§[h§.§&#D§();
            this.§[h§ = null;
         }
      }
      
      public function §"$?§() : Number
      {
         return this.§&"U§(this.§1!Y§);
      }
      
      public function §&"U§(param1:Number) : Number
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
      
      public function §<!O§() : void
      {
         if(this.§6!!§ && this.§3!N§)
         {
            dispatchEvent(new Event(§9!e§));
            if(this.§"$?§() == 0)
            {
               this.§3!N§ = false;
               this.§&#D§();
               §4e§.§^H§();
            }
         }
      }
      
      public function § #^§() : void
      {
         if(this.§3!N§ && !this.§6!!§)
         {
            this.§&#D§();
            §4e§.§^H§();
         }
      }
      
      public function §@o§() : Boolean
      {
         return this.§[h§ is §;#0§ && §!",§.§3"1§.§2![§(§<$B§.§,"S§.§=#@§) > 0;
      }
   }
}
