package §8!g§
{
   import flash.utils.getTimer;
   
   public class §^L§
   {
       
      
      private var mName:String;
      
      private var §8N§:String;
      
      private var §?!j§:String;
      
      private var §9" §:String;
      
      private var §%k§:String;
      
      private var §@o§:uint;
      
      private var §&"#§:uint;
      
      private var §8;§:uint;
      
      private var §!x§:Boolean = false;
      
      public function §^L§()
      {
         super();
         this.§8;§ = getTimer();
      }
      
      public function get §2o§() : Boolean
      {
         return this.§!x§;
      }
      
      public function set §2o§(param1:Boolean) : void
      {
         this.§!x§ = param1;
      }
      
      public function get §#!m§() : String
      {
         return this.§%k§;
      }
      
      public function set §#!m§(param1:String) : void
      {
         this.§%k§ = param1;
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
         return this.§?!j§;
      }
      
      public function set id(param1:String) : void
      {
         this.§?!j§ = param1;
      }
      
      public function get password() : String
      {
         return this.§9" §;
      }
      
      public function set password(param1:String) : void
      {
         this.§9" § = param1;
      }
      
      public function get §5"7§() : uint
      {
         this.§@o§ = getTimer() - this.§8;§;
         return this.§@o§;
      }
      
      public function get §]!H§() : uint
      {
         return this.§&"#§;
      }
      
      public function set §]!H§(param1:uint) : void
      {
         this.§&"#§ = param1;
      }
      
      public function get §do §() : Boolean
      {
         if(this.§#!m§ != null && this.§#!m§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §7R§() : String
      {
         return this.§8N§;
      }
      
      public function set §7R§(param1:String) : void
      {
         this.§8N§ = param1;
      }
   }
}
