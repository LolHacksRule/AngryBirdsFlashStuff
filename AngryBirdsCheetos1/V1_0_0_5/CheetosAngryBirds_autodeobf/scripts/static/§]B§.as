package static
{
   import flash.utils.getTimer;
   
   public class §]B§
   {
       
      
      private var mName:String;
      
      private var §!!3§:String;
      
      private var §@e§:String;
      
      private var §+!#§:String;
      
      private var §12§:uint;
      
      private var §0!R§:uint;
      
      private var §%3§:uint;
      
      private var §9!7§:Boolean = false;
      
      public function §]B§()
      {
         super();
         this.§%3§ = getTimer();
      }
      
      public function get §-!<§() : Boolean
      {
         return this.§9!7§;
      }
      
      public function set §-!<§(param1:Boolean) : void
      {
         this.§9!7§ = param1;
      }
      
      public function get §<! §() : String
      {
         return this.§+!#§;
      }
      
      public function set §<! §(param1:String) : void
      {
         this.§+!#§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §7'§() : String
      {
         return this.§!!3§;
      }
      
      public function set §7'§(param1:String) : void
      {
         this.§!!3§ = param1;
      }
      
      public function get §each §() : String
      {
         return this.§@e§;
      }
      
      public function set §each §(param1:String) : void
      {
         this.§@e§ = param1;
      }
      
      public function get §#7§() : uint
      {
         this.§12§ = getTimer() - this.§%3§;
         return this.§12§;
      }
      
      public function get §`!E§() : uint
      {
         return this.§0!R§;
      }
      
      public function set §`!E§(param1:uint) : void
      {
         this.§0!R§ = param1;
      }
      
      public function get §1!§() : Boolean
      {
         if(this.§<! § != null && this.§<! §.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
