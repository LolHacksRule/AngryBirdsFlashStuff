package §5!8§
{
   import §&W§.§7L§;
   
   public class §"!-§
   {
       
      
      private var §]!?§:String;
      
      private var §8!x§:Vector.<Function>;
      
      private var §!!o§:Boolean;
      
      public function §"!-§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§]!?§ = param1;
         this.§!!o§ = param3;
         if(param2 != null)
         {
            §7L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,J§() : String
      {
         return this.§]!?§;
      }
      
      public function §@!2§(param1:Boolean) : void
      {
         this.§!!o§ = param1;
      }
      
      public function §%!E§() : Boolean
      {
         return this.§!!o§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8!x§ == null)
         {
            this.§8!x§ = new Vector.<Function>();
         }
         if(this.§8!x§.indexOf(param1) == -1)
         {
            this.§8!x§.push(param1);
         }
      }
      
      public function §@§(param1:Function) : void
      {
         if(this.§8!x§.indexOf(param1) > -1)
         {
            this.§8!x§.splice(this.§8!x§.indexOf(param1),1);
         }
      }
      
      public function §?O§() : Vector.<Function>
      {
         return this.§8!x§;
      }
   }
}
