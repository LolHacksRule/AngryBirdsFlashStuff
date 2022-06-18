package §9U§
{
   public class §4!K§
   {
       
      
      private var §5!M§:Number;
      
      private var §8-§:String;
      
      private var §#=§:Function;
      
      private var §!!<§:Function;
      
      private var §`!§:Boolean = true;
      
      public function §4!K§(param1:String, param2:Number)
      {
         super();
         this.§8-§ = param1;
         this.§5!M§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-v§() : String
      {
         return this.§8-§;
      }
      
      public function §]!K§() : Function
      {
         return this.§#=§;
      }
      
      public function §<9§() : Function
      {
         return this.§!!<§;
      }
      
      public function §@1§(param1:Object) : void
      {
         if(this.§`!§)
         {
            this.§#=§.call(null,param1);
         }
      }
      
      public function §&!G§(param1:Object) : void
      {
         if(this.§`!§)
         {
            this.§!!<§.call(null,param1);
         }
      }
      
      public function §@g§(param1:Function, param2:Function = null) : void
      {
         this.§#=§ = param1;
         this.§!!<§ = param2;
      }
      
      public function §4A§() : void
      {
         this.§`!§ = false;
      }
      
      public function §4j§() : void
      {
         this.§`!§ = true;
      }
   }
}
