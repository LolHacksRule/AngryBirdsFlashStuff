package §each §
{
   import flash.utils.getTimer;
   
   public class §>!;§
   {
       
      
      private var mName:String;
      
      private var §`!$§:String;
      
      private var §@c§:String;
      
      private var §>Z§:String;
      
      private var §<t§:uint;
      
      private var § h§:uint;
      
      private var §+,§:uint;
      
      private var §+!<§:Boolean = false;
      
      public function §>!;§()
      {
         super();
         this.§+,§ = getTimer();
      }
      
      public function get §8!#§() : Boolean
      {
         return this.§+!<§;
      }
      
      public function set §8!#§(param1:Boolean) : void
      {
         this.§+!<§ = param1;
      }
      
      public function get §,Q§() : String
      {
         return this.§>Z§;
      }
      
      public function set §,Q§(param1:String) : void
      {
         this.§>Z§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §<!]§() : String
      {
         return this.§`!$§;
      }
      
      public function set §<!]§(param1:String) : void
      {
         this.§`!$§ = param1;
      }
      
      public function get password() : String
      {
         return this.§@c§;
      }
      
      public function set password(param1:String) : void
      {
         this.§@c§ = param1;
      }
      
      public function get §,!%§() : uint
      {
         this.§<t§ = getTimer() - this.§+,§;
         return this.§<t§;
      }
      
      public function get §0!N§() : uint
      {
         return this.§ h§;
      }
      
      public function set §0!N§(param1:uint) : void
      {
         this.§ h§ = param1;
      }
      
      public function get §4!C§() : Boolean
      {
         if(this.§,Q§ != null && this.§,Q§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
