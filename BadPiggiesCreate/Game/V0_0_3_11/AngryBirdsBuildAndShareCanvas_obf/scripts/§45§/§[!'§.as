package §45§
{
   import §;X§.§ do§;
   
   public class §[!'§
   {
       
      
      private var §8`§:String;
      
      private var §'!8§:Vector.<Function>;
      
      private var §]!§:Boolean;
      
      public function §[!'§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§8`§ = param1;
         this.§]!§ = param3;
         if(param2 != null)
         {
            § do§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,'§() : String
      {
         return this.§8`§;
      }
      
      public function §7!"§(param1:Boolean) : void
      {
         this.§]!§ = param1;
      }
      
      public function §2!t§() : Boolean
      {
         return this.§]!§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'!8§ == null)
         {
            this.§'!8§ = new Vector.<Function>();
         }
         if(this.§'!8§.indexOf(param1) == -1)
         {
            this.§'!8§.push(param1);
         }
      }
      
      public function §1!X§(param1:Function) : void
      {
         if(this.§'!8§.indexOf(param1) > -1)
         {
            this.§'!8§.splice(this.§'!8§.indexOf(param1),1);
         }
      }
      
      public function §?!H§() : Vector.<Function>
      {
         return this.§'!8§;
      }
   }
}
