package §+`§
{
   import flash.utils.getTimer;
   
   public class §-!v§
   {
       
      
      private var mName:String;
      
      private var §'?§:String;
      
      private var §1!q§:String;
      
      private var §?[§:String;
      
      private var §=s§:String;
      
      private var §^P§:uint;
      
      private var §=>§:uint;
      
      private var §^0§:uint;
      
      private var §>!U§:Boolean = false;
      
      public function §-!v§()
      {
         super();
         this.§^0§ = getTimer();
      }
      
      public function get §<!V§() : Boolean
      {
         return this.§>!U§;
      }
      
      public function set §<!V§(param1:Boolean) : void
      {
         this.§>!U§ = param1;
      }
      
      public function get §5"8§() : String
      {
         return this.§=s§;
      }
      
      public function set §5"8§(param1:String) : void
      {
         this.§=s§ = param1;
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
         return this.§1!q§;
      }
      
      public function set id(param1:String) : void
      {
         this.§1!q§ = param1;
      }
      
      public function get password() : String
      {
         return this.§?[§;
      }
      
      public function set password(param1:String) : void
      {
         this.§?[§ = param1;
      }
      
      public function get §@"0§() : uint
      {
         this.§^P§ = getTimer() - this.§^0§;
         return this.§^P§;
      }
      
      public function get §9%§() : uint
      {
         return this.§=>§;
      }
      
      public function set §9%§(param1:uint) : void
      {
         this.§=>§ = param1;
      }
      
      public function get § !0§() : Boolean
      {
         if(this.§5"8§ != null && this.§5"8§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get email() : String
      {
         return this.§'?§;
      }
      
      public function set email(param1:String) : void
      {
         this.§'?§ = param1;
      }
   }
}
