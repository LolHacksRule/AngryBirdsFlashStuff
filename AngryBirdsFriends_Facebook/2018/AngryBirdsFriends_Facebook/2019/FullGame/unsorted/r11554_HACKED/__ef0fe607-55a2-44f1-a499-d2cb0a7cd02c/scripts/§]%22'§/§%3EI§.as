package §]"'§
{
   import §,#C§.§<! §;
   
   public class §>I§ extends §"$>§
   {
      
      public static const § !C§:String = "VirtualCurrency";
      
      public static const §#!J§:String = "Bird Coins";
       
      
      private var §5#x§:int = 0;
      
      public function §>I§(param1:Object)
      {
         super(param1);
      }
      
      public function get §"$6§() : int
      {
         return this.§5#x§;
      }
      
      public function §&a§(param1:int) : void
      {
         this.§2#[§(this.§5#x§ + param1);
      }
      
      public function §2#[§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§5#x§;
         var _loc4_:int = param1 - _loc3_;
         this.§5#x§ = param1;
         if(!param2)
         {
            this.§8P§(_loc4_);
         }
         return _loc4_;
      }
      
      public function §8P§(param1:int) : void
      {
         if(param1 != 0)
         {
            dispatchEvent(new §<! §(§<! §.§1#5§,false,false,param1,this.§5#x§));
         }
      }
   }
}
