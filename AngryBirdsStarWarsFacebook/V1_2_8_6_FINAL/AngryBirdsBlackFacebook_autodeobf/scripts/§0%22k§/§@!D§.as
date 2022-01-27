package §0"k§
{
   public class §@!D§ implements §8"T§
   {
       
      
      protected var §?"u§:§1>§;
      
      protected var §`"U§:Object;
      
      protected var §!!-§:String;
      
      protected var §3!u§:String;
      
      protected var §0!=§:String;
      
      public function §@!D§(param1:String, param2:String, param3:String, param4:Object)
      {
         this.§`"U§ = {};
         super();
         this.§0!=§ = param3;
         this.§3!u§ = param2;
         this.§!!-§ = param1;
         this.§?"u§ = new §1>§(this.§3!u§,this.§0!=§,this.§!!-§ + "/fb/friends",true,param4);
      }
      
      public function getTotalScores() : §85§
      {
         return this.§?"u§;
      }
      
      public function §3+§(param1:String, param2:String, param3:Boolean) : §85§
      {
         if(this.§`"U§[param2])
         {
            return this.§`"U§[param2];
         }
         return this.§`"U§[param2] = new §1>§(this.§3!u§,this.§0!=§,this.§!!-§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3,false);
      }
      
      public function §<"P§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§`"U§[_loc2_])
            {
               this.§`"U§[_loc2_] = null;
            }
         }
      }
      
      public function §6!k§(param1:String) : §1>§
      {
         return this.§`"U§[param1];
      }
      
      public function get §+"s§() : int
      {
         if(this.§?"u§ == null)
         {
            return -1;
         }
         return this.§?"u§.§+"s§;
      }
   }
}
