package §_-0EZ§
{
   public class §_-7n§
   {
       
      
      protected var §_-TI§:§_-48§;
      
      protected var §_-n8§:Object;
      
      protected var §_-pl§:String;
      
      protected var §_-ck§:String;
      
      protected var §_-TT§:String;
      
      public function §_-7n§(param1:String, param2:String, param3:String)
      {
         this.§_-n8§ = {};
         super();
         this.§_-TT§ = param3;
         this.§_-ck§ = param2;
         this.§_-pl§ = param1;
      }
      
      public function §_-0-1§() : §_-48§
      {
         if(!this.§_-TI§)
         {
            this.§_-TI§ = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/fb/friends",true);
         }
         return this.§_-TI§;
      }
      
      public function §_-067§(param1:Object) : void
      {
         this.§_-TI§ = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/fb/friends",true,param1);
      }
      
      public function §_-0z§(param1:String, param2:String, param3:Boolean = false) : §_-48§
      {
         if(this.§_-n8§[param2])
         {
            return this.§_-n8§[param2];
         }
         return this.§_-n8§[param2] = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §_-Ty§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§_-n8§[_loc2_])
            {
               this.§_-n8§[_loc2_] = null;
            }
         }
      }
      
      public function §_-Dp§(param1:String) : §_-48§
      {
         return this.§_-n8§[param1];
      }
      
      public function get §_-wX§() : int
      {
         if(this.§_-TI§ == null)
         {
            return -1;
         }
         return this.§_-TI§.§_-wX§;
      }
   }
}
