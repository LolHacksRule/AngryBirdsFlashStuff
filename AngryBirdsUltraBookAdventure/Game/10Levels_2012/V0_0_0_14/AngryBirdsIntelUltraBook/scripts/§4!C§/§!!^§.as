package §4!C§
{
   import §6z§.§[g§;
   
   public class §!!^§
   {
       
      
      private var §1#§:String;
      
      private var §]O§:Vector.<Function>;
      
      private var §<!X§:Boolean;
      
      public function §!!^§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§1#§ = param1;
         this.§<!X§ = param3;
         if(param2 != null)
         {
            §[g§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §>3§() : String
      {
         return this.§1#§;
      }
      
      public function §]Q§(param1:Boolean) : void
      {
         this.§<!X§ = param1;
      }
      
      public function §>%§() : Boolean
      {
         return this.§<!X§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§]O§ == null)
         {
            this.§]O§ = new Vector.<Function>();
         }
         if(this.§]O§.indexOf(param1) == -1)
         {
            this.§]O§.push(param1);
         }
      }
      
      public function §^!D§(param1:Function) : void
      {
         if(this.§]O§.indexOf(param1) > -1)
         {
            this.§]O§.splice(this.§]O§.indexOf(param1),1);
         }
      }
      
      public function §]9§() : Vector.<Function>
      {
         return this.§]O§;
      }
   }
}
