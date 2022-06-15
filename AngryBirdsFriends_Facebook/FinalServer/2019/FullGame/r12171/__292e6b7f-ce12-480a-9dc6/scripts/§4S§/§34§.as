package §4S§
{
   import §6"p§.§^"t§;
   
   public class §34§
   {
       
      
      private var §##A§:String;
      
      private var §?!p§:Vector.<Function>;
      
      private var §%4§:Boolean;
      
      public function §34§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§##A§ = param1;
         this.§%4§ = param3;
         if(param2 != null)
         {
            §^"t§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §5>§() : String
      {
         return this.§##A§;
      }
      
      public function §?!9§(param1:Boolean) : void
      {
         this.§%4§ = param1;
      }
      
      public function §97§() : Boolean
      {
         return this.§%4§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§?!p§ == null)
         {
            this.§?!p§ = new Vector.<Function>();
         }
         if(this.§?!p§.indexOf(param1) == -1)
         {
            this.§?!p§.push(param1);
         }
      }
      
      public function §&#&§(param1:Function) : void
      {
         if(this.§?!p§.indexOf(param1) > -1)
         {
            this.§?!p§.splice(this.§?!p§.indexOf(param1),1);
         }
      }
      
      public function §4d§() : Vector.<Function>
      {
         return this.§?!p§;
      }
   }
}
