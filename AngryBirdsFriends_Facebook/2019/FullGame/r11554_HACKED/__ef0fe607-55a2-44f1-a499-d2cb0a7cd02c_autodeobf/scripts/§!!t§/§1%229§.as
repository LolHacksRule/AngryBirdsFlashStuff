package §!!T§
{
   import §!!t§.§'8§;
   import §!$?§.§>"w§;
   import §'#f§.§!!"§;
   import §-#R§.§0!w§;
   import §4"E§.§^!B§;
   import §5"2§.§`T§;
   import §=V§.§,#P§;
   import §[";§.§8!n§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import §]#M§.§7"9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §1"9§ extends EventDispatcher
   {
      
      public static const §2#!§:String = "UpdateTournamentEvent";
      
      private static var §#!5§:§1"9§;
       
      
      private var § #j§:Number;
      
      private var §3#^§:Boolean;
      
      private var §3";§:Boolean;
      
      private var §?#[§:§<#'§;
      
      public function §1"9§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get §?q§() : §1"9§
      {
         if(§#!5§ == null)
         {
            §#!5§ = new §1"9§();
         }
         return §#!5§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public function §%6§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.§?#[§ || this.§?#[§.ID != param1.eid)
         {
            this.§-!c§();
            switch(param1.eid)
            {
               case §!!"§.§1"2§:
                  this.§ #j§ = param1.endTime;
                  this.§3";§ = true;
                  this.§?#[§ = new §!!"§();
                  break;
               case §`T§.§1"2§:
                  this.§?#[§ = new §`T§();
                  break;
               case §^!B§.§1"2§:
                  this.§?#[§ = new §^!B§();
                  break;
               case §,#P§.§1"2§:
                  this.§?#[§ = new §,#P§();
                  break;
               case §7"9§.§1"2§:
                  this.§ #j§ = param1.endTime;
                  this.§3";§ = true;
                  this.§?#[§ = new §7"9§();
                  break;
               case §8!n§.§1"2§:
                  this.§ #j§ = param1.endTime;
                  this.§3";§ = true;
                  this.§?#[§ = new §8!n§();
                  break;
               case §>"w§.§1"2§:
                  this.§?#[§ = new §>"w§();
                  break;
               default:
                  this.§?#[§ = null;
            }
            §'8§.§5!O§();
         }
         if(this.§?#[§)
         {
            this.§?#[§.§%6§(param1);
         }
         this.§3#^§ = true;
      }
      
      public function §-"?§() : Boolean
      {
         return this.§?#[§ != null;
      }
      
      public function §[!8§() : §<#'§
      {
         return this.§?#[§;
      }
      
      public function §]m§() : String
      {
         if(this.§?#[§)
         {
            return this.§?#[§.ID;
         }
         return null;
      }
      
      private function §-!c§() : void
      {
         this.§3#^§ = false;
         this.§ #j§ = 0;
         this.§3";§ = false;
         if(this.§?#[§)
         {
            this.§?#[§.§-!c§();
            this.§?#[§ = null;
         }
      }
      
      public function §;"m§() : Number
      {
         return this.§11§(this.§ #j§);
      }
      
      public function §11§(param1:Number) : Number
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
      
      public function §=#L§() : void
      {
         if(this.§3";§ && this.§3#^§)
         {
            dispatchEvent(new Event(§2#!§));
            if(this.§;"m§() == 0)
            {
               this.§3#^§ = false;
               this.§-!c§();
               §'8§.§`"O§();
            }
         }
      }
      
      public function §=#_§() : void
      {
         if(this.§3#^§ && !this.§3";§)
         {
            this.§-!c§();
            §'8§.§`"O§();
         }
      }
      
      public function §7#h§() : Boolean
      {
         return this.§?#[§ is §7"9§ && §#$D§.§?q§.§<"M§(§0!w§.§9#%§.§]'§) > 0;
      }
   }
}
