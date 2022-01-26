package §_-rh§
{
   import §_-ot§.§_-o6§;
   
   public class §_-Dj§
   {
       
      
      private var §each §:String;
      
      private var §_-nA§:Vector.<Function>;
      
      private var §_-JK§:Boolean;
      
      public function §_-Dj§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§each § = param1;
         this.§_-JK§ = param3;
         if(param2 != null)
         {
            §_-o6§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-Zj§() : String
      {
         return this.§each §;
      }
      
      public function §_-Jr§(param1:Boolean) : void
      {
         this.§_-JK§ = param1;
      }
      
      public function §_-EA§() : Boolean
      {
         return this.§_-JK§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-nA§ == null)
         {
            this.§_-nA§ = new Vector.<Function>();
         }
         if(this.§_-nA§.indexOf(param1) == -1)
         {
            this.§_-nA§.push(param1);
         }
      }
      
      public function §_-7x§(param1:Function) : void
      {
         if(this.§_-nA§.indexOf(param1) > -1)
         {
            this.§_-nA§.splice(this.§_-nA§.indexOf(param1),1);
         }
      }
      
      public function §_-a9§() : Vector.<Function>
      {
         return this.§_-nA§;
      }
   }
}
