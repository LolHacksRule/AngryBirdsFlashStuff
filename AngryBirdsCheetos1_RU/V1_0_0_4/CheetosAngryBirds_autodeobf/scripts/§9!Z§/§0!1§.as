package §9!Z§
{
   import flash.utils.getTimer;
   
   public class §0!1§
   {
       
      
      private var mName:String;
      
      private var § b§:String;
      
      private var §;!+§:String;
      
      private var §=T§:String;
      
      private var §<!G§:uint;
      
      private var §=!7§:uint;
      
      private var §^T§:uint;
      
      private var §8k§:Boolean = false;
      
      public function §0!1§()
      {
         super();
         this.§^T§ = getTimer();
      }
      
      public function get §5! §() : Boolean
      {
         return this.§8k§;
      }
      
      public function set §5! §(param1:Boolean) : void
      {
         this.§8k§ = param1;
      }
      
      public function get §3v§() : String
      {
         return this.§=T§;
      }
      
      public function set §3v§(param1:String) : void
      {
         this.§=T§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §-%§() : String
      {
         return this.§ b§;
      }
      
      public function set §-%§(param1:String) : void
      {
         this.§ b§ = param1;
      }
      
      public function get § !S§() : String
      {
         return this.§;!+§;
      }
      
      public function set § !S§(param1:String) : void
      {
         this.§;!+§ = param1;
      }
      
      public function get §9!4§() : uint
      {
         this.§<!G§ = getTimer() - this.§^T§;
         return this.§<!G§;
      }
      
      public function get §5!O§() : uint
      {
         return this.§=!7§;
      }
      
      public function set §5!O§(param1:uint) : void
      {
         this.§=!7§ = param1;
      }
      
      public function get §-6§() : Boolean
      {
         if(this.§3v§ != null && this.§3v§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
