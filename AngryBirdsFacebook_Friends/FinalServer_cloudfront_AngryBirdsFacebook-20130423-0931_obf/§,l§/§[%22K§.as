package §,l§
{
   import §&S§.§-!Y§;
   
   public class §["K§ extends §]! §
   {
      
      public static const §0#§:String = "VirtualCurrency";
      
      public static const §9",§:String = "Bird Coins";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0#§ = "VirtualCurrency";
         }
         do
         {
            §9",§ = "Bird Coins";
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §1J§:int = 0;
      
      public function §["K§(param1:Object)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super(param1);
         }
      }
      
      public function get §0Q§() : int
      {
         return this.§1J§;
      }
      
      public function §4G§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'"T§(this.§1J§ + param1);
         }
      }
      
      public function §'"T§(param1:int, param2:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§1J§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() - _loc3_));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            this.§1J§ = param1;
         }
         while(!param2)
         {
            if(_loc6_)
            {
               break;
            }
            addr77:
            if(!(_loc5_ || param2))
            {
               continue;
            }
            this.§0!N§(_loc4_);
            §§goto(addr77);
         }
         return _loc4_;
      }
      
      public function §0!N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §-!Y§(§-!Y§.§`A§,false,false,param1,this.§1J§));
         }
      }
   }
}
