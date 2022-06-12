package § in§
{
   import §%h§.§5X§;
   import §true§.§>"-§;
   import §var§.§&!y§;
   
   public class §=P§ extends §"J§
   {
       
      
      private var §1!4§:Vector.<§>"-§>;
      
      public function §=P§(param1:§5X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§>"-§ = null;
         this.§1!4§ = new Vector.<§>"-§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §>"-§.§0V§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §&!y§.§3!m§(_loc3_.toString(),param1.objects);
            }
            this.§1!4§.push(_loc4_);
         }
      }
      
      override public function update(param1:§5X§) : Boolean
      {
         var _loc3_:§>"-§ = null;
         if(this.§1!4§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§>"-§> = new Vector.<§>"-§>();
         §&!y§.§=f§(this.§1!4§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§1!4§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§>"-§) : Boolean
      {
         if(this.§1!4§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
