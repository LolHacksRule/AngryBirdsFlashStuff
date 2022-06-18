package § $%§
{
   import §<"p§.§?!T§;
   
   public class §-J§
   {
       
      
      private var §=b§:String;
      
      private var §&#-§:Vector.<Function>;
      
      private var § 1§:Boolean;
      
      public function §-J§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§=b§ = param1;
         this.§ 1§ = param3;
         if(param2 != null)
         {
            §?!T§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §+$8§() : String
      {
         return this.§=b§;
      }
      
      public function §&"x§(param1:Boolean) : void
      {
         this.§ 1§ = param1;
      }
      
      public function §83§() : Boolean
      {
         return this.§ 1§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&#-§ == null)
         {
            this.§&#-§ = new Vector.<Function>();
         }
         if(this.§&#-§.indexOf(param1) == -1)
         {
            this.§&#-§.push(param1);
         }
      }
      
      public function §+#R§(param1:Function) : void
      {
         if(this.§&#-§.indexOf(param1) > -1)
         {
            this.§&#-§.splice(this.§&#-§.indexOf(param1),1);
         }
      }
      
      public function §]""§() : Vector.<Function>
      {
         return this.§&#-§;
      }
   }
}
