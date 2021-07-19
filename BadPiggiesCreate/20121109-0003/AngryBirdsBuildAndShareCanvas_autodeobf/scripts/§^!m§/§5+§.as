package §^!m§
{
   public class §5+§
   {
       
      
      private var §@D§:Number;
      
      private var §7!+§:String;
      
      private var §+s§:Function;
      
      private var §6!c§:Function;
      
      private var §<"1§:Boolean = true;
      
      public function §5+§(param1:String, param2:Number)
      {
         super();
         this.§7!+§ = param1;
         this.§@D§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8"&§() : String
      {
         return this.§7!+§;
      }
      
      public function §0!F§() : Function
      {
         return this.§+s§;
      }
      
      public function §1!P§() : Function
      {
         return this.§6!c§;
      }
      
      public function §each §(param1:Object) : void
      {
         if(this.§<"1§)
         {
            this.§+s§.call(null,param1);
         }
      }
      
      public function §'y§(param1:Object) : void
      {
         if(this.§<"1§)
         {
            this.§6!c§.call(null,param1);
         }
      }
      
      public function §[6§(param1:Function, param2:Function = null) : void
      {
         this.§+s§ = param1;
         this.§6!c§ = param2;
      }
      
      public function §5!K§() : void
      {
         this.§<"1§ = false;
      }
      
      public function §[F§() : void
      {
         this.§<"1§ = true;
      }
   }
}
