package §+!Z§
{
   import §6!Q§.§7!7§;
   
   public class §?!^§
   {
       
      
      private var §?>§:String;
      
      private var §2!6§:Vector.<Function>;
      
      private var § N§:Boolean;
      
      public function §?!^§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§?>§ = param1;
         this.§ N§ = param3;
         if(param2 != null)
         {
            §7!7§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §3g§() : String
      {
         return this.§?>§;
      }
      
      public function §^!]§(param1:Boolean) : void
      {
         this.§ N§ = param1;
      }
      
      public function §70§() : Boolean
      {
         return this.§ N§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2!6§ == null)
         {
            this.§2!6§ = new Vector.<Function>();
         }
         if(this.§2!6§.indexOf(param1) == -1)
         {
            this.§2!6§.push(param1);
         }
      }
      
      public function §0C§(param1:Function) : void
      {
         if(this.§2!6§.indexOf(param1) > -1)
         {
            this.§2!6§.splice(this.§2!6§.indexOf(param1),1);
         }
      }
      
      public function §4!I§() : Vector.<Function>
      {
         return this.§2!6§;
      }
   }
}
