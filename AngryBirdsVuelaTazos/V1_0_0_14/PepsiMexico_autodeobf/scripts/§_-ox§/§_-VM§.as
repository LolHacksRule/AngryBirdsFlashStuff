package §_-ox§
{
   import §_-Eo§.§_-R4§;
   
   public class §_-VM§
   {
       
      
      private var §_-NI§:String;
      
      private var §_-dA§:Vector.<Function>;
      
      private var §_-9v§:Boolean;
      
      public function §_-VM§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-NI§ = param1;
         this.§_-9v§ = param3;
         if(param2 != null)
         {
            §_-R4§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-kV§() : String
      {
         return this.§_-NI§;
      }
      
      public function §_-IM§(param1:Boolean) : void
      {
         this.§_-9v§ = param1;
      }
      
      public function §_-hQ§() : Boolean
      {
         return this.§_-9v§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-dA§ == null)
         {
            this.§_-dA§ = new Vector.<Function>();
         }
         if(this.§_-dA§.indexOf(param1) == -1)
         {
            this.§_-dA§.push(param1);
         }
      }
      
      public function §_-4U§(param1:Function) : void
      {
         if(this.§_-dA§.indexOf(param1) > -1)
         {
            this.§_-dA§.splice(this.§_-dA§.indexOf(param1),1);
         }
      }
      
      public function §_-dz§() : Vector.<Function>
      {
         return this.§_-dA§;
      }
   }
}
