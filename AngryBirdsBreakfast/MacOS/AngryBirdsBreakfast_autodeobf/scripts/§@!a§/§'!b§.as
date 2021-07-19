package §@!a§
{
   import flash.utils.getTimer;
   
   public class §'!b§
   {
       
      
      private var mName:String;
      
      private var §%!A§:String;
      
      private var §>6§:String;
      
      private var §`&§:String;
      
      private var §>!L§:String;
      
      private var §^!9§:uint;
      
      private var §1V§:uint;
      
      private var § " §:uint;
      
      private var §`u§:Boolean = false;
      
      public function §'!b§()
      {
         super();
         this.§ " § = getTimer();
      }
      
      public function get §'3§() : Boolean
      {
         return this.§`u§;
      }
      
      public function set §'3§(param1:Boolean) : void
      {
         this.§`u§ = param1;
      }
      
      public function get §4J§() : String
      {
         return this.§>!L§;
      }
      
      public function set §4J§(param1:String) : void
      {
         this.§>!L§ = param1;
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
         return this.§>6§;
      }
      
      public function set id(param1:String) : void
      {
         this.§>6§ = param1;
      }
      
      public function get password() : String
      {
         return this.§`&§;
      }
      
      public function set password(param1:String) : void
      {
         this.§`&§ = param1;
      }
      
      public function get §1@§() : uint
      {
         this.§^!9§ = getTimer() - this.§ " §;
         return this.§^!9§;
      }
      
      public function get §`f§() : uint
      {
         return this.§1V§;
      }
      
      public function set §`f§(param1:uint) : void
      {
         this.§1V§ = param1;
      }
      
      public function get §,!T§() : Boolean
      {
         if(this.§4J§ != null && this.§4J§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §1!^§() : String
      {
         return this.§%!A§;
      }
      
      public function set §1!^§(param1:String) : void
      {
         this.§%!A§ = param1;
      }
   }
}
