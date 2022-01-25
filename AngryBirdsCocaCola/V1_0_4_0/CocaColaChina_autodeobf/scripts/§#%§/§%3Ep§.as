package §#%§
{
   import §'!G§.§1C§;
   
   public class §>p§
   {
       
      
      private var §#G§:String;
      
      private var §&-§:Vector.<Function>;
      
      private var §<"§:Boolean;
      
      public function §>p§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§#G§ = param1;
         this.§<"§ = param3;
         if(param2 != null)
         {
            §1C§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,I§() : String
      {
         return this.§#G§;
      }
      
      public function § get§(param1:Boolean) : void
      {
         this.§<"§ = param1;
      }
      
      public function §4!H§() : Boolean
      {
         return this.§<"§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&-§ == null)
         {
            this.§&-§ = new Vector.<Function>();
         }
         if(this.§&-§.indexOf(param1) == -1)
         {
            this.§&-§.push(param1);
         }
      }
      
      public function §'!F§(param1:Function) : void
      {
         if(this.§&-§.indexOf(param1) > -1)
         {
            this.§&-§.splice(this.§&-§.indexOf(param1),1);
         }
      }
      
      public function §8!1§() : Vector.<Function>
      {
         return this.§&-§;
      }
   }
}
