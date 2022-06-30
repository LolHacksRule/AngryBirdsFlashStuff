package §;$§
{
   import §&!b§.§ c§;
   
   public class §1I§
   {
       
      
      private var §35§:String;
      
      private var §;!G§:Vector.<Function>;
      
      private var §=!g§:Boolean;
      
      public function §1I§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§35§ = param1;
         this.§=!g§ = param3;
         if(param2 != null)
         {
            § c§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §+![§() : String
      {
         return this.§35§;
      }
      
      public function §&!1§(param1:Boolean) : void
      {
         this.§=!g§ = param1;
      }
      
      public function §<K§() : Boolean
      {
         return this.§=!g§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;!G§ == null)
         {
            this.§;!G§ = new Vector.<Function>();
         }
         if(this.§;!G§.indexOf(param1) == -1)
         {
            this.§;!G§.push(param1);
         }
      }
      
      public function §%!R§(param1:Function) : void
      {
         if(this.§;!G§.indexOf(param1) > -1)
         {
            this.§;!G§.splice(this.§;!G§.indexOf(param1),1);
         }
      }
      
      public function §6!G§() : Vector.<Function>
      {
         return this.§;!G§;
      }
   }
}
