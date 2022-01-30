package
{
   import flash.utils.getTimer;
   
   public class §<X§
   {
       
      
      private var mName:String;
      
      private var §`!Y§:String;
      
      private var §]!U§:String;
      
      private var §;c§:String;
      
      private var §8!W§:String;
      
      private var §"!S§:uint;
      
      private var §9!9§:uint;
      
      private var §>"0§:uint;
      
      private var §7J§:Boolean = false;
      
      public function §<X§()
      {
         super();
         this.§>"0§ = getTimer();
      }
      
      public function get §4i§() : Boolean
      {
         return this.§7J§;
      }
      
      public function set §4i§(param1:Boolean) : void
      {
         this.§7J§ = param1;
      }
      
      public function get §?!f§() : String
      {
         return this.§8!W§;
      }
      
      public function set §?!f§(param1:String) : void
      {
         this.§8!W§ = param1;
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
         return this.§]!U§;
      }
      
      public function set id(param1:String) : void
      {
         this.§]!U§ = param1;
      }
      
      public function get password() : String
      {
         return this.§;c§;
      }
      
      public function set password(param1:String) : void
      {
         this.§;c§ = param1;
      }
      
      public function get §[D§() : uint
      {
         this.§"!S§ = getTimer() - this.§>"0§;
         return this.§"!S§;
      }
      
      public function get §7!]§() : uint
      {
         return this.§9!9§;
      }
      
      public function set §7!]§(param1:uint) : void
      {
         this.§9!9§ = param1;
      }
      
      public function get §2A§() : Boolean
      {
         if(this.§?!f§ != null && this.§?!f§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §<!p§() : String
      {
         return this.§`!Y§;
      }
      
      public function set §<!p§(param1:String) : void
      {
         this.§`!Y§ = param1;
      }
   }
}
