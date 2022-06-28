package §5m§
{
   import §>K§.§9X§;
   
   public class §=!G§
   {
       
      
      private var §#!B§:String;
      
      private var §1-§:Vector.<Function>;
      
      private var §&!6§:Boolean;
      
      public function §=!G§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§#!B§ = param1;
         this.§&!6§ = param3;
         if(param2 != null)
         {
            §9X§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §[]§() : String
      {
         return this.§#!B§;
      }
      
      public function §[u§(param1:Boolean) : void
      {
         this.§&!6§ = param1;
      }
      
      public function §"M§() : Boolean
      {
         return this.§&!6§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1-§ == null)
         {
            this.§1-§ = new Vector.<Function>();
         }
         if(this.§1-§.indexOf(param1) == -1)
         {
            this.§1-§.push(param1);
         }
      }
      
      public function §"!!§(param1:Function) : void
      {
         if(this.§1-§.indexOf(param1) > -1)
         {
            this.§1-§.splice(this.§1-§.indexOf(param1),1);
         }
      }
      
      public function §]a§() : Vector.<Function>
      {
         return this.§1-§;
      }
   }
}
