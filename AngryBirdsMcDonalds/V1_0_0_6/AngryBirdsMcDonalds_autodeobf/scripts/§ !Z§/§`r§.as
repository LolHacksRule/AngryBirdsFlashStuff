package § !Z§
{
   import §8<§.§<!7§;
   
   public class §`r§
   {
       
      
      private var §-!K§:String;
      
      private var § !K§:Vector.<Function>;
      
      private var §8i§:Boolean;
      
      public function §`r§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§-!K§ = param1;
         this.§8i§ = param3;
         if(param2 != null)
         {
            §<!7§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §?!H§() : String
      {
         return this.§-!K§;
      }
      
      public function §;x§(param1:Boolean) : void
      {
         this.§8i§ = param1;
      }
      
      public function §1!^§() : Boolean
      {
         return this.§8i§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§ !K§ == null)
         {
            this.§ !K§ = new Vector.<Function>();
         }
         if(this.§ !K§.indexOf(param1) == -1)
         {
            this.§ !K§.push(param1);
         }
      }
      
      public function §;!m§(param1:Function) : void
      {
         if(this.§ !K§.indexOf(param1) > -1)
         {
            this.§ !K§.splice(this.§ !K§.indexOf(param1),1);
         }
      }
      
      public function §;K§() : Vector.<Function>
      {
         return this.§ !K§;
      }
   }
}
