package §-^§
{
   import §1!B§.§<m§;
   
   public class §=q§
   {
       
      
      private var §^!=§:String;
      
      private var §>v§:Vector.<Function>;
      
      private var §4!<§:Boolean;
      
      public function §=q§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§^!=§ = param1;
         this.§4!<§ = param3;
         if(param2 != null)
         {
            §<m§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §`!$§() : String
      {
         return this.§^!=§;
      }
      
      public function §^"§(param1:Boolean) : void
      {
         this.§4!<§ = param1;
      }
      
      public function §[N§() : Boolean
      {
         return this.§4!<§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>v§ == null)
         {
            this.§>v§ = new Vector.<Function>();
         }
         if(this.§>v§.indexOf(param1) == -1)
         {
            this.§>v§.push(param1);
         }
      }
      
      public function §=+§(param1:Function) : void
      {
         if(this.§>v§.indexOf(param1) > -1)
         {
            this.§>v§.splice(this.§>v§.indexOf(param1),1);
         }
      }
      
      public function §;!3§() : Vector.<Function>
      {
         return this.§>v§;
      }
   }
}
