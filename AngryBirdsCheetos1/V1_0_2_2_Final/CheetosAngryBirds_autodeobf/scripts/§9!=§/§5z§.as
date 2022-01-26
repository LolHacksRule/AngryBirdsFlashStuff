package §9!=§
{
   import § !G§.§ #§;
   
   public class §5z§
   {
       
      
      private var §[!P§:String;
      
      private var §3W§:Vector.<Function>;
      
      private var §"!4§:Boolean;
      
      public function §5z§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§[!P§ = param1;
         this.§"!4§ = param3;
         if(param2 != null)
         {
            § #§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §5![§() : String
      {
         return this.§[!P§;
      }
      
      public function §[A§(param1:Boolean) : void
      {
         this.§"!4§ = param1;
      }
      
      public function §0!X§() : Boolean
      {
         return this.§"!4§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3W§ == null)
         {
            this.§3W§ = new Vector.<Function>();
         }
         if(this.§3W§.indexOf(param1) == -1)
         {
            this.§3W§.push(param1);
         }
      }
      
      public function §]Q§(param1:Function) : void
      {
         if(this.§3W§.indexOf(param1) > -1)
         {
            this.§3W§.splice(this.§3W§.indexOf(param1),1);
         }
      }
      
      public function §&,§() : Vector.<Function>
      {
         return this.§3W§;
      }
   }
}
