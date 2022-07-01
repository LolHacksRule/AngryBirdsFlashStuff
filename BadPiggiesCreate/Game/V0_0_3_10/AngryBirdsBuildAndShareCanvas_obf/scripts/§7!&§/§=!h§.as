package §7!&§
{
   import §&!&§.§1"7§;
   
   public class §=!h§
   {
      
      private static var §1q§:§=!h§;
       
      
      private var §"v§:§1"7§;
      
      private var §+x§:int = 50;
      
      private var §"M§:Vector.<String>;
      
      public function §=!h§()
      {
         super();
         this.§"v§ = new §1"7§(1);
         this.§8!S§();
      }
      
      public static function get §,l§() : §=!h§
      {
         if(§1q§ == null)
         {
            §1q§ = new §=!h§();
         }
         return §1q§;
      }
      
      public function §8!S§() : void
      {
         this.§"M§ = new Vector.<String>();
      }
      
      public function §!g§() : void
      {
         this.§"M§ = null;
      }
      
      public function §-Q§(param1:String) : void
      {
         this.§"M§.push(param1);
      }
      
      public function get §[q§() : int
      {
         return this.§+x§;
      }
      
      public function set §[q§(param1:int) : void
      {
         this.§+x§ = param1;
      }
      
      public function §^"#§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§"M§ == null)
         {
            return true;
         }
         for each(_loc1_ in this.§"M§)
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
