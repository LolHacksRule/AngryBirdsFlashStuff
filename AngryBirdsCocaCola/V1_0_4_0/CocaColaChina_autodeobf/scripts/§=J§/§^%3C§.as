package §=J§
{
   import flash.utils.getTimer;
   
   public class §^<§
   {
       
      
      private var mName:String;
      
      private var §3j§:String;
      
      private var §&Z§:String;
      
      private var §5!!§:String;
      
      private var §"!I§:uint;
      
      private var §=!D§:uint;
      
      private var §=!9§:uint;
      
      private var §,b§:Boolean = false;
      
      public function §^<§()
      {
         super();
         this.§=!9§ = getTimer();
      }
      
      public function get § Z§() : Boolean
      {
         return this.§,b§;
      }
      
      public function set § Z§(param1:Boolean) : void
      {
         this.§,b§ = param1;
      }
      
      public function get §<d§() : String
      {
         return this.§5!!§;
      }
      
      public function set §<d§(param1:String) : void
      {
         this.§5!!§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §7!;§() : String
      {
         return this.§3j§;
      }
      
      public function set §7!;§(param1:String) : void
      {
         this.§3j§ = param1;
      }
      
      public function get password() : String
      {
         return this.§&Z§;
      }
      
      public function set password(param1:String) : void
      {
         this.§&Z§ = param1;
      }
      
      public function get §>M§() : uint
      {
         this.§"!I§ = getTimer() - this.§=!9§;
         return this.§"!I§;
      }
      
      public function get §`!K§() : uint
      {
         return this.§=!D§;
      }
      
      public function set §`!K§(param1:uint) : void
      {
         this.§=!D§ = param1;
      }
      
      public function get §+!6§() : Boolean
      {
         if(this.§<d§ != null && this.§<d§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
