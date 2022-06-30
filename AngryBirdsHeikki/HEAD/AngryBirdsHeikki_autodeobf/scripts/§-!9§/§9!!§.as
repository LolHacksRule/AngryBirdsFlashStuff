package §-!9§
{
   import flash.utils.getTimer;
   
   public class §9!!§
   {
       
      
      private var mName:String;
      
      private var §4!R§:String;
      
      private var §8R§:String;
      
      private var §=l§:String;
      
      private var override:uint;
      
      private var §%!f§:uint;
      
      private var §,j§:uint;
      
      private var § !3§:Boolean = false;
      
      public function §9!!§()
      {
         super();
         this.§,j§ = getTimer();
      }
      
      public function get § v§() : Boolean
      {
         return this.§ !3§;
      }
      
      public function set § v§(param1:Boolean) : void
      {
         this.§ !3§ = param1;
      }
      
      public function get §[!J§() : String
      {
         return this.§=l§;
      }
      
      public function set §[!J§(param1:String) : void
      {
         this.§=l§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §6!X§() : String
      {
         return this.§4!R§;
      }
      
      public function set §6!X§(param1:String) : void
      {
         this.§4!R§ = param1;
      }
      
      public function get password() : String
      {
         return this.§8R§;
      }
      
      public function set password(param1:String) : void
      {
         this.§8R§ = param1;
      }
      
      public function get §'!^§() : uint
      {
         this.override = getTimer() - this.§,j§;
         return this.override;
      }
      
      public function get §'r§() : uint
      {
         return this.§%!f§;
      }
      
      public function set §'r§(param1:uint) : void
      {
         this.§%!f§ = param1;
      }
      
      public function get §`! §() : Boolean
      {
         if(this.§[!J§ != null && this.§[!J§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
