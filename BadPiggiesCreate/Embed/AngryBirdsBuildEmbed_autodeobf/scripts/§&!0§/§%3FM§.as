package §&!0§
{
   import § !r§.§`![§;
   
   public class §?M§
   {
       
      
      private var §0!t§:String;
      
      private var §,l§:Vector.<Function>;
      
      private var §"j§:Boolean;
      
      public function §?M§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§0!t§ = param1;
         this.§"j§ = param3;
         if(param2 != null)
         {
            §`![§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §!;§() : String
      {
         return this.§0!t§;
      }
      
      public function §6c§(param1:Boolean) : void
      {
         this.§"j§ = param1;
      }
      
      public function §=^§() : Boolean
      {
         return this.§"j§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,l§ == null)
         {
            this.§,l§ = new Vector.<Function>();
         }
         if(this.§,l§.indexOf(param1) == -1)
         {
            this.§,l§.push(param1);
         }
      }
      
      public function § s§(param1:Function) : void
      {
         if(this.§,l§.indexOf(param1) > -1)
         {
            this.§,l§.splice(this.§,l§.indexOf(param1),1);
         }
      }
      
      public function §!K§() : Vector.<Function>
      {
         return this.§,l§;
      }
   }
}
