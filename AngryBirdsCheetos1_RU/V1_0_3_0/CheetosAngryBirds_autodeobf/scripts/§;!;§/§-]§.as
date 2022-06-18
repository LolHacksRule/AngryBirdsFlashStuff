package §;!;§
{
   import §7!P§.§-3§;
   
   public class §-]§
   {
       
      
      private var §[G§:String;
      
      private var §&Z§:Vector.<Function>;
      
      private var §6!A§:Boolean;
      
      public function §-]§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§[G§ = param1;
         this.§6!A§ = param3;
         if(param2 != null)
         {
            §-3§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §?C§() : String
      {
         return this.§[G§;
      }
      
      public function §;E§(param1:Boolean) : void
      {
         this.§6!A§ = param1;
      }
      
      public function §^x§() : Boolean
      {
         return this.§6!A§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&Z§ == null)
         {
            this.§&Z§ = new Vector.<Function>();
         }
         if(this.§&Z§.indexOf(param1) == -1)
         {
            this.§&Z§.push(param1);
         }
      }
      
      public function §#c§(param1:Function) : void
      {
         if(this.§&Z§.indexOf(param1) > -1)
         {
            this.§&Z§.splice(this.§&Z§.indexOf(param1),1);
         }
      }
      
      public function §4I§() : Vector.<Function>
      {
         return this.§&Z§;
      }
   }
}
