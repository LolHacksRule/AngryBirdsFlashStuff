package §%!h§
{
   import flash.utils.getTimer;
   
   public class §5G§
   {
       
      
      private var mName:String;
      
      private var §;O§:String;
      
      private var §,p§:String;
      
      private var §;!U§:String;
      
      private var §8!f§:String;
      
      private var §5!2§:uint;
      
      private var §+!'§:uint;
      
      private var §@_§:uint;
      
      private var §-!8§:Boolean = false;
      
      public function §5G§()
      {
         super();
         this.§@_§ = getTimer();
      }
      
      public function get §;"#§() : Boolean
      {
         return this.§-!8§;
      }
      
      public function set §;"#§(param1:Boolean) : void
      {
         this.§-!8§ = param1;
      }
      
      public function get §>4§() : String
      {
         return this.§8!f§;
      }
      
      public function set §>4§(param1:String) : void
      {
         this.§8!f§ = param1;
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
         return this.§,p§;
      }
      
      public function set id(param1:String) : void
      {
         this.§,p§ = param1;
      }
      
      public function get password() : String
      {
         return this.§;!U§;
      }
      
      public function set password(param1:String) : void
      {
         this.§;!U§ = param1;
      }
      
      public function get §8r§() : uint
      {
         this.§5!2§ = getTimer() - this.§@_§;
         return this.§5!2§;
      }
      
      public function get §6"+§() : uint
      {
         return this.§+!'§;
      }
      
      public function set §6"+§(param1:uint) : void
      {
         this.§+!'§ = param1;
      }
      
      public function get §9!Z§() : Boolean
      {
         if(this.§>4§ != null && this.§>4§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §@!l§() : String
      {
         return this.§;O§;
      }
      
      public function set §@!l§(param1:String) : void
      {
         this.§;O§ = param1;
      }
   }
}
