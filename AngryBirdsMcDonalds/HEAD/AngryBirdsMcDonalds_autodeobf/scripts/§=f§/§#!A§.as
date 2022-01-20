package §=f§
{
   import flash.utils.getTimer;
   
   public class §#!A§
   {
       
      
      private var mName:String;
      
      private var §7!i§:String;
      
      private var §^M§:String;
      
      private var §;!^§:String;
      
      private var §2T§:uint;
      
      private var § h§:uint;
      
      private var §!!7§:uint;
      
      private var § !p§:Boolean = false;
      
      public function §#!A§()
      {
         super();
         this.§!!7§ = getTimer();
      }
      
      public function get §'!7§() : Boolean
      {
         return this.§ !p§;
      }
      
      public function set §'!7§(param1:Boolean) : void
      {
         this.§ !p§ = param1;
      }
      
      public function get §7!F§() : String
      {
         return this.§;!^§;
      }
      
      public function set §7!F§(param1:String) : void
      {
         this.§;!^§ = param1;
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
         return this.§7!i§;
      }
      
      public function set email(param1:String) : void
      {
         this.§7!i§ = param1;
      }
      
      public function get password() : String
      {
         return this.§^M§;
      }
      
      public function set password(param1:String) : void
      {
         this.§^M§ = param1;
      }
      
      public function get §-!>§() : uint
      {
         this.§2T§ = getTimer() - this.§!!7§;
         return this.§2T§;
      }
      
      public function get §7N§() : uint
      {
         return this.§ h§;
      }
      
      public function set §7N§(param1:uint) : void
      {
         this.§ h§ = param1;
      }
      
      public function get §`#§() : Boolean
      {
         if(this.§7!F§ != null && this.§7!F§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
