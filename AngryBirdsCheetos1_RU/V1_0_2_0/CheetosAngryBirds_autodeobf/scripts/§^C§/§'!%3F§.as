package §^C§
{
   import flash.utils.getTimer;
   
   public class §'!?§
   {
       
      
      private var mName:String;
      
      private var §]!6§:String;
      
      private var §1!D§:String;
      
      private var §<!I§:String;
      
      private var §-!<§:uint;
      
      private var §0E§:uint;
      
      private var §8r§:uint;
      
      private var §"a§:Boolean = false;
      
      public function §'!?§()
      {
         super();
         this.§8r§ = getTimer();
      }
      
      public function get §@!&§() : Boolean
      {
         return this.§"a§;
      }
      
      public function set §@!&§(param1:Boolean) : void
      {
         this.§"a§ = param1;
      }
      
      public function get §<!'§() : String
      {
         return this.§<!I§;
      }
      
      public function set §<!'§(param1:String) : void
      {
         this.§<!I§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §!X§() : String
      {
         return this.§]!6§;
      }
      
      public function set §!X§(param1:String) : void
      {
         this.§]!6§ = param1;
      }
      
      public function get §0!-§() : String
      {
         return this.§1!D§;
      }
      
      public function set §0!-§(param1:String) : void
      {
         this.§1!D§ = param1;
      }
      
      public function get §"T§() : uint
      {
         this.§-!<§ = getTimer() - this.§8r§;
         return this.§-!<§;
      }
      
      public function get §!O§() : uint
      {
         return this.§0E§;
      }
      
      public function set §!O§(param1:uint) : void
      {
         this.§0E§ = param1;
      }
      
      public function get § !P§() : Boolean
      {
         if(this.§<!'§ != null && this.§<!'§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
