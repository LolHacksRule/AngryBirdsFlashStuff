package §[8§
{
   import §"p§.§@8§;
   
   public class §2" §
   {
       
      
      private var §;!D§:String;
      
      private var § 9§:Vector.<Function>;
      
      private var §,R§:Boolean;
      
      public function §2" §(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§;!D§ = param1;
         this.§,R§ = param3;
         if(param2 != null)
         {
            §@8§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §<!k§() : String
      {
         return this.§;!D§;
      }
      
      public function §5U§(param1:Boolean) : void
      {
         this.§,R§ = param1;
      }
      
      public function §!! §() : Boolean
      {
         return this.§,R§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§ 9§ == null)
         {
            this.§ 9§ = new Vector.<Function>();
         }
         if(this.§ 9§.indexOf(param1) == -1)
         {
            this.§ 9§.push(param1);
         }
      }
      
      public function §`!6§(param1:Function) : void
      {
         if(this.§ 9§.indexOf(param1) > -1)
         {
            this.§ 9§.splice(this.§ 9§.indexOf(param1),1);
         }
      }
      
      public function §3S§() : Vector.<Function>
      {
         return this.§ 9§;
      }
   }
}
