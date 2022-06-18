package §[G§
{
   public class §9#R§
   {
       
      
      protected var §@"p§:§4!0§;
      
      protected var §19§:Object;
      
      protected var §3#?§:String;
      
      protected var §[#n§:String;
      
      protected var §"!W§:String;
      
      public function §9#R§(param1:String, param2:String, param3:String)
      {
         this.§19§ = {};
         super();
         this.§"!W§ = param3;
         this.§[#n§ = param2;
         this.§3#?§ = param1;
      }
      
      public function §&#_§() : §4!0§
      {
         if(!this.§@"p§)
         {
            this.§@"p§ = new §4!0§(this.§[#n§,this.§"!W§,this.§3#?§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§@"p§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§@"p§ = new §4!0§(this.§[#n§,this.§"!W§,this.§3#?§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §#"h§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §4!0§
      {
         var _loc5_:Object = null;
         if(param4 && this.§19§[param2] && §4!0§(this.§19§[param2]).§73§())
         {
            this.§19§[param2].data.sortOn("levelScore",Array.DESCENDING | Array.NUMERIC);
            for each(_loc5_ in this.§19§[param2].data)
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
            return this.§19§[param2];
         }
         return this.§19§[param2] = new §4!0§(this.§[#n§,this.§"!W§,this.§3#?§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2,false,null,true,param3,false);
      }
      
      public function §'!%§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§19§[_loc2_])
            {
               this.§19§[_loc2_] = null;
            }
         }
      }
      
      public function §"#4§(param1:String, param2:String) : Number
      {
         var _loc3_:§4!0§ = this.§19§[param1] as §4!0§;
         return _loc3_.§>#>§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§@"p§ == null)
         {
            return 0;
         }
         return this.§@"p§.§8$-§(this.§[#n§);
      }
      
      public function §7#k§() : int
      {
         if(this.§@"p§ == null)
         {
            return 0;
         }
         return this.§@"p§.§5"T§(this.§[#n§);
      }
   }
}
