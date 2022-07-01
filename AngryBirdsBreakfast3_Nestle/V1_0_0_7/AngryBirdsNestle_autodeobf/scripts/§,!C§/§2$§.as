package §,!C§
{
   import flash.utils.getTimer;
   
   public class §2$§
   {
       
      
      private var mName:String;
      
      private var §8A§:String;
      
      private var §=H§:String;
      
      private var §-!P§:String;
      
      private var §%!S§:String;
      
      private var §?"-§:uint;
      
      private var §9!n§:uint;
      
      private var § !]§:uint;
      
      private var § !O§:Boolean = false;
      
      public function §2$§()
      {
         super();
         this.§ !]§ = getTimer();
      }
      
      public function get §;!0§() : Boolean
      {
         return this.§ !O§;
      }
      
      public function set §;!0§(param1:Boolean) : void
      {
         this.§ !O§ = param1;
      }
      
      public function get §>!"§() : String
      {
         return this.§%!S§;
      }
      
      public function set §>!"§(param1:String) : void
      {
         this.§%!S§ = param1;
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
         return this.§=H§;
      }
      
      public function set id(param1:String) : void
      {
         this.§=H§ = param1;
      }
      
      public function get password() : String
      {
         return this.§-!P§;
      }
      
      public function set password(param1:String) : void
      {
         this.§-!P§ = param1;
      }
      
      public function get §3"§() : uint
      {
         this.§?"-§ = getTimer() - this.§ !]§;
         return this.§?"-§;
      }
      
      public function get §?!^§() : uint
      {
         return this.§9!n§;
      }
      
      public function set §?!^§(param1:uint) : void
      {
         this.§9!n§ = param1;
      }
      
      public function get §;!a§() : Boolean
      {
         if(this.§>!"§ != null && this.§>!"§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §-p§() : String
      {
         return this.§8A§;
      }
      
      public function set §-p§(param1:String) : void
      {
         this.§8A§ = param1;
      }
   }
}
