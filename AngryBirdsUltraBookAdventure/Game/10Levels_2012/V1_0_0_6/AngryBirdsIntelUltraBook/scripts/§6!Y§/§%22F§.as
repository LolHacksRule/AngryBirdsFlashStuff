package §6!Y§
{
   public class §"F§
   {
       
      
      protected var §1t§:§0!x§;
      
      protected var §[!M§:Object;
      
      protected var § j§:String;
      
      protected var §^o§:String;
      
      protected var §<!t§:String;
      
      public function §"F§(param1:String, param2:String, param3:String)
      {
         this.§[!M§ = {};
         super();
         this.§<!t§ = param3;
         this.§^o§ = param2;
         this.§ j§ = param1;
      }
      
      public function §[!0§() : §0!x§
      {
         if(!this.§1t§)
         {
            this.§1t§ = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/fb/friends",true);
         }
         return this.§1t§;
      }
      
      public function §??§(param1:Object) : void
      {
         this.§1t§ = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/fb/friends",true,param1);
      }
      
      public function §]!q§(param1:String, param2:String, param3:Boolean = false) : §0!x§
      {
         if(this.§[!M§[param2])
         {
            return this.§[!M§[param2];
         }
         return this.§[!M§[param2] = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §6!7§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§[!M§[_loc2_])
            {
               this.§[!M§[_loc2_] = null;
            }
         }
      }
      
      public function §5!$§(param1:String) : §0!x§
      {
         return this.§[!M§[param1];
      }
      
      public function get §-b§() : int
      {
         if(this.§1t§ == null)
         {
            return -1;
         }
         return this.§1t§.§-b§;
      }
   }
}
