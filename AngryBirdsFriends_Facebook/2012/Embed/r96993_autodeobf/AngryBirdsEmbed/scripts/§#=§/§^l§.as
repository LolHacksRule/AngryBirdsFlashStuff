package §#=§
{
   import §3v§.§1a§;
   
   public class §^l§
   {
       
      
      private var §9!>§:String;
      
      private var §^E§:Vector.<Function>;
      
      private var §!K§:Boolean;
      
      public function §^l§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§9!>§ = param1;
         this.§!K§ = param3;
         if(param2 != null)
         {
            §1a§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §5L§() : String
      {
         return this.§9!>§;
      }
      
      public function §0w§(param1:Boolean) : void
      {
         this.§!K§ = param1;
      }
      
      public function §&]§() : Boolean
      {
         return this.§!K§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^E§ == null)
         {
            this.§^E§ = new Vector.<Function>();
         }
         if(this.§^E§.indexOf(param1) == -1)
         {
            this.§^E§.push(param1);
         }
      }
      
      public function §-v§(param1:Function) : void
      {
         if(this.§^E§.indexOf(param1) > -1)
         {
            this.§^E§.splice(this.§^E§.indexOf(param1),1);
         }
      }
      
      public function §&H§() : Vector.<Function>
      {
         return this.§^E§;
      }
   }
}
