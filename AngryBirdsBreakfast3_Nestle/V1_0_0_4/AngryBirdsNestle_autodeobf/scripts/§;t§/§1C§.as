package §;t§
{
   import flash.utils.getTimer;
   
   public class §1C§
   {
       
      
      private var mName:String;
      
      private var §9!R§:String;
      
      private var §[![§:String;
      
      private var §5"0§:String;
      
      private var §%L§:String;
      
      private var §5w§:uint;
      
      private var §=E§:uint;
      
      private var §;!O§:uint;
      
      private var §[o§:Boolean = false;
      
      public function §1C§()
      {
         super();
         this.§;!O§ = getTimer();
      }
      
      public function get §!"§() : Boolean
      {
         return this.§[o§;
      }
      
      public function set §!"§(param1:Boolean) : void
      {
         this.§[o§ = param1;
      }
      
      public function get §4!z§() : String
      {
         return this.§%L§;
      }
      
      public function set §4!z§(param1:String) : void
      {
         this.§%L§ = param1;
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
         return this.§[![§;
      }
      
      public function set id(param1:String) : void
      {
         this.§[![§ = param1;
      }
      
      public function get password() : String
      {
         return this.§5"0§;
      }
      
      public function set password(param1:String) : void
      {
         this.§5"0§ = param1;
      }
      
      public function get §3!O§() : uint
      {
         this.§5w§ = getTimer() - this.§;!O§;
         return this.§5w§;
      }
      
      public function get §>!Q§() : uint
      {
         return this.§=E§;
      }
      
      public function set §>!Q§(param1:uint) : void
      {
         this.§=E§ = param1;
      }
      
      public function get §>c§() : Boolean
      {
         if(this.§4!z§ != null && this.§4!z§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get §^!e§() : String
      {
         return this.§9!R§;
      }
      
      public function set §^!e§(param1:String) : void
      {
         this.§9!R§ = param1;
      }
   }
}
