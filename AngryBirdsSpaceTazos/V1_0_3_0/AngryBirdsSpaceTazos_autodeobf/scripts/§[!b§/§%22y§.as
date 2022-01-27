package §[!b§
{
   import flash.utils.getTimer;
   
   public class §"y§
   {
       
      
      private var mName:String;
      
      private var §"!Z§:String;
      
      private var §?I§:String;
      
      private var §;!F§:String;
      
      private var §3b§:String;
      
      private var §;!T§:uint;
      
      private var §[g§:uint;
      
      private var §&!%§:uint;
      
      private var §<!#§:Boolean = false;
      
      public function §"y§()
      {
         super();
         this.§&!%§ = getTimer();
      }
      
      public function get §;b§() : Boolean
      {
         return this.§<!#§;
      }
      
      public function set §;b§(param1:Boolean) : void
      {
         this.§<!#§ = param1;
      }
      
      public function get §8Y§() : String
      {
         return this.§3b§;
      }
      
      public function set §8Y§(param1:String) : void
      {
         this.§3b§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get id() : String
      {
         return this.§?I§;
      }
      
      public function set id(param1:String) : void
      {
         this.§?I§ = param1;
      }
      
      public function get password() : String
      {
         return this.§;!F§;
      }
      
      public function set password(param1:String) : void
      {
         this.§;!F§ = param1;
      }
      
      public function get §'!]§() : uint
      {
         this.§;!T§ = getTimer() - this.§&!%§;
         return this.§;!T§;
      }
      
      public function get §+!f§() : uint
      {
         return this.§[g§;
      }
      
      public function set §+!f§(param1:uint) : void
      {
         this.§[g§ = param1;
      }
      
      public function get §1T§() : Boolean
      {
         if(this.§8Y§ != null && this.§8Y§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get email() : String
      {
         return this.§"!Z§;
      }
      
      public function set email(param1:String) : void
      {
         this.§"!Z§ = param1;
      }
   }
}
