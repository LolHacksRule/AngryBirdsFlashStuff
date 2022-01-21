package §]!A§
{
   public class §0!D§
   {
       
      
      private var §>!S§:Number;
      
      private var §9z§:String;
      
      private var §9f§:Function;
      
      private var §#!1§:Function;
      
      private var §=!o§:Boolean = true;
      
      public function §0!D§(param1:String, param2:Number)
      {
         super();
         this.§9z§ = param1;
         this.§>!S§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §[!W§() : String
      {
         return this.§9z§;
      }
      
      public function §[!"§() : Function
      {
         return this.§9f§;
      }
      
      public function §'!i§() : Function
      {
         return this.§#!1§;
      }
      
      public function §5!f§(param1:Object) : void
      {
         if(this.§=!o§)
         {
            this.§9f§.call(null,param1);
         }
      }
      
      public function §#b§(param1:Object) : void
      {
         if(this.§=!o§)
         {
            this.§#!1§.call(null,param1);
         }
      }
      
      public function §"![§(param1:Function, param2:Function = null) : void
      {
         this.§9f§ = param1;
         this.§#!1§ = param2;
      }
      
      public function §?!V§() : void
      {
         this.§=!o§ = false;
      }
      
      public function §10§() : void
      {
         this.§=!o§ = true;
      }
   }
}
