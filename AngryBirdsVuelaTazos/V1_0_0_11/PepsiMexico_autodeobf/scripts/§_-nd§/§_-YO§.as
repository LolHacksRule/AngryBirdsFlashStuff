package §_-nd§
{
   import §_-ZG§.§_-Ne§;
   
   public class §_-YO§
   {
       
      
      private var §_-tc§:String;
      
      private var §_-QW§:Vector.<Function>;
      
      private var §_-M-§:Boolean;
      
      public function §_-YO§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-tc§ = param1;
         this.§_-M-§ = param3;
         if(param2 != null)
         {
            §_-Ne§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-VD§() : String
      {
         return this.§_-tc§;
      }
      
      public function §_-Xf§(param1:Boolean) : void
      {
         this.§_-M-§ = param1;
      }
      
      public function §_-fS§() : Boolean
      {
         return this.§_-M-§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-QW§ == null)
         {
            this.§_-QW§ = new Vector.<Function>();
         }
         if(this.§_-QW§.indexOf(param1) == -1)
         {
            this.§_-QW§.push(param1);
         }
      }
      
      public function §_-bv§(param1:Function) : void
      {
         if(this.§_-QW§.indexOf(param1) > -1)
         {
            this.§_-QW§.splice(this.§_-QW§.indexOf(param1),1);
         }
      }
      
      public function §_-8h§() : Vector.<Function>
      {
         return this.§_-QW§;
      }
   }
}
