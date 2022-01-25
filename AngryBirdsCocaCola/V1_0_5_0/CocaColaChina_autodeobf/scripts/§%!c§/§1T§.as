package §%!c§
{
   import §#B§.§ ]§;
   import §&!%§.§[G§;
   import §'!^§.§4!2§;
   import §32§.§@a§;
   import §=!<§.§%P§;
   import flash.utils.Dictionary;
   
   public class §1T§ extends §[G§
   {
      
      public static const PERSONAL_GOAL_1_LIMIT:int = 15;
      
      public static const PERSONAL_GOAL_2_LIMIT:int = 40;
      
      public static const §5!Q§:int = 10000000;
       
      
      private var §2!6§:Vector.<§ ]§>;
      
      protected var §0!#§:int = 0;
      
      private var §'f§:Boolean = false;
      
      private var mPersonalGoal1Achieved:Boolean = false;
      
      private var mPersonalGoal2Achieved:Boolean = false;
      
      private var §-^§:int = 0;
      
      protected var §9V§:Dictionary;
      
      public function §1T§(param1:String)
      {
         this.§2!6§ = new Vector.<§ ]§>();
         super(param1);
         this.§9V§ = new Dictionary();
      }
      
      public function §%C§(param1:String, param2:int) : void
      {
         var _loc3_:§4!2§ = new §4!2§(param2);
         this.§9V§[param1] = _loc3_;
      }
      
      public function §[!Q§(param1:String) : int
      {
         var _loc2_:§4!2§ = null;
         if(this.§9V§[param1])
         {
            _loc2_ = this.§9V§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function get §4!5§() : int
      {
         return this.§0!#§;
      }
      
      public function §>!N§(param1:§ ]§) : void
      {
         if(param1 == null)
         {
            throw new Error("The collection doesn\'t allow null items.");
         }
         if(param1.§=1§ <= 0 && this.§2!6§.indexOf(param1) == -1 || param1 is §@a§)
         {
            this.§2!6§.push(param1);
         }
      }
      
      public function §!!F§() : void
      {
         this.§2!6§ = new Vector.<§ ]§>();
      }
      
      public function §^!b§() : int
      {
         return this.§2!6§.length;
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
      
      public function get §2!K§() : Boolean
      {
         return this.§'f§;
      }
      
      public function §%W§(param1:String) : void
      {
         if(param1 == §%P§.§=#§())
         {
            this.§'f§ = true;
         }
      }
      
      public function set §4!5§(param1:int) : void
      {
         this.§0!#§ = param1;
         if(this.§0!#§ >= PERSONAL_GOAL_1_LIMIT)
         {
            this.mPersonalGoal1Achieved = true;
         }
         if(this.§0!#§ >= PERSONAL_GOAL_2_LIMIT)
         {
            this.mPersonalGoal2Achieved = true;
         }
      }
      
      public function get §,j§() : int
      {
         return this.§-^§;
      }
      
      public function set §,j§(param1:int) : void
      {
         this.§-^§ = param1;
      }
   }
}
