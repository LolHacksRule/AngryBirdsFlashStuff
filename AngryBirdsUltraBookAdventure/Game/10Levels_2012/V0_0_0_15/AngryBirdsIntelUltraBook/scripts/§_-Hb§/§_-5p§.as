package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-5p§
   {
       
      
      private var §_-Cc§:String;
      
      private var §_-0Er§:Vector.<Function>;
      
      private var §_-Ka§:Boolean;
      
      public function §_-5p§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-Cc§ = param1;
         this.§_-Ka§ = param3;
         if(param2 != null)
         {
            §_-FK§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-dz§() : String
      {
         return this.§_-Cc§;
      }
      
      public function §_-9k§(param1:Boolean) : void
      {
         this.§_-Ka§ = param1;
      }
      
      public function §_-r6§() : Boolean
      {
         return this.§_-Ka§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-0Er§ == null)
         {
            this.§_-0Er§ = new Vector.<Function>();
         }
         if(this.§_-0Er§.indexOf(param1) == -1)
         {
            this.§_-0Er§.push(param1);
         }
      }
      
      public function §_-tG§(param1:Function) : void
      {
         if(this.§_-0Er§.indexOf(param1) > -1)
         {
            this.§_-0Er§.splice(this.§_-0Er§.indexOf(param1),1);
         }
      }
      
      public function §_-k4§() : Vector.<Function>
      {
         return this.§_-0Er§;
      }
   }
}
