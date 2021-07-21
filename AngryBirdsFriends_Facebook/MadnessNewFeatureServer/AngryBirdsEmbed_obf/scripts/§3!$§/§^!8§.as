package §3!$§
{
   public class §^!8§
   {
       
      
      private var §%R§:Number;
      
      private var §7=§:String;
      
      private var §@1§:Function;
      
      private var §17§:Function;
      
      private var §>!J§:Boolean = true;
      
      public function §^!8§(param1:String, param2:Number)
      {
         super();
         this.§7=§ = param1;
         this.§%R§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §04§() : String
      {
         return this.§7=§;
      }
      
      public function §&!5§() : Function
      {
         return this.§@1§;
      }
      
      public function § !4§() : Function
      {
         return this.§17§;
      }
      
      public function §;#§(param1:Object) : void
      {
         if(this.§>!J§)
         {
            this.§@1§.call(null,param1);
         }
      }
      
      public function § for§(param1:Object) : void
      {
         if(this.§>!J§)
         {
            this.§17§.call(null,param1);
         }
      }
      
      public function §!!&§(param1:Function, param2:Function = null) : void
      {
         this.§@1§ = param1;
         this.§17§ = param2;
      }
      
      public function §'Y§() : void
      {
         this.§>!J§ = false;
      }
      
      public function §4>§() : void
      {
         this.§>!J§ = true;
      }
   }
}
