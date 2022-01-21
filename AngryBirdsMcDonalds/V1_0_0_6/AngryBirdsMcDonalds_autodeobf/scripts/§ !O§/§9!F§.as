package § !O§
{
   import flash.utils.getTimer;
   
   public class §9!F§
   {
       
      
      private var mName:String;
      
      private var §;u§:String;
      
      private var §`!I§:String;
      
      private var §@!&§:String;
      
      private var §,;§:uint;
      
      private var §^!h§:uint;
      
      private var §%!7§:uint;
      
      private var § !`§:Boolean = false;
      
      public function §9!F§()
      {
         super();
         this.§%!7§ = getTimer();
      }
      
      public function get §9!k§() : Boolean
      {
         return this.§ !`§;
      }
      
      public function set §9!k§(param1:Boolean) : void
      {
         this.§ !`§ = param1;
      }
      
      public function get §[!9§() : String
      {
         return this.§@!&§;
      }
      
      public function set §[!9§(param1:String) : void
      {
         this.§@!&§ = param1;
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
         return this.§;u§;
      }
      
      public function set email(param1:String) : void
      {
         this.§;u§ = param1;
      }
      
      public function get password() : String
      {
         return this.§`!I§;
      }
      
      public function set password(param1:String) : void
      {
         this.§`!I§ = param1;
      }
      
      public function get §@!]§() : uint
      {
         this.§,;§ = getTimer() - this.§%!7§;
         return this.§,;§;
      }
      
      public function get §8!E§() : uint
      {
         return this.§^!h§;
      }
      
      public function set §8!E§(param1:uint) : void
      {
         this.§^!h§ = param1;
      }
      
      public function get §?!>§() : Boolean
      {
         if(this.§[!9§ != null && this.§[!9§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
