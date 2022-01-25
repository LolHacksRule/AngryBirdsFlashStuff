package §>9§
{
   import § !$§.§4u§;
   import §;+§.§[!3§;
   import §;m§.§6!U§;
   import §?k§.§[n§;
   import §@o§.§]t§;
   import flash.utils.Dictionary;
   
   public class §;!?§ extends §]t§
   {
      
      public static const PERSONAL_GOAL_1_LIMIT:int = 15;
      
      public static const PERSONAL_GOAL_2_LIMIT:int = 40;
      
      public static const §+^§:int = 10000000;
       
      
      private var §5=§:Vector.<§[!3§>;
      
      protected var §^!>§:int = 0;
      
      private var §=!W§:Boolean = false;
      
      private var mPersonalGoal1Achieved:Boolean = false;
      
      private var mPersonalGoal2Achieved:Boolean = false;
      
      private var §%9§:int = 0;
      
      protected var §1!+§:Dictionary;
      
      public function §;!?§(param1:String)
      {
         this.§5=§ = new Vector.<§[!3§>();
         super(param1);
         this.§1!+§ = new Dictionary();
      }
      
      public function §;!K§(param1:String, param2:int) : void
      {
         var _loc3_:§6!U§ = new §6!U§(param2);
         this.§1!+§[param1] = _loc3_;
      }
      
      public function §@!L§(param1:String) : int
      {
         var _loc2_:§6!U§ = null;
         if(this.§1!+§[param1])
         {
            _loc2_ = this.§1!+§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function get §3S§() : int
      {
         return this.§^!>§;
      }
      
      public function §?!V§(param1:§[!3§) : void
      {
         if(param1 == null)
         {
            throw new Error("The collection doesn\'t allow null items.");
         }
         if(param1.§"!D§ <= 0 && this.§5=§.indexOf(param1) == -1 || param1 is §4u§)
         {
            this.§5=§.push(param1);
         }
      }
      
      public function §+L§() : void
      {
         this.§5=§ = new Vector.<§[!3§>();
      }
      
      public function §3u§() : int
      {
         return this.§5=§.length;
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
      
      public function get §[!Q§() : Boolean
      {
         return this.§=!W§;
      }
      
      public function § !^§(param1:String) : void
      {
         if(param1 == §[n§.§6w§())
         {
            this.§=!W§ = true;
         }
      }
      
      public function set §3S§(param1:int) : void
      {
         this.§^!>§ = param1;
         if(this.§^!>§ >= PERSONAL_GOAL_1_LIMIT)
         {
            this.mPersonalGoal1Achieved = true;
         }
         if(this.§^!>§ >= PERSONAL_GOAL_2_LIMIT)
         {
            this.mPersonalGoal2Achieved = true;
         }
      }
      
      public function get §"s§() : int
      {
         return this.§%9§;
      }
      
      public function set §"s§(param1:int) : void
      {
         this.§%9§ = param1;
      }
   }
}
