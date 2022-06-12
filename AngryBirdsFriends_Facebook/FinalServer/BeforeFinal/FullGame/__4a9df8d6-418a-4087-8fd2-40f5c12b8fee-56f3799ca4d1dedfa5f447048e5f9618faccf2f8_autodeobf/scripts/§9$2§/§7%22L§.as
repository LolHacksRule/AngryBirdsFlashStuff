package §9$2§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §&n§.§]"%§;
   import §+"s§.§>#O§;
   import §+# §.§="=§;
   import §+#A§.§`y§;
   import §-;§.§+"d§;
   import §3+§.§;!H§;
   import §4#@§.§5N§;
   import §[!o§.§4!F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §7"L§ extends EventDispatcher
   {
      
      public static const § "D§:String = "UpdateTournamentEvent";
      
      private static var §1$8§:§7"L§;
       
      
      private var §+!q§:Number;
      
      private var §5'§:Boolean;
      
      private var §>p§:Boolean;
      
      private var §^!i§:§8L§;
      
      public function §7"L§(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get §`"H§() : §7"L§
      {
         if(§1$8§ == null)
         {
            §1$8§ = new §7"L§();
         }
         return §1$8§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.§^!i§ || this.§^!i§.ID != param1.eid)
         {
            this.§7b§();
            switch(param1.eid)
            {
               case §>#O§.§0#V§:
                  this.§+!q§ = param1.endTime;
                  this.§>p§ = true;
                  this.§^!i§ = new §>#O§();
                  break;
               case §5N§.§0#V§:
                  this.§^!i§ = new §5N§();
                  break;
               case §`y§.§0#V§:
                  this.§^!i§ = new §`y§();
                  break;
               case §="=§.§0#V§:
                  this.§+!q§ = param1.endTime;
                  this.§>p§ = true;
                  this.§^!i§ = new §="=§();
                  break;
               case §]"%§.§0#V§:
                  this.§+!q§ = param1.endTime;
                  this.§>p§ = true;
                  this.§^!i§ = new §]"%§();
                  break;
               case §4!F§.§0#V§:
                  this.§^!i§ = new §4!F§();
                  break;
               default:
                  this.§^!i§ = null;
            }
            §;!H§.§>#"§();
         }
         if(this.§^!i§)
         {
            this.§^!i§.§`#[§(param1);
         }
         this.§5'§ = true;
      }
      
      public function §58§() : Boolean
      {
         return this.§^!i§ != null;
      }
      
      public function §9'§() : §8L§
      {
         return this.§^!i§;
      }
      
      public function §0!a§() : String
      {
         if(this.§^!i§)
         {
            return this.§^!i§.ID;
         }
         return null;
      }
      
      private function §7b§() : void
      {
         this.§5'§ = false;
         this.§+!q§ = 0;
         this.§>p§ = false;
         if(this.§^!i§)
         {
            this.§^!i§.§7b§();
            this.§^!i§ = null;
         }
      }
      
      public function §&$ §() : Number
      {
         return this.§3-§(this.§+!q§);
      }
      
      public function §3-§(param1:Number) : Number
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
      
      public function §#"N§() : void
      {
         if(this.§>p§ && this.§5'§)
         {
            dispatchEvent(new Event(§ "D§));
            if(this.§&$ §() == 0)
            {
               this.§5'§ = false;
               this.§7b§();
               §;!H§.§]`§();
            }
         }
      }
      
      public function §?Z§() : void
      {
         if(this.§5'§ && !this.§>p§)
         {
            this.§7b§();
            §;!H§.§]`§();
         }
      }
      
      public function §,$1§() : Boolean
      {
         return this.§^!i§ is §="=§ && § $?§.§`"H§.§0#s§(§+"d§.§true §.§1#7§) > 0;
      }
   }
}
