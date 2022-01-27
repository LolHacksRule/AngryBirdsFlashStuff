package §'8§
{
   import §"1§.§3'§;
   
   public class §-3§
   {
       
      
      private var §%!=§:String;
      
      private var §8&§:Vector.<Function>;
      
      private var §+`§:Boolean;
      
      public function §-3§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§%!=§ = param1;
         this.§+`§ = param3;
         if(param2 != null)
         {
            §3'§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §`+§() : String
      {
         return this.§%!=§;
      }
      
      public function §3!6§(param1:Boolean) : void
      {
         this.§+`§ = param1;
      }
      
      public function §,§() : Boolean
      {
         return this.§+`§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8&§ == null)
         {
            this.§8&§ = new Vector.<Function>();
         }
         if(this.§8&§.indexOf(param1) == -1)
         {
            this.§8&§.push(param1);
         }
      }
      
      public function §<I§(param1:Function) : void
      {
         if(this.§8&§.indexOf(param1) > -1)
         {
            this.§8&§.splice(this.§8&§.indexOf(param1),1);
         }
      }
      
      public function §98§() : Vector.<Function>
      {
         return this.§8&§;
      }
   }
}
