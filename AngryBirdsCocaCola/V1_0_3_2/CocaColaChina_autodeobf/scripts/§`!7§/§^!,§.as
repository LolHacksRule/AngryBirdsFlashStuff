package §`!7§
{
   import §4!O§.§&+§;
   import §5!b§.§-$§;
   import §<o§.§#D§;
   import §>P§.§2!U§;
   import §@!!§.§=Q§;
   import flash.utils.Dictionary;
   
   public class §^!,§ extends §=Q§
   {
      
      public static const PERSONAL_GOAL_1_LIMIT:int = 15;
      
      public static const PERSONAL_GOAL_2_LIMIT:int = 40;
      
      public static const §#!M§:int = 10000000;
       
      
      private var §'!&§:Vector.<§&+§>;
      
      protected var §8y§:int = 0;
      
      private var §7!!§:Boolean = false;
      
      private var mPersonalGoal1Achieved:Boolean = false;
      
      private var mPersonalGoal2Achieved:Boolean = false;
      
      private var §9j§:int = 0;
      
      protected var §9z§:Dictionary;
      
      public function §^!,§(param1:String)
      {
         this.§'!&§ = new Vector.<§&+§>();
         super(param1);
         this.§9z§ = new Dictionary();
      }
      
      public function §,!?§(param1:String, param2:int) : void
      {
         var _loc3_:§2!U§ = new §2!U§(param2);
         this.§9z§[param1] = _loc3_;
      }
      
      public function §=f§(param1:String) : int
      {
         var _loc2_:§2!U§ = null;
         if(this.§9z§[param1])
         {
            _loc2_ = this.§9z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function get §'u§() : int
      {
         return this.§8y§;
      }
      
      public function §!r§(param1:§&+§) : void
      {
         if(param1 == null)
         {
            throw new Error("The collection doesn\'t allow null items.");
         }
         if(param1.§8!B§ <= 0 && this.§'!&§.indexOf(param1) == -1 || param1 is §-$§)
         {
            this.§'!&§.push(param1);
         }
      }
      
      public function §0!$§() : void
      {
         this.§'!&§ = new Vector.<§&+§>();
      }
      
      public function §!!Q§() : int
      {
         return this.§'!&§.length;
      }
      
      public function get personalGoal1Achieved() : Boolean
      {
         return this.mPersonalGoal1Achieved;
      }
      
      public function set personalGoal1Achieved(param1:Boolean) : void
      {
         this.mPersonalGoal1Achieved = param1;
      }
      
      public function get personalGoal2Achieved() : Boolean
      {
         return this.mPersonalGoal2Achieved;
      }
      
      public function set personalGoal2Achieved(param1:Boolean) : void
      {
         this.mPersonalGoal2Achieved = param1;
      }
      
      public function get §@!#§() : Boolean
      {
         return this.§7!!§;
      }
      
      public function §;![§(param1:String) : void
      {
         if(param1 == §#D§.§;!#§())
         {
            this.§7!!§ = true;
         }
      }
      
      public function set §'u§(param1:int) : void
      {
         this.§8y§ = param1;
         if(this.§8y§ >= PERSONAL_GOAL_1_LIMIT)
         {
            this.mPersonalGoal1Achieved = true;
         }
         if(this.§8y§ >= PERSONAL_GOAL_2_LIMIT)
         {
            this.mPersonalGoal2Achieved = true;
         }
      }
      
      public function get §@c§() : int
      {
         return this.§9j§;
      }
      
      public function set §@c§(param1:int) : void
      {
         this.§9j§ = param1;
      }
   }
}
