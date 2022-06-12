package §[!-§
{
   import §[x§.§%3§;
   
   public class §^?§
   {
       
      
      private var §?!w§:String;
      
      private var §#j§:Vector.<Function>;
      
      private var §@n§:Boolean;
      
      public function §^?§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§?!w§ = param1;
         this.§@n§ = param3;
         if(param2 != null)
         {
            §%3§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §>"+§() : String
      {
         return this.§?!w§;
      }
      
      public function §;"!§(param1:Boolean) : void
      {
         this.§@n§ = param1;
      }
      
      public function § !J§() : Boolean
      {
         return this.§@n§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§#j§ == null)
         {
            this.§#j§ = new Vector.<Function>();
         }
         if(this.§#j§.indexOf(param1) == -1)
         {
            this.§#j§.push(param1);
         }
      }
      
      public function §>7§(param1:Function) : void
      {
         if(this.§#j§.indexOf(param1) > -1)
         {
            this.§#j§.splice(this.§#j§.indexOf(param1),1);
         }
      }
      
      public function §4!z§() : Vector.<Function>
      {
         return this.§#j§;
      }
   }
}
