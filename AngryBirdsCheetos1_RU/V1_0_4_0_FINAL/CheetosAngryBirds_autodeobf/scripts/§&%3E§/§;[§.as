package §&>§
{
   import flash.utils.getTimer;
   
   public class §;[§
   {
       
      
      private var mName:String;
      
      private var §6[§:String;
      
      private var §2b§:String;
      
      private var §'!9§:String;
      
      private var §7m§:uint;
      
      private var §use§:uint;
      
      private var §0![§:uint;
      
      private var §-D§:Boolean = false;
      
      public function §;[§()
      {
         super();
         this.§0![§ = getTimer();
      }
      
      public function get §%I§() : Boolean
      {
         return this.§-D§;
      }
      
      public function set §%I§(param1:Boolean) : void
      {
         this.§-D§ = param1;
      }
      
      public function get §+!'§() : String
      {
         return this.§'!9§;
      }
      
      public function set §+!'§(param1:String) : void
      {
         this.§'!9§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §0m§() : String
      {
         return this.§6[§;
      }
      
      public function set §0m§(param1:String) : void
      {
         this.§6[§ = param1;
      }
      
      public function get §%![§() : String
      {
         return this.§2b§;
      }
      
      public function set §%![§(param1:String) : void
      {
         this.§2b§ = param1;
      }
      
      public function get §'!X§() : uint
      {
         this.§7m§ = getTimer() - this.§0![§;
         return this.§7m§;
      }
      
      public function get §7-§() : uint
      {
         return this.§use§;
      }
      
      public function set §7-§(param1:uint) : void
      {
         this.§use§ = param1;
      }
      
      public function get §0!7§() : Boolean
      {
         if(this.§+!'§ != null && this.§+!'§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
