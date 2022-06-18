package §3#t§
{
   import §4#$§.§5"L§;
   
   public class §>!H§
   {
       
      
      protected var §%t§:§51§;
      
      protected var §9!G§:Object;
      
      protected var §1$$§:String;
      
      protected var §'H§:String;
      
      protected var §[O§:String;
      
      public function §>!H§(param1:String, param2:String, param3:String)
      {
         this.§9!G§ = {};
         super();
         this.§[O§ = param3;
         this.§'H§ = param2;
         this.§1$$§ = param1;
      }
      
      public function §@"S§() : §51§
      {
         if(!this.§%t§)
         {
            this.§%t§ = new §51§(this.§'H§,this.§[O§,this.§1$$§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§%t§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§%t§ = new §51§(this.§'H§,this.§[O§,this.§1$$§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §?"x§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §51§
      {
         var _loc5_:Object = null;
         if(param4 && this.§9!G§[param2] && §51§(this.§9!G§[param2]).§4"§())
         {
            this.§9!G§[param2].data.sortOn("rank",Array.NUMERIC);
            for each(_loc5_ in this.§9!G§[param2].data)
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
            return this.§9!G§[param2];
         }
         return this.§9!G§[param2] = new §51§(this.§'H§,this.§[O§,this.§1$$§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2 + "&" + §5"L§.§3"1§.§ !U§(),false,null,true,param3,false);
      }
      
      public function §3H§() : void
      {
         this.§9!G§ = {};
      }
      
      public function §&#i§(param1:String, param2:String) : Number
      {
         var _loc3_:§51§ = this.§9!G§[param1] as §51§;
         return _loc3_.§`!d§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§%t§ == null)
         {
            return 0;
         }
         return this.§%t§.§9!^§(this.§'H§);
      }
      
      public function §6#1§() : int
      {
         if(this.§%t§ == null)
         {
            return 0;
         }
         return this.§%t§.§'"x§(this.§'H§);
      }
   }
}
