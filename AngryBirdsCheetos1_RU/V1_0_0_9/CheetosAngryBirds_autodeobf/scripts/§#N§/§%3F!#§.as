package §#N§
{
   import flash.utils.getTimer;
   
   public class §?!#§
   {
       
      
      private var mName:String;
      
      private var §9!$§:String;
      
      private var §'q§:String;
      
      private var §&T§:String;
      
      private var § p§:uint;
      
      private var §"@§:uint;
      
      private var §93§:uint;
      
      private var § !A§:Boolean = false;
      
      public function §?!#§()
      {
         super();
         this.§93§ = getTimer();
      }
      
      public function get §@!%§() : Boolean
      {
         return this.§ !A§;
      }
      
      public function set §@!%§(param1:Boolean) : void
      {
         this.§ !A§ = param1;
      }
      
      public function get §=!U§() : String
      {
         return this.§&T§;
      }
      
      public function set §=!U§(param1:String) : void
      {
         this.§&T§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §0C§() : String
      {
         return this.§9!$§;
      }
      
      public function set §0C§(param1:String) : void
      {
         this.§9!$§ = param1;
      }
      
      public function get §7![§() : String
      {
         return this.§'q§;
      }
      
      public function set §7![§(param1:String) : void
      {
         this.§'q§ = param1;
      }
      
      public function get §8b§() : uint
      {
         this.§ p§ = getTimer() - this.§93§;
         return this.§ p§;
      }
      
      public function get §[m§() : uint
      {
         return this.§"@§;
      }
      
      public function set §[m§(param1:uint) : void
      {
         this.§"@§ = param1;
      }
      
      public function get §88§() : Boolean
      {
         if(this.§=!U§ != null && this.§=!U§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
