package §#!2§
{
   import §'m§.§^S§;
   
   public class §<4§
   {
       
      
      private var §[?§:String;
      
      private var §#Q§:Vector.<Function>;
      
      private var §]D§:Boolean;
      
      public function §<4§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§[?§ = param1;
         this.§]D§ = param3;
         if(param2 != null)
         {
            §^S§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §3f§() : String
      {
         return this.§[?§;
      }
      
      public function §-Z§(param1:Boolean) : void
      {
         this.§]D§ = param1;
      }
      
      public function §'8§() : Boolean
      {
         return this.§]D§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§#Q§ == null)
         {
            this.§#Q§ = new Vector.<Function>();
         }
         if(this.§#Q§.indexOf(param1) == -1)
         {
            this.§#Q§.push(param1);
         }
      }
      
      public function §@,§(param1:Function) : void
      {
         if(this.§#Q§.indexOf(param1) > -1)
         {
            this.§#Q§.splice(this.§#Q§.indexOf(param1),1);
         }
      }
      
      public function §=!1§() : Vector.<Function>
      {
         return this.§#Q§;
      }
   }
}
