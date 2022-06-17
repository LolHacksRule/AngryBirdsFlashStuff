package §8"§
{
   public class §1$'§ extends § use§
   {
       
      
      private var §-"k§:uint;
      
      private var §0#U§:Boolean;
      
      private var §!"_§:uint;
      
      public function §1$'§(param1:Object)
      {
         super(param1);
         this.§-"k§ = param1.d;
         this.§0#U§ = !!param1.r ? Boolean(param1.r) : false;
         this.§!"_§ = !!param1.p ? uint(param1.p) : uint(0);
      }
      
      public function get day() : uint
      {
         return this.§-"k§;
      }
      
      public function get §7#=§() : Boolean
      {
         return this.§0#U§;
      }
      
      public function get §<"%§() : uint
      {
         return this.§!"_§;
      }
   }
}
