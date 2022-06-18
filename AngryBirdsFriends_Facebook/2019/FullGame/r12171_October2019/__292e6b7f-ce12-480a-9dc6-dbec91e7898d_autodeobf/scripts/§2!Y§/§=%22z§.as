package §2!Y§
{
   import §`,§.§7!$§;
   
   public class §="z§
   {
       
      
      protected var §]!,§:§4!h§;
      
      protected var §&#D§:Object;
      
      protected var §!#s§:String;
      
      protected var §5"U§:String;
      
      protected var §[#z§:String;
      
      public function §="z§(param1:String, param2:String, param3:String)
      {
         this.§&#D§ = {};
         super();
         this.§[#z§ = param3;
         this.§5"U§ = param2;
         this.§!#s§ = param1;
      }
      
      public function §!#S§() : §4!h§
      {
         if(!this.§]!,§)
         {
            this.§]!,§ = new §4!h§(this.§5"U§,this.§[#z§,this.§!#s§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§]!,§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§]!,§ = new §4!h§(this.§5"U§,this.§[#z§,this.§!#s§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §&#@§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §4!h§
      {
         var _loc5_:Object = null;
         if(param4 && this.§&#D§[param2] && §4!h§(this.§&#D§[param2]).§=#R§())
         {
            this.§&#D§[param2].data.sortOn("rank",Array.NUMERIC);
            for each(_loc5_ in this.§&#D§[param2].data)
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
            return this.§&#D§[param2];
         }
         return this.§&#D§[param2] = new §4!h§(this.§5"U§,this.§[#z§,this.§!#s§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2 + "&" + §7!$§.§+!,§.§]!>§(),false,null,true,param3,false);
      }
      
      public function §]"?§() : void
      {
         this.§&#D§ = {};
      }
      
      public function §##k§(param1:String, param2:String) : Number
      {
         var _loc3_:§4!h§ = this.§&#D§[param1] as §4!h§;
         return _loc3_.§+$ §(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§]!,§ == null)
         {
            return 0;
         }
         return this.§]!,§.§8"b§(this.§5"U§);
      }
      
      public function § "B§() : int
      {
         if(this.§]!,§ == null)
         {
            return 0;
         }
         return this.§]!,§.§?B§(this.§5"U§);
      }
   }
}
