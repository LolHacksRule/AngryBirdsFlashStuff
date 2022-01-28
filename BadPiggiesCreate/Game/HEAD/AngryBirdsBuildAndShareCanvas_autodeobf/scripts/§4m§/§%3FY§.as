package §4m§
{
   import §%!0§.§,4§;
   import §7t§.§7a§;
   import §;" §.§5_§;
   
   public class §?Y§ extends §9g§
   {
       
      
      private var §9n§:Vector.<§7a§>;
      
      public function §?Y§(param1:§,4§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§7a§ = null;
         this.§9n§ = new Vector.<§7a§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §7a§.§^!g§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §5_§.§<!v§(_loc3_.toString(),param1.objects);
            }
            this.§9n§.push(_loc4_);
         }
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         var _loc3_:§7a§ = null;
         if(this.§9n§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§7a§> = new Vector.<§7a§>();
         §5_§.§<!i§(this.§9n§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§9n§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         if(this.§9n§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
