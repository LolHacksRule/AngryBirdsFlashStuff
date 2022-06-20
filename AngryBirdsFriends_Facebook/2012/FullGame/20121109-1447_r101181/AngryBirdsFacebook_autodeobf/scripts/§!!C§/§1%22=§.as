package §!!C§
{
   public class §1"=§
   {
       
      
      protected var §]K§:§]!;§;
      
      protected var § !g§:Object;
      
      protected var §+]§:String;
      
      protected var §"S§:String;
      
      protected var §]!e§:String;
      
      public function §1"=§(param1:String, param2:String, param3:String)
      {
         this.§ !g§ = {};
         super();
         this.§]!e§ = param3;
         this.§"S§ = param2;
         this.§+]§ = param1;
      }
      
      public function §9V§() : §]!;§
      {
         if(!this.§]K§)
         {
            this.§]K§ = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/fb/friends",true);
         }
         return this.§]K§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§]K§ = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/fb/friends",true,param1);
      }
      
      public function §#!7§(param1:String, param2:String, param3:Boolean = false) : §]!;§
      {
         if(this.§ !g§[param2])
         {
            return this.§ !g§[param2];
         }
         return this.§ !g§[param2] = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function § !;§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§ !g§[_loc2_])
            {
               this.§ !g§[_loc2_] = null;
            }
         }
      }
      
      public function §0W§(param1:String) : §]!;§
      {
         return this.§ !g§[param1];
      }
      
      public function get §%!=§() : int
      {
         if(this.§]K§ == null)
         {
            return -1;
         }
         return this.§]K§.§%!=§;
      }
   }
}
