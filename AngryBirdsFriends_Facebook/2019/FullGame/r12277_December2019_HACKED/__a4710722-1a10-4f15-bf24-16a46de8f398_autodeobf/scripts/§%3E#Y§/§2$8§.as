package §>#Y§
{
   import §<M§.§2"B§;
   
   public class §2$8§ extends §`#Y§
   {
      
      public static const §,"p§:String = "VirtualCurrency";
      
      public static const §4#3§:String = "Bird Coins";
       
      
      private var §>Z§:int = 0;
      
      public function §2$8§(param1:Object)
      {
         super(param1);
      }
      
      public function get §5"i§() : int
      {
         return this.§>Z§;
      }
      
      public function §#"u§(param1:int) : void
      {
         this.§finally§(this.§>Z§ + param1);
      }
      
      public function §finally§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§>Z§;
         var _loc4_:int = param1 - _loc3_;
         this.§>Z§ = param1;
         if(!param2)
         {
            this.§2#$§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §2#$§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §2"B§(§2"B§.§9"2§,false,false,param1,this.§>Z§));
         }
      }
   }
}
