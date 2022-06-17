package §'"b§
{
   import § R§.§`";§;
   import §!!L§.§ !8§;
   import §""p§.§6"Z§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §9#-§.§]!N§;
   import §9T§.§ "T§;
   import §?<§.§ "A§;
   import §]&§.§5"8§;
   import §`!Z§.§=!7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class § #F§ extends EventDispatcher
   {
      
      public static const §3i§:String = "UpdateTournamentEvent";
      
      private static var §+#!§:§ #F§;
       
      
      private var §1F§:Number;
      
      private var §@$"§:Boolean;
      
      private var §4!F§:Boolean;
      
      private var §&8§:§-!4§;
      
      public function § #F§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get §+!,§() : § #F§
      {
         if(§+#!§ == null)
         {
            §+#!§ = new § #F§();
         }
         return §+#!§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public function §8#y§(param1:Object) : void
      {
         if(!param1)
         {
            if(this.§&8§)
            {
               this.§&8§.§8#y§(null);
            }
            this.§&8§ = null;
            return;
         }
         if(!this.§&8§ || this.§&8§.ID != param1.eid)
         {
            this.§&!8§();
            switch(param1.eid)
            {
               case §6"Z§.§in §:
                  this.§1F§ = param1.endTime;
                  this.§4!F§ = true;
                  this.§&8§ = new §6"Z§();
                  break;
               case §5"8§.§in §:
                  this.§&8§ = new §5"8§();
                  break;
               case §]!N§.§in §:
                  this.§&8§ = new §]!N§();
                  break;
               case §`";§.§in §:
                  this.§1F§ = param1.endTime;
                  this.§4!F§ = true;
                  this.§&8§ = new §`";§();
                  break;
               case §=!7§.§in §:
                  this.§1F§ = param1.endTime;
                  this.§4!F§ = true;
                  this.§&8§ = new §=!7§();
                  break;
               case § "A§.§in §:
                  this.§&8§ = new § "A§();
                  break;
               default:
                  this.§&8§ = null;
            }
            § !8§.§7"p§();
         }
         if(this.§&8§)
         {
            this.§&8§.§8#y§(param1);
         }
         this.§@$"§ = true;
      }
      
      public function §1#@§() : Boolean
      {
         return this.§&8§ != null;
      }
      
      public function §4#P§() : §-!4§
      {
         return this.§&8§;
      }
      
      public function §^"Q§() : String
      {
         if(this.§&8§)
         {
            return this.§&8§.ID;
         }
         return null;
      }
      
      private function §&!8§() : void
      {
         this.§@$"§ = false;
         this.§1F§ = 0;
         this.§4!F§ = false;
         if(this.§&8§)
         {
            this.§&8§.§&!8§();
            this.§&8§ = null;
         }
      }
      
      public function §'7§() : Number
      {
         return this.§6f§(this.§1F§);
      }
      
      public function §6f§(param1:Number) : Number
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
      
      public function §<#w§() : void
      {
         if(this.§4!F§ && this.§@$"§)
         {
            dispatchEvent(new Event(§3i§));
            if(this.§'7§() == 0)
            {
               this.§@$"§ = false;
               this.§&!8§();
               § !8§.§>#_§();
            }
         }
      }
      
      public function §2"K§() : void
      {
         if(this.§@$"§ && !this.§4!F§)
         {
            this.§&!8§();
            § !8§.§>#_§();
         }
      }
      
      public function §'"B§() : Boolean
      {
         return this.§&8§ is §`";§ && §]#0§.§+!,§.§,#k§(§ "T§.§'!+§.§8t§) > 0;
      }
   }
}
