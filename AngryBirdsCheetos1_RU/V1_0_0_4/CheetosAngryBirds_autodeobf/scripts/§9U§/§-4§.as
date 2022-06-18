package §9U§
{
   import §^!&§.§;C§;
   
   public class §-4§
   {
       
      
      private var §;v§:String;
      
      private var §8!U§:Vector.<Function>;
      
      private var §>n§:Boolean;
      
      public function §-4§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§;v§ = param1;
         this.§>n§ = param3;
         if(param2 != null)
         {
            §;C§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §=D§() : String
      {
         return this.§;v§;
      }
      
      public function §%N§(param1:Boolean) : void
      {
         this.§>n§ = param1;
      }
      
      public function §=V§() : Boolean
      {
         return this.§>n§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8!U§ == null)
         {
            this.§8!U§ = new Vector.<Function>();
         }
         if(this.§8!U§.indexOf(param1) == -1)
         {
            this.§8!U§.push(param1);
         }
      }
      
      public function §9!6§(param1:Function) : void
      {
         if(this.§8!U§.indexOf(param1) > -1)
         {
            this.§8!U§.splice(this.§8!U§.indexOf(param1),1);
         }
      }
      
      public function §super§() : Vector.<Function>
      {
         return this.§8!U§;
      }
   }
}
