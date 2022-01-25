package §%!X§
{
   import flash.utils.getTimer;
   
   public class §=,§
   {
       
      
      private var mName:String;
      
      private var §>!L§:String;
      
      private var §09§:String;
      
      private var §,k§:String;
      
      private var §4j§:uint;
      
      private var §=J§:uint;
      
      private var §^<§:uint;
      
      private var §3j§:Boolean = false;
      
      public function §=,§()
      {
         super();
         this.§^<§ = getTimer();
      }
      
      public function get §&Z§() : Boolean
      {
         return this.§3j§;
      }
      
      public function set §&Z§(param1:Boolean) : void
      {
         this.§3j§ = param1;
      }
      
      public function get §5!!§() : String
      {
         return this.§,k§;
      }
      
      public function set §5!!§(param1:String) : void
      {
         this.§,k§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §"!I§() : String
      {
         return this.§>!L§;
      }
      
      public function set §"!I§(param1:String) : void
      {
         this.§>!L§ = param1;
      }
      
      public function get password() : String
      {
         return this.§09§;
      }
      
      public function set password(param1:String) : void
      {
         this.§09§ = param1;
      }
      
      public function get §=!D§() : uint
      {
         this.§4j§ = getTimer() - this.§^<§;
         return this.§4j§;
      }
      
      public function get §=!9§() : uint
      {
         return this.§=J§;
      }
      
      public function set §=!9§(param1:uint) : void
      {
         this.§=J§ = param1;
      }
      
      public function get §,b§() : Boolean
      {
         if(this.§5!!§ != null && this.§5!!§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
