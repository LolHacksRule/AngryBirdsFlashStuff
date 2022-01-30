package §]!5§
{
   import §;4§.§]!%§;
   
   public class §"!N§
   {
       
      
      private var §9!1§:String;
      
      private var §^"'§:Vector.<Function>;
      
      private var §&!X§:Boolean;
      
      public function §"!N§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§9!1§ = param1;
         this.§&!X§ = param3;
         if(param2 != null)
         {
            §]!%§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §8v§() : String
      {
         return this.§9!1§;
      }
      
      public function §[!1§(param1:Boolean) : void
      {
         this.§&!X§ = param1;
      }
      
      public function §44§() : Boolean
      {
         return this.§&!X§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^"'§ == null)
         {
            this.§^"'§ = new Vector.<Function>();
         }
         if(this.§^"'§.indexOf(param1) == -1)
         {
            this.§^"'§.push(param1);
         }
      }
      
      public function §!M§(param1:Function) : void
      {
         if(this.§^"'§.indexOf(param1) > -1)
         {
            this.§^"'§.splice(this.§^"'§.indexOf(param1),1);
         }
      }
      
      public function §true §() : Vector.<Function>
      {
         return this.§^"'§;
      }
   }
}
