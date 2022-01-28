package §_-wM§
{
   import §_-gM§.§_-yj§;
   
   public class §_-nm§
   {
       
      
      private var §_-ZS§:String;
      
      private var §_-Uw§:Vector.<Function>;
      
      private var §_-wb§:Boolean;
      
      public function §_-nm§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-ZS§ = param1;
         this.§_-wb§ = param3;
         if(param2 != null)
         {
            §_-yj§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-1e§() : String
      {
         return this.§_-ZS§;
      }
      
      public function §_-DH§(param1:Boolean) : void
      {
         this.§_-wb§ = param1;
      }
      
      public function §_-EA§() : Boolean
      {
         return this.§_-wb§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-Uw§ == null)
         {
            this.§_-Uw§ = new Vector.<Function>();
         }
         if(this.§_-Uw§.indexOf(param1) == -1)
         {
            this.§_-Uw§.push(param1);
         }
      }
      
      public function §_-KC§(param1:Function) : void
      {
         if(this.§_-Uw§.indexOf(param1) > -1)
         {
            this.§_-Uw§.splice(this.§_-Uw§.indexOf(param1),1);
         }
      }
      
      public function §_-D9§() : Vector.<Function>
      {
         return this.§_-Uw§;
      }
   }
}
