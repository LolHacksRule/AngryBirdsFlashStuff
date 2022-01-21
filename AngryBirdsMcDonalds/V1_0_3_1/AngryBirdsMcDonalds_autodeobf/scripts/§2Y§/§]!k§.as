package §2Y§
{
   import flash.utils.getTimer;
   
   public class §]!k§
   {
       
      
      private var mName:String;
      
      private var §=m§:String;
      
      private var §]!8§:String;
      
      private var §1!0§:String;
      
      private var §4b§:uint;
      
      private var §"!%§:uint;
      
      private var §7[§:uint;
      
      private var §67§:Boolean = false;
      
      public function §]!k§()
      {
         super();
         this.§7[§ = getTimer();
      }
      
      public function get §'u§() : Boolean
      {
         return this.§67§;
      }
      
      public function set §'u§(param1:Boolean) : void
      {
         this.§67§ = param1;
      }
      
      public function get §>!n§() : String
      {
         return this.§1!0§;
      }
      
      public function set §>!n§(param1:String) : void
      {
         this.§1!0§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get email() : String
      {
         return this.§=m§;
      }
      
      public function set email(param1:String) : void
      {
         this.§=m§ = param1;
      }
      
      public function get password() : String
      {
         return this.§]!8§;
      }
      
      public function set password(param1:String) : void
      {
         this.§]!8§ = param1;
      }
      
      public function get §'_§() : uint
      {
         this.§4b§ = getTimer() - this.§7[§;
         return this.§4b§;
      }
      
      public function get §8!i§() : uint
      {
         return this.§"!%§;
      }
      
      public function set §8!i§(param1:uint) : void
      {
         this.§"!%§ = param1;
      }
      
      public function get §'!!§() : Boolean
      {
         if(this.§>!n§ != null && this.§>!n§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
