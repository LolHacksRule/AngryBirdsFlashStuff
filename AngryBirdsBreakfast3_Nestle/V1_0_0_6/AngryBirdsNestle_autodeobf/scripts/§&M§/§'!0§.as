package §&M§
{
   public class §'!0§
   {
       
      
      private var §4!h§:Number;
      
      private var §+!r§:String;
      
      private var §7!>§:Function;
      
      private var §?r§:Function;
      
      private var §#!o§:Boolean = true;
      
      public function §'!0§(param1:String, param2:Number)
      {
         super();
         this.§+!r§ = param1;
         this.§4!h§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`#§() : String
      {
         return this.§+!r§;
      }
      
      public function §2!>§() : Function
      {
         return this.§7!>§;
      }
      
      public function §%",§() : Function
      {
         return this.§?r§;
      }
      
      public function §''§(param1:Object) : void
      {
         if(this.§#!o§)
         {
            this.§7!>§.call(null,param1);
         }
      }
      
      public function § h§(param1:Object) : void
      {
         if(this.§#!o§)
         {
            this.§?r§.call(null,param1);
         }
      }
      
      public function §3i§(param1:Function, param2:Function = null) : void
      {
         this.§7!>§ = param1;
         this.§?r§ = param2;
      }
      
      public function §+[§() : void
      {
         this.§#!o§ = false;
      }
      
      public function §^!$§() : void
      {
         this.§#!o§ = true;
      }
   }
}
