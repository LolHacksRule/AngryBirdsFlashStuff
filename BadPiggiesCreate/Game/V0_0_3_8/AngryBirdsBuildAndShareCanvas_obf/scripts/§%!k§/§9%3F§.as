package §%!k§
{
   public class §9?§
   {
       
      
      private var §<"!§:Number;
      
      private var §8v§:String;
      
      private var §13§:Function;
      
      private var §1i§:Function;
      
      private var §[b§:Boolean = true;
      
      public function §9?§(param1:String, param2:Number)
      {
         super();
         this.§8v§ = param1;
         this.§<"!§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §5f§() : String
      {
         return this.§8v§;
      }
      
      public function §5"!§() : Function
      {
         return this.§13§;
      }
      
      public function §0!b§() : Function
      {
         return this.§1i§;
      }
      
      public function §@!2§(param1:Object) : void
      {
         if(this.§[b§)
         {
            this.§13§.call(null,param1);
         }
      }
      
      public function §1!i§(param1:Object) : void
      {
         if(this.§[b§)
         {
            this.§1i§.call(null,param1);
         }
      }
      
      public function §=!u§(param1:Function, param2:Function = null) : void
      {
         this.§13§ = param1;
         this.§1i§ = param2;
      }
      
      public function §&!J§() : void
      {
         this.§[b§ = false;
      }
      
      public function §`"'§() : void
      {
         this.§[b§ = true;
      }
   }
}
