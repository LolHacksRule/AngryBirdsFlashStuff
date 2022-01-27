package §,!_§
{
   public class §%"l§
   {
       
      
      private var §"!&§:Number;
      
      private var §@^§:String;
      
      private var §9!A§:Function;
      
      private var §0"%§:Function;
      
      private var §--§:Boolean = true;
      
      public function §%"l§(param1:String, param2:Number)
      {
         super();
         this.§@^§ = param1;
         this.§"!&§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §3#0§() : String
      {
         return this.§@^§;
      }
      
      public function §,!]§() : Function
      {
         return this.§9!A§;
      }
      
      public function §%!N§() : Function
      {
         return this.§0"%§;
      }
      
      public function §+!t§(param1:Object) : void
      {
         if(this.§--§)
         {
            this.§9!A§.call(null,param1);
         }
      }
      
      public function §<!5§(param1:Object) : void
      {
         if(this.§--§)
         {
            this.§0"%§.call(null,param1);
         }
      }
      
      public function §1y§(param1:Function, param2:Function = null) : void
      {
         this.§9!A§ = param1;
         this.§0"%§ = param2;
      }
      
      public function §2"M§() : void
      {
         this.§--§ = false;
      }
      
      public function §],§() : void
      {
         this.§--§ = true;
      }
   }
}
