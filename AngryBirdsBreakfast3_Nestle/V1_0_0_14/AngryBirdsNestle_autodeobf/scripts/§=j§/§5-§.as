package §=j§
{
   import §8!$§.§?p§;
   
   public class §5-§
   {
       
      
      private var §8!B§:String;
      
      private var §=!w§:Vector.<Function>;
      
      private var §&6§:Boolean;
      
      public function §5-§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§8!B§ = param1;
         this.§&6§ = param3;
         if(param2 != null)
         {
            §?p§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §9s§() : String
      {
         return this.§8!B§;
      }
      
      public function §,c§(param1:Boolean) : void
      {
         this.§&6§ = param1;
      }
      
      public function §<!=§() : Boolean
      {
         return this.§&6§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§=!w§ == null)
         {
            this.§=!w§ = new Vector.<Function>();
         }
         if(this.§=!w§.indexOf(param1) == -1)
         {
            this.§=!w§.push(param1);
         }
      }
      
      public function §`!?§(param1:Function) : void
      {
         if(this.§=!w§.indexOf(param1) > -1)
         {
            this.§=!w§.splice(this.§=!w§.indexOf(param1),1);
         }
      }
      
      public function §72§() : Vector.<Function>
      {
         return this.§=!w§;
      }
   }
}
