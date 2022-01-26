package §_-3f§
{
   import §_-U0§.§_-tF§;
   
   public class §_-HB§
   {
       
      
      private var §_-Nv§:String;
      
      private var §_-fP§:Vector.<Function>;
      
      private var §_-vL§:Boolean;
      
      public function §_-HB§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-Nv§ = param1;
         this.§_-vL§ = param3;
         if(param2 != null)
         {
            §_-tF§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-kr§() : String
      {
         return this.§_-Nv§;
      }
      
      public function §_-Np§(param1:Boolean) : void
      {
         this.§_-vL§ = param1;
      }
      
      public function §_-4r§() : Boolean
      {
         return this.§_-vL§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-fP§ == null)
         {
            this.§_-fP§ = new Vector.<Function>();
         }
         if(this.§_-fP§.indexOf(param1) == -1)
         {
            this.§_-fP§.push(param1);
         }
      }
      
      public function §_-Zc§(param1:Function) : void
      {
         if(this.§_-fP§.indexOf(param1) > -1)
         {
            this.§_-fP§.splice(this.§_-fP§.indexOf(param1),1);
         }
      }
      
      public function §_-mi§() : Vector.<Function>
      {
         return this.§_-fP§;
      }
   }
}
