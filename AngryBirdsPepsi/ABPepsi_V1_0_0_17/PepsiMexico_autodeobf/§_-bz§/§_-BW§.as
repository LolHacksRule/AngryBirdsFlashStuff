package §_-bz§
{
   import §_-e3§.§_-54§;
   
   public class §_-BW§
   {
       
      
      private var §_-6o§:String;
      
      private var §_-Hd§:Vector.<Function>;
      
      private var §_-M6§:Boolean;
      
      public function §_-BW§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-6o§ = param1;
         this.§_-M6§ = param3;
         if(param2 != null)
         {
            §_-54§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-nt§() : String
      {
         return this.§_-6o§;
      }
      
      public function §_-ut§(param1:Boolean) : void
      {
         this.§_-M6§ = param1;
      }
      
      public function §_-jv§() : Boolean
      {
         return this.§_-M6§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-Hd§ == null)
         {
            this.§_-Hd§ = new Vector.<Function>();
         }
         if(this.§_-Hd§.indexOf(param1) == -1)
         {
            this.§_-Hd§.push(param1);
         }
      }
      
      public function §_-IR§(param1:Function) : void
      {
         if(this.§_-Hd§.indexOf(param1) > -1)
         {
            this.§_-Hd§.splice(this.§_-Hd§.indexOf(param1),1);
         }
      }
      
      public function §_-ir§() : Vector.<Function>
      {
         return this.§_-Hd§;
      }
   }
}
