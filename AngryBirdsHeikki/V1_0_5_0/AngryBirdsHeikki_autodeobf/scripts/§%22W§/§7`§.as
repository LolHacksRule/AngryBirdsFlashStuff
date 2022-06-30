package §"W§
{
   import flash.utils.getTimer;
   
   public class §7`§
   {
       
      
      private var mName:String;
      
      private var §^!c§:String;
      
      private var §?Y§:String;
      
      private var §&!-§:String;
      
      private var §3q§:uint;
      
      private var §6'§:uint;
      
      private var §>!S§:uint;
      
      private var §&2§:Boolean = false;
      
      public function §7`§()
      {
         super();
         this.§>!S§ = getTimer();
      }
      
      public function get §7x§() : Boolean
      {
         return this.§&2§;
      }
      
      public function set §7x§(param1:Boolean) : void
      {
         this.§&2§ = param1;
      }
      
      public function get §=P§() : String
      {
         return this.§&!-§;
      }
      
      public function set §=P§(param1:String) : void
      {
         this.§&!-§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §%X§() : String
      {
         return this.§^!c§;
      }
      
      public function set §%X§(param1:String) : void
      {
         this.§^!c§ = param1;
      }
      
      public function get password() : String
      {
         return this.§?Y§;
      }
      
      public function set password(param1:String) : void
      {
         this.§?Y§ = param1;
      }
      
      public function get §%w§() : uint
      {
         this.§3q§ = getTimer() - this.§>!S§;
         return this.§3q§;
      }
      
      public function get §^u§() : uint
      {
         return this.§6'§;
      }
      
      public function set §^u§(param1:uint) : void
      {
         this.§6'§ = param1;
      }
      
      public function get §;%§() : Boolean
      {
         if(this.§=P§ != null && this.§=P§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
