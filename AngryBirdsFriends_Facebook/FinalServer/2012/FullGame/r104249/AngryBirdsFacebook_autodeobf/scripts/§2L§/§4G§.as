package §2L§
{
   public class §4G§
   {
       
      
      protected var §"L§:§`W§;
      
      protected var §+!n§:Object;
      
      protected var §0Z§:String;
      
      protected var §&"7§:String;
      
      protected var §8" §:String;
      
      public function §4G§(param1:String, param2:String, param3:String)
      {
         this.§+!n§ = {};
         super();
         this.§8" § = param3;
         this.§&"7§ = param2;
         this.§0Z§ = param1;
      }
      
      public function §<!O§() : §`W§
      {
         if(!this.§"L§)
         {
            this.§"L§ = new §`W§(this.§&"7§,this.§8" §,this.§0Z§ + "/fb/friends",true);
         }
         return this.§"L§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§"L§ = new §`W§(this.§&"7§,this.§8" §,this.§0Z§ + "/fb/friends",true,param1);
      }
      
      public function §""<§(param1:String, param2:String, param3:Boolean = false) : §`W§
      {
         if(this.§+!n§[param2])
         {
            return this.§+!n§[param2];
         }
         return this.§+!n§[param2] = new §`W§(this.§&"7§,this.§8" §,this.§0Z§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §4"&§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§+!n§[_loc2_])
            {
               this.§+!n§[_loc2_] = null;
            }
         }
      }
      
      public function §4!-§(param1:String) : §`W§
      {
         return this.§+!n§[param1];
      }
      
      public function get §^M§() : int
      {
         if(this.§"L§ == null)
         {
            return -1;
         }
         return this.§"L§.§^M§;
      }
      
      public function getTotalStars() : int
      {
         if(this.§"L§ == null)
         {
            return 0;
         }
         return this.§"L§.§&!b§(this.§&"7§);
      }
   }
}
