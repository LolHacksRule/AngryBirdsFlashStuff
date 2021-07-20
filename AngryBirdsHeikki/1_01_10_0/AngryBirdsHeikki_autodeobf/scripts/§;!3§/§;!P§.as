package §;!3§
{
   import flash.utils.getTimer;
   
   public class §;!P§
   {
       
      
      private var mName:String;
      
      private var §6u§:String;
      
      private var §]<§:String;
      
      private var §,!O§:String;
      
      private var §#k§:uint;
      
      private var §%!%§:uint;
      
      private var §-o§:uint;
      
      private var § R§:Boolean = false;
      
      public function §;!P§()
      {
         super();
         this.§-o§ = getTimer();
      }
      
      public function get §7L§() : Boolean
      {
         return this.§ R§;
      }
      
      public function set §7L§(param1:Boolean) : void
      {
         this.§ R§ = param1;
      }
      
      public function get §]_§() : String
      {
         return this.§,!O§;
      }
      
      public function set §]_§(param1:String) : void
      {
         this.§,!O§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §5!D§() : String
      {
         return this.§6u§;
      }
      
      public function set §5!D§(param1:String) : void
      {
         this.§6u§ = param1;
      }
      
      public function get password() : String
      {
         return this.§]<§;
      }
      
      public function set password(param1:String) : void
      {
         this.§]<§ = param1;
      }
      
      public function get §@!X§() : uint
      {
         this.§#k§ = getTimer() - this.§-o§;
         return this.§#k§;
      }
      
      public function get §7!M§() : uint
      {
         return this.§%!%§;
      }
      
      public function set §7!M§(param1:uint) : void
      {
         this.§%!%§ = param1;
      }
      
      public function get §5!M§() : Boolean
      {
         if(this.§]_§ != null && this.§]_§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
