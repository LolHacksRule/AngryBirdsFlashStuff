package §;c§
{
   import §1!K§.§>!<§;
   
   public class §=<§
   {
       
      
      private var §0K§:String;
      
      private var §^X§:Vector.<Function>;
      
      private var §'!`§:Boolean;
      
      public function §=<§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§0K§ = param1;
         this.§'!`§ = param3;
         if(param2 != null)
         {
            §>!<§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]!5§() : String
      {
         return this.§0K§;
      }
      
      public function §#!1§(param1:Boolean) : void
      {
         this.§'!`§ = param1;
      }
      
      public function §<!-§() : Boolean
      {
         return this.§'!`§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^X§ == null)
         {
            this.§^X§ = new Vector.<Function>();
         }
         if(this.§^X§.indexOf(param1) == -1)
         {
            this.§^X§.push(param1);
         }
      }
      
      public function §=C§(param1:Function) : void
      {
         if(this.§^X§.indexOf(param1) > -1)
         {
            this.§^X§.splice(this.§^X§.indexOf(param1),1);
         }
      }
      
      public function §;;§() : Vector.<Function>
      {
         return this.§^X§;
      }
   }
}
