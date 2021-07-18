package §+!h§
{
   import §0N§.§2!@§;
   
   public class §5!6§
   {
       
      
      private var §&!4§:String;
      
      private var §>!E§:Vector.<Function>;
      
      private var §0!E§:Boolean;
      
      public function §5!6§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§&!4§ = param1;
         this.§0!E§ = param3;
         if(param2 != null)
         {
            §2!@§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §&!8§() : String
      {
         return this.§&!4§;
      }
      
      public function §!!a§(param1:Boolean) : void
      {
         this.§0!E§ = param1;
      }
      
      public function §7"B§() : Boolean
      {
         return this.§0!E§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>!E§ == null)
         {
            this.§>!E§ = new Vector.<Function>();
         }
         if(this.§>!E§.indexOf(param1) == -1)
         {
            this.§>!E§.push(param1);
         }
      }
      
      public function §@!`§(param1:Function) : void
      {
         if(this.§>!E§.indexOf(param1) > -1)
         {
            this.§>!E§.splice(this.§>!E§.indexOf(param1),1);
         }
      }
      
      public function §7P§() : Vector.<Function>
      {
         return this.§>!E§;
      }
   }
}
