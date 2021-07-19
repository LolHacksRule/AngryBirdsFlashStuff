package §;4§
{
   public class §9X§
   {
       
      
      protected var §`"r§:§2!]§;
      
      protected var §%"O§:Object;
      
      protected var §3"=§:String;
      
      protected var §%"6§:String;
      
      protected var §&$4§:String;
      
      public function §9X§(param1:String, param2:String, param3:String)
      {
         this.§%"O§ = {};
         super();
         this.§&$4§ = param3;
         this.§%"6§ = param2;
         this.§3"=§ = param1;
      }
      
      public function §%!P§() : §2!]§
      {
         if(!this.§`"r§)
         {
            this.§`"r§ = new §2!]§(this.§%"6§,this.§&$4§,this.§3"=§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§`"r§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§`"r§ = new §2!]§(this.§%"6§,this.§&$4§,this.§3"=§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §&"r§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §2!]§
      {
         var _loc5_:Object = null;
         if(param4 && this.§%"O§[param2] && §2!]§(this.§%"O§[param2]).§[$ §())
         {
            this.§%"O§[param2].data.sortOn("levelScore",Array.DESCENDING | Array.NUMERIC);
            for each(_loc5_ in this.§%"O§[param2].data)
            {
               if(_loc5_.targetOffset)
               {
                  _loc5_.targetOffset = 0;
               }
               if(_loc5_.offset)
               {
                  _loc5_.offset = 0;
               }
               if(_loc5_.beaten)
               {
                  _loc5_.beaten = false;
               }
            }
            return this.§%"O§[param2];
         }
         return this.§%"O§[param2] = new §2!]§(this.§%"6§,this.§&$4§,this.§3"=§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2,false,null,true,param3,false);
      }
      
      public function §#"Z§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§%"O§[_loc2_])
            {
               this.§%"O§[_loc2_] = null;
            }
         }
      }
      
      public function §'$;§(param1:String, param2:String) : Number
      {
         var _loc3_:§2!]§ = this.§%"O§[param1] as §2!]§;
         return _loc3_.§^$1§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§`"r§ == null)
         {
            return 0;
         }
         return this.§`"r§.§&$8§(this.§%"6§);
      }
      
      public function §9#D§() : int
      {
         if(this.§`"r§ == null)
         {
            return 0;
         }
         return this.§`"r§.§]a§(this.§%"6§);
      }
   }
}
