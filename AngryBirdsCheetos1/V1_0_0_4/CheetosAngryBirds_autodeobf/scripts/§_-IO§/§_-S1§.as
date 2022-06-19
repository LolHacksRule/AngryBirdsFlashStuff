package §_-IO§
{
   import §_-r6§.§_-Oy§;
   
   public class §_-S1§
   {
       
      
      private var §_-Bi§:String;
      
      private var §_-JW§:Vector.<Function>;
      
      private var §_-Ow§:Boolean;
      
      public function §_-S1§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§_-Bi§ = param1;
         this.§_-Ow§ = param3;
         if(param2 != null)
         {
            §_-Oy§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §_-TO§() : String
      {
         return this.§_-Bi§;
      }
      
      public function §_-uC§(param1:Boolean) : void
      {
         this.§_-Ow§ = param1;
      }
      
      public function §for §() : Boolean
      {
         return this.§_-Ow§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-JW§ == null)
         {
            this.§_-JW§ = new Vector.<Function>();
         }
         if(this.§_-JW§.indexOf(param1) == -1)
         {
            this.§_-JW§.push(param1);
         }
      }
      
      public function §_-Mf§(param1:Function) : void
      {
         if(this.§_-JW§.indexOf(param1) > -1)
         {
            this.§_-JW§.splice(this.§_-JW§.indexOf(param1),1);
         }
      }
      
      public function §_-0W§() : Vector.<Function>
      {
         return this.§_-JW§;
      }
   }
}
