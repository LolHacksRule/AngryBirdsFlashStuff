package §%$!§
{
   import §#!s§.§0G§;
   
   public class §=]§ extends §<,§
   {
      
      public static const §;Q§:String = "VirtualCurrency";
      
      public static const §^!H§:String = "Bird Coins";
       
      
      private var §^#>§:int = 0;
      
      public function §=]§(param1:Object)
      {
         super(param1);
      }
      
      public function get §[#u§() : int
      {
         return this.§^#>§;
      }
      
      public function §]X§(param1:int) : void
      {
         this.§1u§(this.§^#>§ + param1);
      }
      
      public function §1u§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§^#>§;
         var _loc4_:int = param1 - _loc3_;
         this.§^#>§ = param1;
         if(!param2)
         {
            this.§'$"§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §'$"§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §0G§(§0G§.§ !&§,false,false,param1,this.§^#>§));
         }
      }
   }
}
