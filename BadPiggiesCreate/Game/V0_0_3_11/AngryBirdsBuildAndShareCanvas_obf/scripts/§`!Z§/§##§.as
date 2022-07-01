package §`!Z§
{
   import §1!v§.§@%§;
   import §1z§.§,!b§;
   import §@!P§.§?"%§;
   
   public class §##§ extends §-"4§
   {
       
      
      private var §>i§:Vector.<§?"%§>;
      
      public function §##§(param1:§@%§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§?"%§ = null;
         this.§>i§ = new Vector.<§?"%§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §?"%§.§3! §(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §,!b§.§3!-§(_loc3_.toString(),param1.objects);
            }
            this.§>i§.push(_loc4_);
         }
      }
      
      override public function update(param1:§@%§) : Boolean
      {
         var _loc3_:§?"%§ = null;
         if(this.§>i§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§?"%§> = new Vector.<§?"%§>();
         §,!b§.§2!i§(this.§>i§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§>i§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§?"%§) : Boolean
      {
         if(this.§>i§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
