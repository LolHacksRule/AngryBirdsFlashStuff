package §"!!§
{
   import §8#!§.§5`§;
   
   public class §!"&§
   {
       
      
      protected var §]"7§:§+"0§;
      
      protected var §6!z§:Object;
      
      protected var §^"j§:String;
      
      protected var §["L§:String;
      
      protected var §2!q§:String;
      
      public function §!"&§(param1:String, param2:String, param3:String)
      {
         this.§6!z§ = {};
         super();
         this.§2!q§ = param3;
         this.§["L§ = param2;
         this.§^"j§ = param1;
      }
      
      public function §3!-§() : §+"0§
      {
         if(!this.§]"7§)
         {
            this.§]"7§ = new §+"0§(this.§["L§,this.§2!q§,this.§^"j§ + "/friends/getOverallScores?forceRefresh=true",true,null,true);
         }
         return this.§]"7§;
      }
      
      public function injectData(param1:Object) : void
      {
         this.§]"7§ = new §+"0§(this.§["L§,this.§2!q§,this.§^"j§ + "/friends/getOverallScores?forceRefresh=true",true,param1,true);
      }
      
      public function §?@§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : §+"0§
      {
         var _loc5_:Object = null;
         if(param4 && this.§6!z§[param2] && §+"0§(this.§6!z§[param2]).§>";§())
         {
            this.§6!z§[param2].data.sortOn("rank",Array.NUMERIC);
            for each(_loc5_ in this.§6!z§[param2].data)
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
            return this.§6!z§[param2];
         }
         return this.§6!z§[param2] = new §+"0§(this.§["L§,this.§2!q§,this.§^"j§ + "/scores/getLevelScores?limit=1000&episode=" + param1 + "&level=" + param2 + "&" + §5`§.§6!§.§7j§(),false,null,true,param3,false);
      }
      
      public function §?g§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§6!z§[_loc2_])
            {
               this.§6!z§[_loc2_] = null;
            }
         }
      }
      
      public function §0#T§(param1:String, param2:String) : Number
      {
         var _loc3_:§+"0§ = this.§6!z§[param1] as §+"0§;
         return _loc3_.§ "R§(param2);
      }
      
      public function getTotalStars() : int
      {
         if(this.§]"7§ == null)
         {
            return 0;
         }
         return this.§]"7§.§'"J§(this.§["L§);
      }
      
      public function §?#Q§() : int
      {
         if(this.§]"7§ == null)
         {
            return 0;
         }
         return this.§]"7§.§3!T§(this.§["L§);
      }
   }
}
