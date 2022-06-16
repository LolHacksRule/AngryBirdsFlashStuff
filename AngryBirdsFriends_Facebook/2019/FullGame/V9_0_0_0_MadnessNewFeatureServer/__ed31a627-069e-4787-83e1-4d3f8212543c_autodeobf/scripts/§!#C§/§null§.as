package §!#C§
{
   import §"z§.§]#q§;
   
   public class §null§ extends §7C§
   {
      
      public static const §%l§:String = "VirtualCurrency";
      
      public static const §=#k§:String = "Bird Coins";
       
      
      private var §="d§:int = 0;
      
      public function §null§(param1:Object)
      {
         super(param1);
      }
      
      public function get §<B§() : int
      {
         return this.§="d§;
      }
      
      public function §`j§(param1:int) : void
      {
         this.§ "Y§(this.§="d§ + param1);
      }
      
      public function § "Y§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§="d§;
         var _loc4_:int = param1 - _loc3_;
         this.§="d§ = param1;
         if(!param2)
         {
            this.§%B§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §%B§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §]#q§(§]#q§.§3#g§,false,false,param1,this.§="d§));
         }
      }
   }
}
