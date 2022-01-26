package §_-pn§
{
   import §_-ex§.§_-mR§;
   
   public class §_-4a§
   {
       
      
      private var §_-un§:String;
      
      private var §_-BS§:Vector.<Function>;
      
      private var §_-e-§:Boolean;
      
      public function §_-4a§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-un§ = param1;
         this.§_-e-§ = param3;
         if(param2 != null)
         {
            §_-mR§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-Dr§() : String
      {
         return this.§_-un§;
      }
      
      public function §_-Ie§(param1:Boolean) : void
      {
         this.§_-e-§ = param1;
      }
      
      public function §_-Bl§() : Boolean
      {
         return this.§_-e-§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-BS§ == null)
         {
            this.§_-BS§ = new Vector.<Function>();
         }
         if(this.§_-BS§.indexOf(param1) == -1)
         {
            this.§_-BS§.push(param1);
         }
      }
      
      public function §_-3D§(param1:Function) : void
      {
         if(this.§_-BS§.indexOf(param1) > -1)
         {
            this.§_-BS§.splice(this.§_-BS§.indexOf(param1),1);
         }
      }
      
      public function §_-BP§() : Vector.<Function>
      {
         return this.§_-BS§;
      }
   }
}
