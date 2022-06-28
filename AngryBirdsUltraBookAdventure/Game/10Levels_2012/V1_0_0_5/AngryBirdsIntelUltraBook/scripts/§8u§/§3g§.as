package §8u§
{
   public class §3g§
   {
       
      
      protected var §0i§:§9=§;
      
      protected var §`h§:Object;
      
      protected var §3l§:String;
      
      protected var § u§:String;
      
      protected var §&i§:String;
      
      public function §3g§(param1:String, param2:String, param3:String)
      {
         this.§`h§ = {};
         super();
         this.§&i§ = param3;
         this.§ u§ = param2;
         this.§3l§ = param1;
      }
      
      public function §&H§() : §9=§
      {
         if(!this.§0i§)
         {
            this.§0i§ = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/fb/friends",true);
         }
         return this.§0i§;
      }
      
      public function §5!J§(param1:Object) : void
      {
         this.§0i§ = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/fb/friends",true,param1);
      }
      
      public function §8!6§(param1:String, param2:String, param3:Boolean = false) : §9=§
      {
         if(this.§`h§[param2])
         {
            return this.§`h§[param2];
         }
         return this.§`h§[param2] = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §0L§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§`h§[_loc2_])
            {
               this.§`h§[_loc2_] = null;
            }
         }
      }
      
      public function §0!§(param1:String) : §9=§
      {
         return this.§`h§[param1];
      }
      
      public function get §5O§() : int
      {
         if(this.§0i§ == null)
         {
            return -1;
         }
         return this.§0i§.§5O§;
      }
   }
}
