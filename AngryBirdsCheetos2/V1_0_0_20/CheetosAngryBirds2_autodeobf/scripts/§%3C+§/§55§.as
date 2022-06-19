package §<+§
{
   import flash.utils.getTimer;
   
   public class §55§
   {
       
      
      private var mName:String;
      
      private var §<!2§:String;
      
      private var §-!$§:String;
      
      private var §,!G§:String;
      
      private var § 5§:uint;
      
      private var §#D§:uint;
      
      private var static:uint;
      
      private var §?!c§:Boolean = false;
      
      public function §55§()
      {
         super();
         this.static = getTimer();
      }
      
      public function get §74§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function set §74§(param1:Boolean) : void
      {
         this.§?!c§ = param1;
      }
      
      public function get §#]§() : String
      {
         return this.§,!G§;
      }
      
      public function set §#]§(param1:String) : void
      {
         this.§,!G§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §6!W§() : String
      {
         return this.§<!2§;
      }
      
      public function set §6!W§(param1:String) : void
      {
         this.§<!2§ = param1;
      }
      
      public function get §3?§() : String
      {
         return this.§-!$§;
      }
      
      public function set §3?§(param1:String) : void
      {
         this.§-!$§ = param1;
      }
      
      public function get §&!C§() : uint
      {
         this.§ 5§ = getTimer() - this.static;
         return this.§ 5§;
      }
      
      public function get §3n§() : uint
      {
         return this.§#D§;
      }
      
      public function set §3n§(param1:uint) : void
      {
         this.§#D§ = param1;
      }
      
      public function get §extends§() : Boolean
      {
         if(this.§#]§ != null && this.§#]§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
