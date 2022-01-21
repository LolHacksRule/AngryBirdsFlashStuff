package §^u§
{
   import flash.utils.getTimer;
   
   public class §5!U§
   {
       
      
      private var mName:String;
      
      private var §<!g§:String;
      
      private var §,5§:String;
      
      private var §!F§:String;
      
      private var §`4§:uint;
      
      private var §9!`§:uint;
      
      private var §8Y§:uint;
      
      private var §"T§:Boolean = false;
      
      public function §5!U§()
      {
         super();
         this.§8Y§ = getTimer();
      }
      
      public function get §9c§() : Boolean
      {
         return this.§"T§;
      }
      
      public function set §9c§(param1:Boolean) : void
      {
         this.§"T§ = param1;
      }
      
      public function get §,b§() : String
      {
         return this.§!F§;
      }
      
      public function set §,b§(param1:String) : void
      {
         this.§!F§ = param1;
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
         return this.§<!g§;
      }
      
      public function set email(param1:String) : void
      {
         this.§<!g§ = param1;
      }
      
      public function get password() : String
      {
         return this.§,5§;
      }
      
      public function set password(param1:String) : void
      {
         this.§,5§ = param1;
      }
      
      public function get §'4§() : uint
      {
         this.§`4§ = getTimer() - this.§8Y§;
         return this.§`4§;
      }
      
      public function get §"S§() : uint
      {
         return this.§9!`§;
      }
      
      public function set §"S§(param1:uint) : void
      {
         this.§9!`§ = param1;
      }
      
      public function get §?[§() : Boolean
      {
         if(this.§,b§ != null && this.§,b§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
