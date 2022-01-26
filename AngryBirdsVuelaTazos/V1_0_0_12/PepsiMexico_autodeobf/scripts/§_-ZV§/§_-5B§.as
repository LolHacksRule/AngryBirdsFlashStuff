package §_-ZV§
{
   import §_-RG§.§_-HT§;
   
   public class §_-5B§
   {
       
      
      private var §_-K3§:String;
      
      private var §_-JT§:Vector.<Function>;
      
      private var §_-tt§:Boolean;
      
      public function §_-5B§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-K3§ = param1;
         this.§_-tt§ = param3;
         if(param2 != null)
         {
            §_-HT§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-ps§() : String
      {
         return this.§_-K3§;
      }
      
      public function §_-n7§(param1:Boolean) : void
      {
         this.§_-tt§ = param1;
      }
      
      public function §_-uz§() : Boolean
      {
         return this.§_-tt§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-JT§ == null)
         {
            this.§_-JT§ = new Vector.<Function>();
         }
         if(this.§_-JT§.indexOf(param1) == -1)
         {
            this.§_-JT§.push(param1);
         }
      }
      
      public function §_-LE§(param1:Function) : void
      {
         if(this.§_-JT§.indexOf(param1) > -1)
         {
            this.§_-JT§.splice(this.§_-JT§.indexOf(param1),1);
         }
      }
      
      public function §_-Fa§() : Vector.<Function>
      {
         return this.§_-JT§;
      }
   }
}
