package §45§
{
   public class §6!^§
   {
       
      
      private var §]!5§:Number;
      
      private var §`d§:String;
      
      private var §0=§:Function;
      
      private var §6"!§:Function;
      
      private var §!!"§:Boolean = true;
      
      public function §6!^§(param1:String, param2:Number)
      {
         super();
         this.§`d§ = param1;
         this.§]!5§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`!k§() : String
      {
         return this.§`d§;
      }
      
      public function §&g§() : Function
      {
         return this.§0=§;
      }
      
      public function §]!3§() : Function
      {
         return this.§6"!§;
      }
      
      public function §'1§(param1:Object) : void
      {
         if(this.§!!"§)
         {
            this.§0=§.call(null,param1);
         }
      }
      
      public function §^X§(param1:Object) : void
      {
         if(this.§!!"§)
         {
            this.§6"!§.call(null,param1);
         }
      }
      
      public function §>s§(param1:Function, param2:Function = null) : void
      {
         this.§0=§ = param1;
         this.§6"!§ = param2;
      }
      
      public function §4!§() : void
      {
         this.§!!"§ = false;
      }
      
      public function §=h§() : void
      {
         this.§!!"§ = true;
      }
   }
}
