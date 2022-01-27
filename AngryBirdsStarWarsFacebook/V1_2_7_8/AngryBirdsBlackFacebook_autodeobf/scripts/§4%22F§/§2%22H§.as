package §4"F§
{
   import §7A§.§5"2§;
   
   public class §2"H§
   {
       
      
      public var §`!i§:§5"2§;
      
      public function §2"H§()
      {
         this.§`!i§ = new §5"2§();
         super();
      }
      
      public function initialize(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               this.§`!i§[_loc2_] = param1[_loc2_][0];
            }
         }
      }
   }
}
