package §%!W§
{
   import §,!!§.§0"!§;
   
   public class §7!<§
   {
      
      private static var §#>§:§7!<§;
       
      
      private var §2a§:§0"!§;
      
      private var §<!9§:int = 50;
      
      private var §@">§:Vector.<String>;
      
      public function §7!<§()
      {
         super();
         this.§2a§ = new §0"!§(1);
         this.§>!!§();
      }
      
      public static function get §7!?§() : §7!<§
      {
         if(§#>§ == null)
         {
            §#>§ = new §7!<§();
         }
         return §#>§;
      }
      
      public function §>!!§() : void
      {
         this.§@">§ = new Vector.<String>();
      }
      
      public function §8!Y§() : void
      {
         this.§@">§ = null;
      }
      
      public function §#x§(param1:String) : void
      {
         this.§@">§.push(param1);
      }
      
      public function get §!!2§() : int
      {
         return this.§<!9§;
      }
      
      public function set §!!2§(param1:int) : void
      {
         this.§<!9§ = param1;
      }
      
      public function §1"-§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§@">§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§@">§)
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
