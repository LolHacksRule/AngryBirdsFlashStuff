package §2G§
{
   import §&T§.§>#Q§;
   
   public class §"G§ extends §;G§
   {
      
      public static const §6!@§:String = "VirtualCurrency";
      
      public static const §'!e§:String = "Bird Coins";
       
      
      private var §[$$§:int = 0;
      
      public function §"G§(param1:Object)
      {
         super(param1);
      }
      
      public function get §##!§() : int
      {
         return this.§[$$§;
      }
      
      public function §%!`§(param1:int) : void
      {
         this.§6!w§(this.§[$$§ + param1);
      }
      
      public function §6!w§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§[$$§;
         var _loc4_:int = param1 - _loc3_;
         this.§[$$§ = param1;
         if(!param2)
         {
            this.§8!!§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §8!!§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §>#Q§(§>#Q§.§,!d§,false,false,param1,this.§[$$§));
         }
      }
   }
}
