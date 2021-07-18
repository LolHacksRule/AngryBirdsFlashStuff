package §6" §
{
   import §'@§.§^J§;
   
   public class §2y§
   {
      
      private static var §8!L§:§2y§;
       
      
      private var § P§:§^J§;
      
      private var §+x§:int = 50;
      
      private var §;!X§:Vector.<String>;
      
      public function §2y§()
      {
         super();
         this.§ P§ = new §^J§(1);
         this.§ "5§();
      }
      
      public static function get §2=§() : §2y§
      {
         if(§8!L§ == null)
         {
            §8!L§ = new §2y§();
         }
         return §8!L§;
      }
      
      public function § "5§() : void
      {
         this.§;!X§ = new Vector.<String>();
      }
      
      public function §[!y§() : void
      {
         this.§;!X§ = null;
      }
      
      public function §@E§(param1:String) : void
      {
         this.§;!X§.push(param1);
      }
      
      public function get §@"§() : int
      {
         return this.§+x§;
      }
      
      public function set §@"§(param1:int) : void
      {
         this.§+x§ = param1;
      }
      
      public function §-!=§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§;!X§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§;!X§)
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
