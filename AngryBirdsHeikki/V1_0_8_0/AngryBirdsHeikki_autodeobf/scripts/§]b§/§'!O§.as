package §]b§
{
   import flash.utils.getTimer;
   
   public class §'!O§
   {
       
      
      private var mName:String;
      
      private var §!!G§:String;
      
      private var §[>§:String;
      
      private var §7!A§:String;
      
      private var §7D§:uint;
      
      private var §0d§:uint;
      
      private var §[!`§:uint;
      
      private var §=A§:Boolean = false;
      
      public function §'!O§()
      {
         super();
         this.§[!`§ = getTimer();
      }
      
      public function get §]8§() : Boolean
      {
         return this.§=A§;
      }
      
      public function set §]8§(param1:Boolean) : void
      {
         this.§=A§ = param1;
      }
      
      public function get §]t§() : String
      {
         return this.§7!A§;
      }
      
      public function set §]t§(param1:String) : void
      {
         this.§7!A§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §"!S§() : String
      {
         return this.§!!G§;
      }
      
      public function set §"!S§(param1:String) : void
      {
         this.§!!G§ = param1;
      }
      
      public function get password() : String
      {
         return this.§[>§;
      }
      
      public function set password(param1:String) : void
      {
         this.§[>§ = param1;
      }
      
      public function get §"w§() : uint
      {
         this.§7D§ = getTimer() - this.§[!`§;
         return this.§7D§;
      }
      
      public function get §1<§() : uint
      {
         return this.§0d§;
      }
      
      public function set §1<§(param1:uint) : void
      {
         this.§0d§ = param1;
      }
      
      public function get §]j§() : Boolean
      {
         if(this.§]t§ != null && this.§]t§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
