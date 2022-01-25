package §+J§
{
   import flash.utils.getTimer;
   
   public class §?!'§
   {
       
      
      private var mName:String;
      
      private var §"!S§:String;
      
      private var §"!B§:String;
      
      private var §4,§:String;
      
      private var §&!"§:uint;
      
      private var §`z§:uint;
      
      private var §?!V§:uint;
      
      private var §=e§:Boolean = false;
      
      public function §?!'§()
      {
         super();
         this.§?!V§ = getTimer();
      }
      
      public function get §2!o§() : Boolean
      {
         return this.§=e§;
      }
      
      public function set §2!o§(param1:Boolean) : void
      {
         this.§=e§ = param1;
      }
      
      public function get §7!j§() : String
      {
         return this.§4,§;
      }
      
      public function set §7!j§(param1:String) : void
      {
         this.§4,§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get email() : String
      {
         return this.§"!S§;
      }
      
      public function set email(param1:String) : void
      {
         this.§"!S§ = param1;
      }
      
      public function get password() : String
      {
         return this.§"!B§;
      }
      
      public function set password(param1:String) : void
      {
         this.§"!B§ = param1;
      }
      
      public function get §6z§() : uint
      {
         this.§&!"§ = getTimer() - this.§?!V§;
         return this.§&!"§;
      }
      
      public function get §;H§() : uint
      {
         return this.§`z§;
      }
      
      public function set §;H§(param1:uint) : void
      {
         this.§`z§ = param1;
      }
      
      public function get §^b§() : Boolean
      {
         if(this.§7!j§ != null && this.§7!j§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
