package §0"B§
{
   import §<!r§.§'##§;
   
   public class §6$5§
   {
       
      
      protected var §,x§:§##G§;
      
      protected var §="$§:Object;
      
      protected var §0#`§:String;
      
      protected var §1#h§:String;
      
      protected var §]#X§:String;
      
      public function §6$5§(param1:String, param2:String, param3:String)
      {
         this.§="$§ = {};
         super();
         this.§]#X§ = param3;
         this.§1#h§ = param2;
         this.§0#`§ = param1;
      }
      
      public function §"X§() : §##G§
      {
         if(!this.§,x§)
         {
            this.§,x§ = new §##G§(this.§1#h§,this.§]#X§,this.§0#`§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§,x§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§,x§ = new §##G§(this.§1#h§,this.§]#X§,this.§0#`§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §3"Z§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §##G§
      {
         var _loc5_:Object = null;
         if(param4 && this.§="$§[param2] && §##G§(this.§="$§[param2]).§8"F§())
         {
            this.§="$§[param2].data.sortOn("rank",Array.NUMERIC);
            for each(_loc5_ in this.§="$§[param2].data)
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
            return this.§="$§[param2];
         }
         return this.§="$§[param2] = new §##G§(this.§1#h§,this.§]#X§,this.§0#`§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2 + "&" + §'##§.§`"H§.§'"H§(),false,null,true,param3,false);
      }
      
      public function §-"K§() : void
      {
         this.§="$§ = {};
      }
      
      public function §5!0§(param1:String, param2:String) : Number
      {
         var _loc3_:§##G§ = this.§="$§[param1] as §##G§;
         return _loc3_.§ #P§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§,x§ == null)
         {
            return 0;
         }
         return this.§,x§.§5!&§(this.§1#h§);
      }
      
      public function §7$#§() : int
      {
         if(this.§,x§ == null)
         {
            return 0;
         }
         return this.§,x§.§'W§(this.§1#h§);
      }
   }
}
