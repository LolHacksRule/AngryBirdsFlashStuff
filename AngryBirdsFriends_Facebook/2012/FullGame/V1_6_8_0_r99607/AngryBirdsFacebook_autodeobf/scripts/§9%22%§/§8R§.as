package §9"%§
{
   import §0!?§.§'!$§;
   
   public class §8R§
   {
       
      
      private var §`!B§:String;
      
      private var §92§:Vector.<Function>;
      
      private var §%v§:Boolean;
      
      public function §8R§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§`!B§ = param1;
         this.§%v§ = param3;
         if(param2 != null)
         {
            §'!$§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]q§() : String
      {
         return this.§`!B§;
      }
      
      public function §>#§(param1:Boolean) : void
      {
         this.§%v§ = param1;
      }
      
      public function §3!`§() : Boolean
      {
         return this.§%v§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§92§ == null)
         {
            this.§92§ = new Vector.<Function>();
         }
         if(this.§92§.indexOf(param1) == -1)
         {
            this.§92§.push(param1);
         }
      }
      
      public function §-!N§(param1:Function) : void
      {
         if(this.§92§.indexOf(param1) > -1)
         {
            this.§92§.splice(this.§92§.indexOf(param1),1);
         }
      }
      
      public function §"K§() : Vector.<Function>
      {
         return this.§92§;
      }
   }
}
