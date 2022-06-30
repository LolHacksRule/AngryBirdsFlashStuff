package §8A§
{
   import flash.utils.getTimer;
   
   public class §`]§
   {
       
      
      private var mName:String;
      
      private var §@s§:String;
      
      private var §9V§:String;
      
      private var §-!>§:String;
      
      private var §6,§:uint;
      
      private var §#X§:uint;
      
      private var §!I§:uint;
      
      private var §%u§:Boolean = false;
      
      public function §`]§()
      {
         super();
         this.§!I§ = getTimer();
      }
      
      public function get §<&§() : Boolean
      {
         return this.§%u§;
      }
      
      public function set §<&§(param1:Boolean) : void
      {
         this.§%u§ = param1;
      }
      
      public function get §^9§() : String
      {
         return this.§-!>§;
      }
      
      public function set §^9§(param1:String) : void
      {
         this.§-!>§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §%^§() : String
      {
         return this.§@s§;
      }
      
      public function set §%^§(param1:String) : void
      {
         this.§@s§ = param1;
      }
      
      public function get password() : String
      {
         return this.§9V§;
      }
      
      public function set password(param1:String) : void
      {
         this.§9V§ = param1;
      }
      
      public function get §`!7§() : uint
      {
         this.§6,§ = getTimer() - this.§!I§;
         return this.§6,§;
      }
      
      public function get §"S§() : uint
      {
         return this.§#X§;
      }
      
      public function set §"S§(param1:uint) : void
      {
         this.§#X§ = param1;
      }
      
      public function get § C§() : Boolean
      {
         if(this.§^9§ != null && this.§^9§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
