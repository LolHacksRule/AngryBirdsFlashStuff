package §;D§
{
   import flash.utils.getTimer;
   
   public class §]T§
   {
       
      
      private var mName:String;
      
      private var §=]§:String;
      
      private var §-!;§:String;
      
      private var §;$§:String;
      
      private var §6a§:uint;
      
      private var §&!"§:uint;
      
      private var §3!,§:uint;
      
      private var §>o§:Boolean = false;
      
      public function §]T§()
      {
         super();
         this.§3!,§ = getTimer();
      }
      
      public function get §[2§() : Boolean
      {
         return this.§>o§;
      }
      
      public function set §[2§(param1:Boolean) : void
      {
         this.§>o§ = param1;
      }
      
      public function get §@]§() : String
      {
         return this.§;$§;
      }
      
      public function set §@]§(param1:String) : void
      {
         this.§;$§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §#!3§() : String
      {
         return this.§=]§;
      }
      
      public function set §#!3§(param1:String) : void
      {
         this.§=]§ = param1;
      }
      
      public function get password() : String
      {
         return this.§-!;§;
      }
      
      public function set password(param1:String) : void
      {
         this.§-!;§ = param1;
      }
      
      public function get §"!Y§() : uint
      {
         this.§6a§ = getTimer() - this.§3!,§;
         return this.§6a§;
      }
      
      public function get §"!b§() : uint
      {
         return this.§&!"§;
      }
      
      public function set §"!b§(param1:uint) : void
      {
         this.§&!"§ = param1;
      }
      
      public function get §^[§() : Boolean
      {
         if(this.§@]§ != null && this.§@]§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
