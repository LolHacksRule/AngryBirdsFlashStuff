package §^V§
{
   import flash.utils.getTimer;
   
   public class §<!E§
   {
       
      
      private var mName:String;
      
      private var §'§:String;
      
      private var §""§:String;
      
      private var §[!Y§:String;
      
      private var § each§:String;
      
      private var §&!g§:uint;
      
      private var §!n§:uint;
      
      private var §`!Z§:uint;
      
      private var §;!T§:Boolean = false;
      
      public function §<!E§()
      {
         super();
         this.§`!Z§ = getTimer();
      }
      
      public function get §^"!§() : Boolean
      {
         return this.§;!T§;
      }
      
      public function set §^"!§(param1:Boolean) : void
      {
         this.§;!T§ = param1;
      }
      
      public function get §?"#§() : String
      {
         return this.§ each§;
      }
      
      public function set §?"#§(param1:String) : void
      {
         this.§ each§ = param1;
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
         return this.§""§;
      }
      
      public function set id(param1:String) : void
      {
         this.§""§ = param1;
      }
      
      public function get password() : String
      {
         return this.§[!Y§;
      }
      
      public function set password(param1:String) : void
      {
         this.§[!Y§ = param1;
      }
      
      public function get §"e§() : uint
      {
         this.§&!g§ = getTimer() - this.§`!Z§;
         return this.§&!g§;
      }
      
      public function get §9Y§() : uint
      {
         return this.§!n§;
      }
      
      public function set §9Y§(param1:uint) : void
      {
         this.§!n§ = param1;
      }
      
      public function get §=!9§() : Boolean
      {
         if(this.§?"#§ != null && this.§?"#§.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get email() : String
      {
         return this.§'§;
      }
      
      public function set email(param1:String) : void
      {
         this.§'§ = param1;
      }
   }
}
