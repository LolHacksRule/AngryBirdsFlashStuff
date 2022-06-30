package §9!D§
{
   import §0i§.§]_§;
   
   public class §2>§
   {
       
      
      private var §+!c§:String;
      
      private var §@F§:Vector.<Function>;
      
      private var §[y§:Boolean;
      
      public function §2>§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§+!c§ = param1;
         this.§[y§ = param3;
         if(param2 != null)
         {
            §]_§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]c§() : String
      {
         return this.§+!c§;
      }
      
      public function §41§(param1:Boolean) : void
      {
         this.§[y§ = param1;
      }
      
      public function §!!`§() : Boolean
      {
         return this.§[y§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§@F§ == null)
         {
            this.§@F§ = new Vector.<Function>();
         }
         if(this.§@F§.indexOf(param1) == -1)
         {
            this.§@F§.push(param1);
         }
      }
      
      public function §0!e§(param1:Function) : void
      {
         if(this.§@F§.indexOf(param1) > -1)
         {
            this.§@F§.splice(this.§@F§.indexOf(param1),1);
         }
      }
      
      public function §%<§() : Vector.<Function>
      {
         return this.§@F§;
      }
   }
}
