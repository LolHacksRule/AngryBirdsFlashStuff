package §^!m§
{
   import §6]§.§,"0§;
   
   public class §!b§
   {
       
      
      private var §&!k§:String;
      
      private var §"";§:Vector.<Function>;
      
      private var §8j§:Boolean;
      
      public function §!b§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§&!k§ = param1;
         this.§8j§ = param3;
         if(param2 != null)
         {
            §,"0§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §>!z§() : String
      {
         return this.§&!k§;
      }
      
      public function §5!T§(param1:Boolean) : void
      {
         this.§8j§ = param1;
      }
      
      public function §!9§() : Boolean
      {
         return this.§8j§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§"";§ == null)
         {
            this.§"";§ = new Vector.<Function>();
         }
         if(this.§"";§.indexOf(param1) == -1)
         {
            this.§"";§.push(param1);
         }
      }
      
      public function §#"%§(param1:Function) : void
      {
         if(this.§"";§.indexOf(param1) > -1)
         {
            this.§"";§.splice(this.§"";§.indexOf(param1),1);
         }
      }
      
      public function §+!+§() : Vector.<Function>
      {
         return this.§"";§;
      }
   }
}
