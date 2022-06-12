package §1!"§
{
   import §-!^§.§<s§;
   
   public class §<=§
   {
      
      private static var §&!Z§:§<=§;
       
      
      private var §`!d§:§<s§;
      
      private var §=D§:int = 50;
      
      private var §?!?§:Vector.<String>;
      
      public function §<=§()
      {
         super();
         this.§`!d§ = new §<s§(1);
         this.§?Q§();
      }
      
      public static function get § "!§() : §<=§
      {
         if(§&!Z§ == null)
         {
            §&!Z§ = new §<=§();
         }
         return §&!Z§;
      }
      
      public function §?Q§() : void
      {
         this.§?!?§ = new Vector.<String>();
      }
      
      public function §1,§() : void
      {
         this.§?!?§ = null;
      }
      
      public function §;!$§(param1:String) : void
      {
         this.§?!?§.push(param1);
      }
      
      public function get §"x§() : int
      {
         return this.§=D§;
      }
      
      public function set §"x§(param1:int) : void
      {
         this.§=D§ = param1;
      }
      
      public function §1d§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§?!?§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§?!?§)
         {
            if(_loc1_.indexOf("BIRD_") == 0)
            {
               return true;
            }
         }
         return false;
      }
   }
}
