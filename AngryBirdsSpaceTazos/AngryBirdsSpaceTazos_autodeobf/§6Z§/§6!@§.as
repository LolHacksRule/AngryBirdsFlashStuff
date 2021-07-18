package §6Z§
{
   import flash.utils.getTimer;
   
   public class §6!@§
   {
       
      
      private var mName:String;
      
      private var §3!j§:String;
      
      private var §[!o§:String;
      
      private var §5!u§:String;
      
      private var §30§:String;
      
      private var §+!,§:uint;
      
      private var §7"D§:uint;
      
      private var §&"#§:uint;
      
      private var §#"6§:Boolean = false;
      
      public function §6!@§()
      {
         super();
         this.§&"#§ = getTimer();
      }
      
      public function get §`!F§() : Boolean
      {
         return this.§#"6§;
      }
      
      public function set §`!F§(param1:Boolean) : void
      {
         this.§#"6§ = param1;
      }
      
      public function get §,!0§() : String
      {
         return this.§30§;
      }
      
      public function set §,!0§(param1:String) : void
      {
         this.§30§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function set id(param1:String) : void
      {
         this.§[!o§ = param1;
      }
      
      public function get password() : String
      {
         return this.§5!u§;
      }
      
      public function set password(param1:String) : void
      {
         this.§5!u§ = param1;
      }
      
      public function get §1!F§() : uint
      {
         this.§+!,§ = getTimer() - this.§&"#§;
         return this.§+!,§;
      }
      
      public function get §6!e§() : uint
      {
         return this.§7"D§;
      }
      
      public function set §6!e§(param1:uint) : void
      {
         this.§7"D§ = param1;
      }
      
      public function get §8B§() : Boolean
      {
         if(this.§,!0§ != null && this.§,!0§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get email() : String
      {
         return this.§3!j§;
      }
      
      public function set email(param1:String) : void
      {
         this.§3!j§ = param1;
      }
   }
}
