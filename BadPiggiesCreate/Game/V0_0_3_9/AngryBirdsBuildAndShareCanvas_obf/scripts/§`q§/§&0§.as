package §`q§
{
   import §%%§.§7!O§;
   import §&"8§.§]!0§;
   import §=b§.§-!K§;
   
   public class §&0§ extends §;d§
   {
       
      
      private var §var §:Vector.<§7!O§>;
      
      public function §&0§(param1:§-!K§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§7!O§ = null;
         this.§var § = new Vector.<§7!O§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §7!O§.§-n§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §]!0§.§,!L§(_loc3_.toString(),param1.objects);
            }
            this.§var §.push(_loc4_);
         }
      }
      
      override public function update(param1:§-!K§) : Boolean
      {
         var _loc3_:§7!O§ = null;
         if(this.§var §.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§7!O§> = new Vector.<§7!O§>();
         §]!0§.§8Z§(this.§var §[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§var §)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§7!O§) : Boolean
      {
         if(this.§var §.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
