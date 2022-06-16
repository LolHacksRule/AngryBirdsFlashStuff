package §2<§
{
   import §+!c§.§;!=§;
   
   public class §@`§
   {
       
      
      private var §]f§:String;
      
      private var §>"F§:Vector.<Function>;
      
      private var §&!C§:Boolean;
      
      public function §@`§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§]f§ = param1;
         this.§&!C§ = param3;
         if(param2 != null)
         {
            §;!=§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §^K§() : String
      {
         return this.§]f§;
      }
      
      public function §;s§(param1:Boolean) : void
      {
         this.§&!C§ = param1;
      }
      
      public function §@"I§() : Boolean
      {
         return this.§&!C§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>"F§ == null)
         {
            this.§>"F§ = new Vector.<Function>();
         }
         if(this.§>"F§.indexOf(param1) == -1)
         {
            this.§>"F§.push(param1);
         }
      }
      
      public function §"!6§(param1:Function) : void
      {
         if(this.§>"F§.indexOf(param1) > -1)
         {
            this.§>"F§.splice(this.§>"F§.indexOf(param1),1);
         }
      }
      
      public function §"!=§() : Vector.<Function>
      {
         return this.§>"F§;
      }
   }
}
