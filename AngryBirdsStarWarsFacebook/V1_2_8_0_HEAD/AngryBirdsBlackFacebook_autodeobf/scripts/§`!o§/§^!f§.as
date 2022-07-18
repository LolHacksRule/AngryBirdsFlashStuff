package §`!o§
{
   public class §^!f§
   {
       
      
      private var §<#>§:Number;
      
      private var §2#_§:String;
      
      private var §8"i§:Function;
      
      private var §8#A§:Function;
      
      private var §02§:Boolean = true;
      
      public function §^!f§(param1:String, param2:Number)
      {
         super();
         this.§2#_§ = param1;
         this.§<#>§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §@"X§() : String
      {
         return this.§2#_§;
      }
      
      public function §`P§() : Function
      {
         return this.§8"i§;
      }
      
      public function §@!w§() : Function
      {
         return this.§8#A§;
      }
      
      public function §'i§(param1:Object) : void
      {
         if(this.§02§)
         {
            this.§8"i§.call(null,param1);
         }
      }
      
      public function §?y§(param1:Object) : void
      {
         if(this.§02§)
         {
            this.§8#A§.call(null,param1);
         }
      }
      
      public function §9R§(param1:Function, param2:Function = null) : void
      {
         this.§8"i§ = param1;
         this.§8#A§ = param2;
      }
      
      public function §,#U§() : void
      {
         this.§02§ = false;
      }
      
      public function §&#>§() : void
      {
         this.§02§ = true;
      }
   }
}
