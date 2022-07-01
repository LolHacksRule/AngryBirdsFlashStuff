package §[8§
{
   public class §#u§
   {
       
      
      private var §;"§:Number;
      
      private var §-"$§:String;
      
      private var §##§:Function;
      
      private var §1A§:Function;
      
      private var §%!T§:Boolean = true;
      
      public function §#u§(param1:String, param2:Number)
      {
         super();
         this.§-"$§ = param1;
         this.§;"§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §+!T§() : String
      {
         return this.§-"$§;
      }
      
      public function §[!i§() : Function
      {
         return this.§##§;
      }
      
      public function §<V§() : Function
      {
         return this.§1A§;
      }
      
      public function §&"&§(param1:Object) : void
      {
         if(this.§%!T§)
         {
            this.§##§.call(null,param1);
         }
      }
      
      public function §1"<§(param1:Object) : void
      {
         if(this.§%!T§)
         {
            this.§1A§.call(null,param1);
         }
      }
      
      public function §#!-§(param1:Function, param2:Function = null) : void
      {
         this.§##§ = param1;
         this.§1A§ = param2;
      }
      
      public function §7A§() : void
      {
         this.§%!T§ = false;
      }
      
      public function §-!K§() : void
      {
         this.§%!T§ = true;
      }
   }
}
