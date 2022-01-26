package §%!1§
{
   import §-!6§.§>I§;
   
   public class §@H§
   {
       
      
      private var §>L§:String;
      
      private var §@C§:Vector.<Function>;
      
      private var §"!&§:Boolean;
      
      public function §@H§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§>L§ = param1;
         this.§"!&§ = param3;
         if(param2 != null)
         {
            §>I§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §!!G§() : String
      {
         return this.§>L§;
      }
      
      public function §9![§(param1:Boolean) : void
      {
         this.§"!&§ = param1;
      }
      
      public function §=3§() : Boolean
      {
         return this.§"!&§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§@C§ == null)
         {
            this.§@C§ = new Vector.<Function>();
         }
         if(this.§@C§.indexOf(param1) == -1)
         {
            this.§@C§.push(param1);
         }
      }
      
      public function §4!E§(param1:Function) : void
      {
         if(this.§@C§.indexOf(param1) > -1)
         {
            this.§@C§.splice(this.§@C§.indexOf(param1),1);
         }
      }
      
      public function §9y§() : Vector.<Function>
      {
         return this.§@C§;
      }
   }
}
