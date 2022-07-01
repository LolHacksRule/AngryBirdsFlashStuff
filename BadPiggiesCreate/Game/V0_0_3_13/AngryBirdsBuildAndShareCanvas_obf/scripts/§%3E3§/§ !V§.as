package §>3§
{
   import §4!S§.§="%§;
   import §8!E§.§?!X§;
   import §=%§.§<A§;
   
   public class § !V§ extends §4%§
   {
       
      
      private var §+"'§:Vector.<§<A§>;
      
      public function § !V§(param1:§?!X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§<A§ = null;
         this.§+"'§ = new Vector.<§<A§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §<A§.§5y§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §="%§.§&!c§(_loc3_.toString(),param1.objects);
            }
            this.§+"'§.push(_loc4_);
         }
      }
      
      override public function update(param1:§?!X§) : Boolean
      {
         var _loc3_:§<A§ = null;
         if(this.§+"'§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§<A§> = new Vector.<§<A§>();
         §="%§.§"+§(this.§+"'§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§+"'§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§<A§) : Boolean
      {
         if(this.§+"'§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
