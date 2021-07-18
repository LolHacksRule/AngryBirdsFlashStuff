package §,l§
{
   import §&S§.§-!Y§;
   
   public class §["K§ extends §]! §
   {
      
      public static const §0#§:String = "VirtualCurrency";
      
      public static const §9",§:String = "Bird Coins";
       
      
      private var §1J§:int = 0;
      
      public function §["K§(param1:Object)
      {
         super(param1);
      }
      
      public function get §0Q§() : int
      {
         return this.§1J§;
      }
      
      public function §4G§(param1:int) : void
      {
         this.§'"T§(this.§1J§ + param1);
      }
      
      public function §'"T§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§1J§;
         var _loc4_:int = param1 - _loc3_;
         this.§1J§ = param1;
         if(!param2)
         {
            this.§0!N§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §0!N§(param1:int) : void
      {
         dispatchEvent(new §-!Y§(§-!Y§.§`A§,false,false,param1,this.§1J§));
      }
   }
}
