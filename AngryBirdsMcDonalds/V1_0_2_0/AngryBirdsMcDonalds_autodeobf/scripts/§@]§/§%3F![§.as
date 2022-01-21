package §@]§
{
   import flash.utils.getTimer;
   
   public class §?![§
   {
       
      
      private var mName:String;
      
      private var §&!'§:String;
      
      private var §?G§:String;
      
      private var §]?§:String;
      
      private var §4!Y§:uint;
      
      private var §9q§:uint;
      
      private var §!!<§:uint;
      
      private var §[2§:Boolean = false;
      
      public function §?![§()
      {
         super();
         this.§!!<§ = getTimer();
      }
      
      public function get §[!!§() : Boolean
      {
         return this.§[2§;
      }
      
      public function set §[!!§(param1:Boolean) : void
      {
         this.§[2§ = param1;
      }
      
      public function get §,!@§() : String
      {
         return this.§]?§;
      }
      
      public function set §,!@§(param1:String) : void
      {
         this.§]?§ = param1;
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
         return this.§&!'§;
      }
      
      public function set email(param1:String) : void
      {
         this.§&!'§ = param1;
      }
      
      public function get password() : String
      {
         return this.§?G§;
      }
      
      public function set password(param1:String) : void
      {
         this.§?G§ = param1;
      }
      
      public function get §?k§() : uint
      {
         this.§4!Y§ = getTimer() - this.§!!<§;
         return this.§4!Y§;
      }
      
      public function get §,O§() : uint
      {
         return this.§9q§;
      }
      
      public function set §,O§(param1:uint) : void
      {
         this.§9q§ = param1;
      }
      
      public function get §,s§() : Boolean
      {
         if(this.§,!@§ != null && this.§,!@§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
