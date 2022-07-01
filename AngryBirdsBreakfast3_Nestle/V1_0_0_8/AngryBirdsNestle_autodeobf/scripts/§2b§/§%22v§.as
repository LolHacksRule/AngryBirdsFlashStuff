package §2b§
{
   import flash.utils.getTimer;
   
   public class §"v§
   {
       
      
      private var mName:String;
      
      private var §8Q§:String;
      
      private var §3!J§:String;
      
      private var §+Z§:String;
      
      private var §'q§:String;
      
      private var §4+§:uint;
      
      private var §4!-§:uint;
      
      private var §7!%§:uint;
      
      private var §+!K§:Boolean = false;
      
      public function §"v§()
      {
         super();
         this.§7!%§ = getTimer();
      }
      
      public function get §#B§() : Boolean
      {
         return this.§+!K§;
      }
      
      public function set §#B§(param1:Boolean) : void
      {
         this.§+!K§ = param1;
      }
      
      public function get §"Q§() : String
      {
         return this.§'q§;
      }
      
      public function set §"Q§(param1:String) : void
      {
         this.§'q§ = param1;
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
         return this.§3!J§;
      }
      
      public function set id(param1:String) : void
      {
         this.§3!J§ = param1;
      }
      
      public function get password() : String
      {
         return this.§+Z§;
      }
      
      public function set password(param1:String) : void
      {
         this.§+Z§ = param1;
      }
      
      public function get §>d§() : uint
      {
         this.§4+§ = getTimer() - this.§7!%§;
         return this.§4+§;
      }
      
      public function get §7k§() : uint
      {
         return this.§4!-§;
      }
      
      public function set §7k§(param1:uint) : void
      {
         this.§4!-§ = param1;
      }
      
      public function get §3§() : Boolean
      {
         if(this.§"Q§ != null && this.§"Q§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §>>§() : String
      {
         return this.§8Q§;
      }
      
      public function set §>>§(param1:String) : void
      {
         this.§8Q§ = param1;
      }
   }
}
