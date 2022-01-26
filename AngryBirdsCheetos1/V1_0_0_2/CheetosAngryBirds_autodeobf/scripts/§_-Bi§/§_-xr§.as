package §_-Bi§
{
   import §_-aA§.§_-I0§;
   
   public class §_-xr§
   {
       
      
      private var §_-IO§:String;
      
      private var §_-wn§:Vector.<Function>;
      
      private var §_-i8§:Boolean;
      
      public function §_-xr§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-IO§ = param1;
         this.§_-i8§ = param3;
         if(param2 != null)
         {
            §_-I0§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-gq§() : String
      {
         return this.§_-IO§;
      }
      
      public function §_-cx§(param1:Boolean) : void
      {
         this.§_-i8§ = param1;
      }
      
      public function §_-jR§() : Boolean
      {
         return this.§_-i8§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-wn§ == null)
         {
            this.§_-wn§ = new Vector.<Function>();
         }
         if(this.§_-wn§.indexOf(param1) == -1)
         {
            this.§_-wn§.push(param1);
         }
      }
      
      public function §_-p2§(param1:Function) : void
      {
         if(this.§_-wn§.indexOf(param1) > -1)
         {
            this.§_-wn§.splice(this.§_-wn§.indexOf(param1),1);
         }
      }
      
      public function §_-40§() : Vector.<Function>
      {
         return this.§_-wn§;
      }
   }
}
