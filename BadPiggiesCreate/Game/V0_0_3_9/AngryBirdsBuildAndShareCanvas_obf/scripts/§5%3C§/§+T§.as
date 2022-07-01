package §5<§
{
   public class §+T§
   {
       
      
      private var §2J§:Number;
      
      private var §5!p§:String;
      
      private var §<!y§:Function;
      
      private var §'p§:Function;
      
      private var §9<§:Boolean = true;
      
      public function §+T§(param1:String, param2:Number)
      {
         super();
         this.§5!p§ = param1;
         this.§2J§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §!"-§() : String
      {
         return this.§5!p§;
      }
      
      public function §"",§() : Function
      {
         return this.§<!y§;
      }
      
      public function §""#§() : Function
      {
         return this.§'p§;
      }
      
      public function §^!T§(param1:Object) : void
      {
         if(this.§9<§)
         {
            this.§<!y§.call(null,param1);
         }
      }
      
      public function §!!2§(param1:Object) : void
      {
         if(this.§9<§)
         {
            this.§'p§.call(null,param1);
         }
      }
      
      public function §&i§(param1:Function, param2:Function = null) : void
      {
         this.§<!y§ = param1;
         this.§'p§ = param2;
      }
      
      public function §!B§() : void
      {
         this.§9<§ = false;
      }
      
      public function § !&§() : void
      {
         this.§9<§ = true;
      }
   }
}
