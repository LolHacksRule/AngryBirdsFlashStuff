package §&"J§
{
   import §%y§.§,"M§;
   
   public class §6$0§ extends §6r§
   {
      
      public static const §3#j§:String = "VirtualCurrency";
      
      public static const §=!s§:String = "Bird Coins";
       
      
      private var §;!P§:int = 0;
      
      public function §6$0§(param1:Object)
      {
         super(param1);
      }
      
      public function get §5##§() : int
      {
         return this.§;!P§;
      }
      
      public function §;9§(param1:int) : void
      {
         this.§`"p§(this.§;!P§ + param1);
      }
      
      public function §`"p§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§;!P§;
         var _loc4_:int = param1 - _loc3_;
         this.§;!P§ = param1;
         if(!param2)
         {
            this.§<!E§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §<!E§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §,"M§(§,"M§.§6#x§,false,false,param1,this.§;!P§));
         }
      }
   }
}
