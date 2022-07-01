package §]!l§
{
   import §,E§.§ t§;
   
   public class §<3§
   {
      
      private static var §!!>§:§<3§;
       
      
      private var §<Q§:§ t§;
      
      private var §]J§:int = 50;
      
      private var §[! §:Vector.<String>;
      
      public function §<3§()
      {
         super();
         this.§<Q§ = new § t§(1);
         this.§-b§();
      }
      
      public static function get §9j§() : §<3§
      {
         if(§!!>§ == null)
         {
            §!!>§ = new §<3§();
         }
         return §!!>§;
      }
      
      public function §-b§() : void
      {
         this.§[! § = new Vector.<String>();
      }
      
      public function §'O§() : void
      {
         this.§[! § = null;
      }
      
      public function §`x§(param1:String) : void
      {
         this.§[! §.push(param1);
      }
      
      public function get §7!=§() : int
      {
         return this.§]J§;
      }
      
      public function set §7!=§(param1:int) : void
      {
         this.§]J§ = param1;
      }
      
      public function §2F§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§[! § == null)
         {
            return true;
         }
         for each(_loc1_ in this.§[! §)
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
