package §%"$§
{
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   
   public class §[5§ extends §[!0§
   {
       
      
      private var §84§:Vector.<§=q§>;
      
      public function §[5§(param1:§!w§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§=q§ = null;
         this.§84§ = new Vector.<§=q§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §=q§.§0"§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §`8§.§"!h§(_loc3_.toString(),param1.objects);
            }
            this.§84§.push(_loc4_);
         }
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         var _loc3_:§=q§ = null;
         if(this.§84§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§=q§> = new Vector.<§=q§>();
         §`8§.§]+§(this.§84§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§84§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         if(this.§84§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
