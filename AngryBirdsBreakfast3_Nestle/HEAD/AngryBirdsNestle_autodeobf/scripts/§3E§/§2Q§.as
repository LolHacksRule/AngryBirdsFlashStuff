package §3E§
{
   import flash.utils.getTimer;
   
   public class §2Q§
   {
       
      
      private var mName:String;
      
      private var §3!n§:String;
      
      private var §?0§:String;
      
      private var §-!X§:String;
      
      private var §1!r§:String;
      
      private var §9H§:uint;
      
      private var §,!0§:uint;
      
      private var §'!;§:uint;
      
      private var § [§:Boolean = false;
      
      public function §2Q§()
      {
         super();
         this.§'!;§ = getTimer();
      }
      
      public function get §,!k§() : Boolean
      {
         return this.§ [§;
      }
      
      public function set §,!k§(param1:Boolean) : void
      {
         this.§ [§ = param1;
      }
      
      public function get §&"!§() : String
      {
         return this.§1!r§;
      }
      
      public function set §&"!§(param1:String) : void
      {
         this.§1!r§ = param1;
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
         return this.§?0§;
      }
      
      public function set id(param1:String) : void
      {
         this.§?0§ = param1;
      }
      
      public function get password() : String
      {
         return this.§-!X§;
      }
      
      public function set password(param1:String) : void
      {
         this.§-!X§ = param1;
      }
      
      public function get §%k§() : uint
      {
         this.§9H§ = getTimer() - this.§'!;§;
         return this.§9H§;
      }
      
      public function get §?!G§() : uint
      {
         return this.§,!0§;
      }
      
      public function set §?!G§(param1:uint) : void
      {
         this.§,!0§ = param1;
      }
      
      public function get §-n§() : Boolean
      {
         if(this.§&"!§ != null && this.§&"!§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §["'§() : String
      {
         return this.§3!n§;
      }
      
      public function set §["'§(param1:String) : void
      {
         this.§3!n§ = param1;
      }
   }
}
