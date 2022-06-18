package §<u§
{
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §6!e§.§"!^§;
   import §8" §.§]#&§;
   import §8"X§.§^!E§;
   import §;P§.§super§;
   import §@#<§.§@!W§;
   import §["C§.§0§;
   import §]#K§.§>#x§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import static.§?#p§;
   
   public class § "a§ extends EventDispatcher
   {
      
      public static const §<$1§:String = "UpdateTournamentEvent";
      
      private static var §%#b§:§ "a§;
       
      
      private var §!w§:Number;
      
      private var §]#[§:Boolean;
      
      private var §4#x§:Boolean;
      
      private var §&!$§:§2"?§;
      
      public function § "a§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get § "D§() : § "a§
      {
         if(§%#b§ == null)
         {
            §%#b§ = new § "a§();
         }
         return §%#b§;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      public function §5a§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.§&!$§ || this.§&!$§.ID != param1.eid)
         {
            this.§[L§();
            switch(param1.eid)
            {
               case §]#&§.§9!E§:
                  this.§!w§ = param1.endTime;
                  this.§4#x§ = true;
                  this.§&!$§ = new §]#&§();
                  break;
               case §@!W§.§9!E§:
                  this.§&!$§ = new §@!W§();
                  break;
               case §?#p§.§9!E§:
                  this.§&!$§ = new §?#p§();
                  break;
               case §0#9§.§9!E§:
                  this.§&!$§ = new §0#9§();
                  break;
               case §"!^§.§9!E§:
                  this.§!w§ = param1.endTime;
                  this.§4#x§ = true;
                  this.§&!$§ = new §"!^§();
                  break;
               case §>#x§.§9!E§:
                  this.§!w§ = param1.endTime;
                  this.§4#x§ = true;
                  this.§&!$§ = new §>#x§();
                  break;
               default:
                  this.§&!$§ = null;
            }
            §^!E§.§4!H§();
         }
         if(this.§&!$§)
         {
            this.§&!$§.§5a§(param1);
         }
         this.§]#[§ = true;
      }
      
      public function § #b§() : Boolean
      {
         return this.§&!$§ != null;
      }
      
      public function §^W§() : §2"?§
      {
         return this.§&!$§;
      }
      
      private function §[L§() : void
      {
         this.§]#[§ = false;
         this.§!w§ = 0;
         this.§4#x§ = false;
         if(this.§&!$§)
         {
            this.§&!$§.§[L§();
            this.§&!$§ = null;
         }
      }
      
      public function §-#H§() : Number
      {
         return this.§7#K§(this.§!w§);
      }
      
      public function §7#K§(param1:Number) : Number
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
      
      public function §2"!§() : void
      {
         if(this.§4#x§ && this.§]#[§)
         {
            dispatchEvent(new Event(§<$1§));
            if(this.§-#H§() == 0)
            {
               this.§]#[§ = false;
               this.§[L§();
               §^!E§.§@#t§();
            }
         }
      }
      
      public function §>#T§() : void
      {
         if(this.§]#[§ && !this.§4#x§)
         {
            this.§[L§();
            §^!E§.§@#t§();
         }
      }
      
      public function §!#d§() : Boolean
      {
         return this.§&!$§ is §"!^§ && §4"W§.§ "D§.§04§(§super§.§^!M§.§?"9§) > 0;
      }
   }
}
