package §3!$§
{
   import §'6§.§?!L§;
   
   public class §<>§
   {
       
      
      private var §2!L§:String;
      
      private var §^0§:Vector.<Function>;
      
      private var §0!G§:Boolean;
      
      public function §<>§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§2!L§ = param1;
         this.§0!G§ = param3;
         if(param2 != null)
         {
            §?!L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §!1§() : String
      {
         return this.§2!L§;
      }
      
      public function §&0§(param1:Boolean) : void
      {
         this.§0!G§ = param1;
      }
      
      public function § S§() : Boolean
      {
         return this.§0!G§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^0§ == null)
         {
            this.§^0§ = new Vector.<Function>();
         }
         if(this.§^0§.indexOf(param1) == -1)
         {
            this.§^0§.push(param1);
         }
      }
      
      public function §[v§(param1:Function) : void
      {
         if(this.§^0§.indexOf(param1) > -1)
         {
            this.§^0§.splice(this.§^0§.indexOf(param1),1);
         }
      }
      
      public function § !§() : Vector.<Function>
      {
         return this.§^0§;
      }
   }
}
