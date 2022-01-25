package §=!m§
{
   import §0i§.§4!%§;
   
   public class §9-§
   {
       
      
      private var §%!i§:String;
      
      private var §<A§:Vector.<Function>;
      
      private var §0;§:Boolean;
      
      public function §9-§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§%!i§ = param1;
         this.§0;§ = param3;
         if(param2 != null)
         {
            §4!%§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §1i§() : String
      {
         return this.§%!i§;
      }
      
      public function §50§(param1:Boolean) : void
      {
         this.§0;§ = param1;
      }
      
      public function §=M§() : Boolean
      {
         return this.§0;§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§<A§ == null)
         {
            this.§<A§ = new Vector.<Function>();
         }
         if(this.§<A§.indexOf(param1) == -1)
         {
            this.§<A§.push(param1);
         }
      }
      
      public function §!W§(param1:Function) : void
      {
         if(this.§<A§.indexOf(param1) > -1)
         {
            this.§<A§.splice(this.§<A§.indexOf(param1),1);
         }
      }
      
      public function §^!f§() : Vector.<Function>
      {
         return this.§<A§;
      }
   }
}
