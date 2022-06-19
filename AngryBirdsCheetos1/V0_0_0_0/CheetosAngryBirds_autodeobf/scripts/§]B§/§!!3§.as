package §]B§
{
   import flash.utils.getTimer;
   
   public class §!!3§
   {
       
      
      private var mName:String;
      
      private var §@e§:String;
      
      private var §+!#§:String;
      
      private var §12§:String;
      
      private var §0!R§:uint;
      
      private var §%3§:uint;
      
      private var §9!7§:uint;
      
      private var §-!<§:Boolean = false;
      
      public function §!!3§()
      {
         super();
         this.§9!7§ = getTimer();
      }
      
      public function get §<! §() : Boolean
      {
         return this.§-!<§;
      }
      
      public function set §<! §(param1:Boolean) : void
      {
         this.§-!<§ = param1;
      }
      
      public function get §7'§() : String
      {
         return this.§12§;
      }
      
      public function set §7'§(param1:String) : void
      {
         this.§12§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §each §() : String
      {
         return this.§@e§;
      }
      
      public function set §each §(param1:String) : void
      {
         this.§@e§ = param1;
      }
      
      public function get §#7§() : String
      {
         return this.§+!#§;
      }
      
      public function set §#7§(param1:String) : void
      {
         this.§+!#§ = param1;
      }
      
      public function get §`!E§() : uint
      {
         this.§0!R§ = getTimer() - this.§9!7§;
         return this.§0!R§;
      }
      
      public function get §1!§() : uint
      {
         return this.§%3§;
      }
      
      public function set §1!§(param1:uint) : void
      {
         this.§%3§ = param1;
      }
      
      public function get §=O§() : Boolean
      {
         if(this.§7'§ != null && this.§7'§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
