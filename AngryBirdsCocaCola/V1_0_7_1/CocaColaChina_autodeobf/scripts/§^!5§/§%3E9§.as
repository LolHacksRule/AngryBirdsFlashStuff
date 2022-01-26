package §^!5§
{
   import §9C§.§4!G§;
   import §9I§.§ n§;
   import §?k§.§[n§;
   import §@o§.§]t§;
   import §[O§.§3!K§;
   import flash.utils.Dictionary;
   
   public class §>9§ extends §]t§
   {
      
      public static const PERSONAL_GOAL_1_LIMIT:int = 15;
      
      public static const PERSONAL_GOAL_2_LIMIT:int = 40;
      
      public static const §"s§:int = 10000000;
       
      
      private var §;!?§:Vector.<§4!G§>;
      
      protected var §5=§:int = 0;
      
      private var §^!>§:Boolean = true;
      
      private var mPersonalGoal1Achieved:Boolean = false;
      
      private var mPersonalGoal2Achieved:Boolean = false;
      
      private var §=!W§:int = 0;
      
      protected var §%9§:Dictionary;
      
      public function §>9§(param1:String)
      {
         this.§;!?§ = new Vector.<§4!G§>();
         super(param1);
         this.§%9§ = new Dictionary();
      }
      
      public function §1!+§(param1:String, param2:int) : void
      {
         var _loc3_:§ n§ = new § n§(param2);
         this.§%9§[param1] = _loc3_;
      }
      
      public function §;!K§(param1:String) : int
      {
         var _loc2_:§ n§ = null;
         if(this.§%9§[param1])
         {
            _loc2_ = this.§%9§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function get §@!L§() : int
      {
         return this.§5=§;
      }
      
      public function §3S§(param1:§4!G§) : void
      {
         if(param1 == null)
         {
            throw new Error("The collection doesn\'t allow null items.");
         }
         if(param1.§ b§ <= 0 && this.§;!?§.indexOf(param1) == -1 || param1 is §3!K§)
         {
            this.§;!?§.push(param1);
         }
      }
      
      public function §?!V§() : void
      {
         this.§;!?§ = new Vector.<§4!G§>();
      }
      
      public function §+L§() : int
      {
         return this.§;!?§.length;
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
      
      public function get §3u§() : Boolean
      {
         return this.§^!>§;
      }
      
      public function §[!Q§(param1:String) : void
      {
         if(param1 == §[n§.§6w§())
         {
            this.§^!>§ = true;
         }
      }
      
      public function set §@!L§(param1:int) : void
      {
         this.§5=§ = param1;
         if(this.§5=§ >= PERSONAL_GOAL_1_LIMIT)
         {
            this.mPersonalGoal1Achieved = true;
         }
         if(this.§5=§ >= PERSONAL_GOAL_2_LIMIT)
         {
            this.mPersonalGoal2Achieved = true;
         }
      }
      
      public function get § !^§() : int
      {
         return this.§=!W§;
      }
      
      public function set § !^§(param1:int) : void
      {
         this.§=!W§ = param1;
      }
   }
}
