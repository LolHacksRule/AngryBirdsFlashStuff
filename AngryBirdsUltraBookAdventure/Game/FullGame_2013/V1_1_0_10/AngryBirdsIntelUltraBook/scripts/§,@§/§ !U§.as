package §,@§
{
   public class § !U§
   {
       
      
      protected var §<!F§:§'!6§;
      
      protected var §#<§:Object;
      
      protected var §0!m§:String;
      
      protected var §][§:String;
      
      protected var §0!T§:String;
      
      public function § !U§(param1:String, param2:String, param3:String)
      {
         this.§#<§ = {};
         super();
         this.§0!T§ = param3;
         this.§][§ = param2;
         this.§0!m§ = param1;
      }
      
      public function §9!i§() : §'!6§
      {
         if(!this.§<!F§)
         {
            this.§<!F§ = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/fb/friends",true);
         }
         return this.§<!F§;
      }
      
      public function §8m§(param1:Object) : void
      {
         this.§<!F§ = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/fb/friends",true,param1);
      }
      
      public function §2!v§(param1:String, param2:String, param3:Boolean = false) : §'!6§
      {
         if(this.§#<§[param2])
         {
            return this.§#<§[param2];
         }
         return this.§#<§[param2] = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §1!z§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§#<§[_loc2_])
            {
               this.§#<§[_loc2_] = null;
            }
         }
      }
      
      public function §-""§(param1:String) : §'!6§
      {
         return this.§#<§[param1];
      }
      
      public function get §6!4§() : int
      {
         if(this.§<!F§ == null)
         {
            return -1;
         }
         return this.§<!F§.§6!4§;
      }
   }
}
