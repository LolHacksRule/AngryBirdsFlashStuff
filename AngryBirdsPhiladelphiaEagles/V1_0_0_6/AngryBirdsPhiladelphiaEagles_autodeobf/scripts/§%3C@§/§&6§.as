package §<@§
{
   import §3!O§.§5q§;
   
   public class §&6§
   {
       
      
      private var §;,§:String;
      
      private var §8u§:Vector.<Function>;
      
      private var §+%§:Boolean;
      
      public function §&6§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§;,§ = param1;
         this.§+%§ = param3;
         if(param2 != null)
         {
            §5q§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §!d§() : String
      {
         return this.§;,§;
      }
      
      public function §[W§(param1:Boolean) : void
      {
         this.§+%§ = param1;
      }
      
      public function §!!'§() : Boolean
      {
         return this.§+%§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8u§ == null)
         {
            this.§8u§ = new Vector.<Function>();
         }
         if(this.§8u§.indexOf(param1) == -1)
         {
            this.§8u§.push(param1);
         }
      }
      
      public function §>c§(param1:Function) : void
      {
         if(this.§8u§.indexOf(param1) > -1)
         {
            this.§8u§.splice(this.§8u§.indexOf(param1),1);
         }
      }
      
      public function §2M§() : Vector.<Function>
      {
         return this.§8u§;
      }
   }
}
