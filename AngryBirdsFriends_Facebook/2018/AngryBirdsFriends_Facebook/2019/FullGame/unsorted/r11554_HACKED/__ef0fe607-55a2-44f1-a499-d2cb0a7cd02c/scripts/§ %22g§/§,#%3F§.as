package § "g§
{
   import §+"u§.§^"C§;
   
   public class §,#?§
   {
       
      
      protected var §=#F§:§5"D§;
      
      protected var §7§:Object;
      
      protected var §@"3§:String;
      
      protected var §0$3§:String;
      
      protected var §4!$§:String;
      
      public function §,#?§(param1:String, param2:String, param3:String)
      {
         this.§7§ = {};
         super();
         this.§4!$§ = param3;
         this.§0$3§ = param2;
         this.§@"3§ = param1;
      }
      
      public function §"C§() : §5"D§
      {
         if(!this.§=#F§)
         {
            this.§=#F§ = new §5"D§(this.§0$3§,this.§4!$§,this.§@"3§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§=#F§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§=#F§ = new §5"D§(this.§0$3§,this.§4!$§,this.§@"3§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §1"'§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §5"D§
      {
         var _loc5_:Object = null;
         if(param4 && this.§7§[param2] && §5"D§(this.§7§[param2]).§6#f§())
         {
            this.§7§[param2].data.sortOn("rank",Array.NUMERIC);
            for each(_loc5_ in this.§7§[param2].data)
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
            return this.§7§[param2];
         }
         return this.§7§[param2] = new §5"D§(this.§0$3§,this.§4!$§,this.§@"3§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2 + "&" + §^"C§.§?q§.§;$&§(),false,null,true,param3,false);
      }
      
      public function §0$0§() : void
      {
         this.§7§ = {};
      }
      
      public function §?#W§(param1:String, param2:String) : Number
      {
         var _loc3_:§5"D§ = this.§7§[param1] as §5"D§;
         return _loc3_.§`#A§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§=#F§ == null)
         {
            return 0;
         }
         return this.§=#F§.§+"b§(this.§0$3§);
      }
      
      public function § $;§() : int
      {
         if(this.§=#F§ == null)
         {
            return 0;
         }
         return this.§=#F§.§3V§(this.§0$3§);
      }
   }
}
