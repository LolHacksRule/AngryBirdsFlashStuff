package §`!o§
{
   import §5t§.Log;
   
   public class §return§
   {
       
      
      private var §`#W§:String;
      
      private var §6!y§:Vector.<Function>;
      
      private var §;#J§:Boolean;
      
      public function §return§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§`#W§ = param1;
         this.§;#J§ = param3;
         if(param2 != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §86§() : String
      {
         return this.§`#W§;
      }
      
      public function §1#V§(param1:Boolean) : void
      {
         this.§;#J§ = param1;
      }
      
      public function §6!h§() : Boolean
      {
         return this.§;#J§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§6!y§ == null)
         {
            this.§6!y§ = new Vector.<Function>();
         }
         if(this.§6!y§.indexOf(param1) == -1)
         {
            this.§6!y§.push(param1);
         }
      }
      
      public function §&z§(param1:Function) : void
      {
         if(this.§6!y§.indexOf(param1) > -1)
         {
            this.§6!y§.splice(this.§6!y§.indexOf(param1),1);
         }
      }
      
      public function §[z§() : Vector.<Function>
      {
         return this.§6!y§;
      }
   }
}
