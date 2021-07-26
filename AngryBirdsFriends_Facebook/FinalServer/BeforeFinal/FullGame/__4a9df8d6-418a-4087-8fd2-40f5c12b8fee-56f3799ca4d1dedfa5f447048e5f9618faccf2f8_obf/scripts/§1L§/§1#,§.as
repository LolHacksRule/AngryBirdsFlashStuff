package §1L§
{
   import §1#v§.§;!Y§;
   
   public class §1#,§
   {
       
      
      private var §="X§:String;
      
      private var §-"$§:Vector.<Function>;
      
      private var §9!r§:Boolean;
      
      public function §1#,§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§="X§ = param1;
         this.§9!r§ = param3;
         if(param2 != null)
         {
            §;!Y§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §3"p§() : String
      {
         return this.§="X§;
      }
      
      public function §2#d§(param1:Boolean) : void
      {
         this.§9!r§ = param1;
      }
      
      public function §?$D§() : Boolean
      {
         return this.§9!r§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§-"$§ == null)
         {
            this.§-"$§ = new Vector.<Function>();
         }
         if(this.§-"$§.indexOf(param1) == -1)
         {
            this.§-"$§.push(param1);
         }
      }
      
      public function §?!§(param1:Function) : void
      {
         if(this.§-"$§.indexOf(param1) > -1)
         {
            this.§-"$§.splice(this.§-"$§.indexOf(param1),1);
         }
      }
      
      public function §`#f§() : Vector.<Function>
      {
         return this.§-"$§;
      }
   }
}
