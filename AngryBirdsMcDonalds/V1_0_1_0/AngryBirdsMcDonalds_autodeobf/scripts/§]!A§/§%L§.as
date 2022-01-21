package §]!A§
{
   import §`!W§.§2v§;
   
   public class §%L§
   {
       
      
      private var §8l§:String;
      
      private var §47§:Vector.<Function>;
      
      private var §`!D§:Boolean;
      
      public function §%L§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§8l§ = param1;
         this.§`!D§ = param3;
         if(param2 != null)
         {
            §2v§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §`n§() : String
      {
         return this.§8l§;
      }
      
      public function §<=§(param1:Boolean) : void
      {
         this.§`!D§ = param1;
      }
      
      public function §78§() : Boolean
      {
         return this.§`!D§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§47§ == null)
         {
            this.§47§ = new Vector.<Function>();
         }
         if(this.§47§.indexOf(param1) == -1)
         {
            this.§47§.push(param1);
         }
      }
      
      public function §<X§(param1:Function) : void
      {
         if(this.§47§.indexOf(param1) > -1)
         {
            this.§47§.splice(this.§47§.indexOf(param1),1);
         }
      }
      
      public function §&!1§() : Vector.<Function>
      {
         return this.§47§;
      }
   }
}
