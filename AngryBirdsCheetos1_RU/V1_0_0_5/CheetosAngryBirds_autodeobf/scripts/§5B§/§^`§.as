package §5B§
{
   import flash.utils.getTimer;
   
   public class §^`§
   {
       
      
      private var mName:String;
      
      private var §#=§:String;
      
      private var dynamic:String;
      
      private var §'!_§:String;
      
      private var §[!+§:uint;
      
      private var §6"§:uint;
      
      private var §;!3§:uint;
      
      private var §"$§:Boolean = false;
      
      public function §^`§()
      {
         super();
         this.§;!3§ = getTimer();
      }
      
      public function get §2c§() : Boolean
      {
         return this.§"$§;
      }
      
      public function set §2c§(param1:Boolean) : void
      {
         this.§"$§ = param1;
      }
      
      public function get §;!Y§() : String
      {
         return this.§'!_§;
      }
      
      public function set §;!Y§(param1:String) : void
      {
         this.§'!_§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §'!9§() : String
      {
         return this.§#=§;
      }
      
      public function set §'!9§(param1:String) : void
      {
         this.§#=§ = param1;
      }
      
      public function get §2`§() : String
      {
         return this.dynamic;
      }
      
      public function set §2`§(param1:String) : void
      {
         this.dynamic = param1;
      }
      
      public function get §9!R§() : uint
      {
         this.§[!+§ = getTimer() - this.§;!3§;
         return this.§[!+§;
      }
      
      public function get §%!&§() : uint
      {
         return this.§6"§;
      }
      
      public function set §%!&§(param1:uint) : void
      {
         this.§6"§ = param1;
      }
      
      public function get §[!Z§() : Boolean
      {
         if(this.§;!Y§ != null && this.§;!Y§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
