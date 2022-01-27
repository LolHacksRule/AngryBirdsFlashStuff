package §-Y§
{
   import § !3§.§!X§;
   
   public class §8§
   {
       
      
      private var §<!3§:String;
      
      private var §<x§:Vector.<Function>;
      
      private var §^'§:Boolean;
      
      public function §8§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§<!3§ = param1;
         this.§^'§ = param3;
         if(param2 != null)
         {
            §!X§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §['§() : String
      {
         return this.§<!3§;
      }
      
      public function §2!2§(param1:Boolean) : void
      {
         this.§^'§ = param1;
      }
      
      public function §,-§() : Boolean
      {
         return this.§^'§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§<x§ == null)
         {
            this.§<x§ = new Vector.<Function>();
         }
         if(this.§<x§.indexOf(param1) == -1)
         {
            this.§<x§.push(param1);
         }
      }
      
      public function §5!"§(param1:Function) : void
      {
         if(this.§<x§.indexOf(param1) > -1)
         {
            this.§<x§.splice(this.§<x§.indexOf(param1),1);
         }
      }
      
      public function §1O§() : Vector.<Function>
      {
         return this.§<x§;
      }
   }
}
