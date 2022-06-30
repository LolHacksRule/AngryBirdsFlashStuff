package §^!#§
{
   import §%!$§.§[Z§;
   
   public class §`!]§
   {
       
      
      private var §2!"§:String;
      
      private var §,m§:Vector.<Function>;
      
      private var §8M§:Boolean;
      
      public function §`!]§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§2!"§ = param1;
         this.§8M§ = param3;
         if(param2 != null)
         {
            §[Z§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §-z§() : String
      {
         return this.§2!"§;
      }
      
      public function §>!"§(param1:Boolean) : void
      {
         this.§8M§ = param1;
      }
      
      public function §-K§() : Boolean
      {
         return this.§8M§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,m§ == null)
         {
            this.§,m§ = new Vector.<Function>();
         }
         if(this.§,m§.indexOf(param1) == -1)
         {
            this.§,m§.push(param1);
         }
      }
      
      public function §1<§(param1:Function) : void
      {
         if(this.§,m§.indexOf(param1) > -1)
         {
            this.§,m§.splice(this.§,m§.indexOf(param1),1);
         }
      }
      
      public function §7y§() : Vector.<Function>
      {
         return this.§,m§;
      }
   }
}
