package §-"§
{
   import § m§.§4!3§;
   import §!!4§.§8>§;
   import §&$§.§!!R§;
   import §2!G§.§5i§;
   import §^!$§.§?![§;
   import flash.utils.Dictionary;
   
   public class §0!O§ extends §4!3§
   {
      
      public static const PERSONAL_GOAL_1_LIMIT:int = 15;
      
      public static const PERSONAL_GOAL_2_LIMIT:int = 40;
      
      public static const §@y§:int = 10000000;
       
      
      private var §@K§:Vector.<§?![§>;
      
      protected var § for§:int = 0;
      
      private var §2%§:Boolean = true;
      
      private var mPersonalGoal1Achieved:Boolean = false;
      
      private var mPersonalGoal2Achieved:Boolean = false;
      
      private var §[f§:int = 0;
      
      protected var §<H§:Dictionary;
      
      public function §0!O§(param1:String)
      {
         this.§@K§ = new Vector.<§?![§>();
         super(param1);
         this.§<H§ = new Dictionary();
      }
      
      public function §?R§(param1:String, param2:int) : void
      {
         var _loc3_:§!!R§ = new §!!R§(param2);
         this.§<H§[param1] = _loc3_;
      }
      
      public function §6!;§(param1:String) : int
      {
         var _loc2_:§!!R§ = null;
         if(this.§<H§[param1])
         {
            _loc2_ = this.§<H§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function get §<M§() : int
      {
         return this.§ for§;
      }
      
      public function §75§(param1:§?![§) : void
      {
         if(param1 == null)
         {
            throw new Error("The collection doesn\'t allow null items.");
         }
         if(param1.§+m§ <= 0 && this.§@K§.indexOf(param1) == -1 || param1 is §5i§)
         {
            this.§@K§.push(param1);
         }
      }
      
      public function §&q§() : void
      {
         this.§@K§ = new Vector.<§?![§>();
      }
      
      public function §3!&§() : int
      {
         return this.§@K§.length;
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
      
      public function get §>b§() : Boolean
      {
         return this.§2%§;
      }
      
      public function §0!0§(param1:String) : void
      {
         if(param1 == §8>§.§#!X§())
         {
            this.§2%§ = true;
         }
      }
      
      public function set §<M§(param1:int) : void
      {
         this.§ for§ = param1;
         if(this.§ for§ >= PERSONAL_GOAL_1_LIMIT)
         {
            this.mPersonalGoal1Achieved = true;
         }
         if(this.§ for§ >= PERSONAL_GOAL_2_LIMIT)
         {
            this.mPersonalGoal2Achieved = true;
         }
      }
      
      public function get §=t§() : int
      {
         return this.§[f§;
      }
      
      public function set §=t§(param1:int) : void
      {
         this.§[f§ = param1;
      }
   }
}
