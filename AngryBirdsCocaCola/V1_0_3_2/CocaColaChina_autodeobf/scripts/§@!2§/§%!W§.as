package §@!2§
{
   import flash.utils.getTimer;
   
   public class §%!W§
   {
       
      
      private var mName:String;
      
      private var §!c§:String;
      
      private var §4%§:String;
      
      private var §#Y§:String;
      
      private var §6y§:uint;
      
      private var §?0§:uint;
      
      private var § !3§:uint;
      
      private var §6?§:Boolean = false;
      
      public function §%!W§()
      {
         super();
         this.§ !3§ = getTimer();
      }
      
      public function get §>!T§() : Boolean
      {
         return this.§6?§;
      }
      
      public function set §>!T§(param1:Boolean) : void
      {
         this.§6?§ = param1;
      }
      
      public function get §!!6§() : String
      {
         return this.§#Y§;
      }
      
      public function set §!!6§(param1:String) : void
      {
         this.§#Y§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §#c§() : String
      {
         return this.§!c§;
      }
      
      public function set §#c§(param1:String) : void
      {
         this.§!c§ = param1;
      }
      
      public function get password() : String
      {
         return this.§4%§;
      }
      
      public function set password(param1:String) : void
      {
         this.§4%§ = param1;
      }
      
      public function get §;!]§() : uint
      {
         this.§6y§ = getTimer() - this.§ !3§;
         return this.§6y§;
      }
      
      public function get §@!C§() : uint
      {
         return this.§?0§;
      }
      
      public function set §@!C§(param1:uint) : void
      {
         this.§?0§ = param1;
      }
      
      public function get §?$§() : Boolean
      {
         if(this.§!!6§ != null && this.§!!6§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
