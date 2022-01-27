package §"k§
{
   public class §[!7§ implements §&"r§
   {
       
      
      protected var §8x§:§!!J§;
      
      protected var §#"&§:Object;
      
      protected var §@#L§:String;
      
      protected var §>#T§:String;
      
      protected var §9#Y§:String;
      
      public function §[!7§(param1:String, param2:String, param3:String, param4:Object)
      {
         this.§#"&§ = {};
         super();
         this.§9#Y§ = param3;
         this.§>#T§ = param2;
         this.§@#L§ = param1;
         this.§8x§ = new §!!J§(this.§>#T§,this.§9#Y§,this.§@#L§ + "/fb/friends",true,param4);
      }
      
      public function getTotalScores() : §6!a§
      {
         return this.§8x§;
      }
      
      public function §[n§(param1:String, param2:String, param3:Boolean) : §6!a§
      {
         if(this.§#"&§[param2])
         {
            return this.§#"&§[param2];
         }
         return this.§#"&§[param2] = new §!!J§(this.§>#T§,this.§9#Y§,this.§@#L§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3,false);
      }
      
      public function §1"7§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§#"&§[_loc2_])
            {
               this.§#"&§[_loc2_] = null;
            }
         }
      }
      
      public function §,"1§(param1:String) : §!!J§
      {
         return this.§#"&§[param1];
      }
      
      public function get §,"%§() : int
      {
         if(this.§8x§ == null)
         {
            return -1;
         }
         return this.§8x§.§,"%§;
      }
   }
}
