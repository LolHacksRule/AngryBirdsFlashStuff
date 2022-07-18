package §>!c§
{
   import §>!$§.§5"u§;
   import flash.net.SharedObject;
   
   public class §@f§ extends §5"u§
   {
       
      
      private var §"!K§:SharedObject;
      
      private var §[!d§:String;
      
      private var §0"K§;
      
      private var §[!O§:Boolean = false;
      
      public function §@f§(param1:SharedObject, param2:String, param3:* = null)
      {
         super(param3);
         this.§0"K§ = param3;
         this.§[!d§ = param2;
         this.§"!K§ = param1;
      }
      
      public function §0!t§() : void
      {
         this.value = this.§0"K§;
      }
      
      override public function get value() : *
      {
         if(!this.§[!O§)
         {
            this.§&"$§();
         }
         return this.§"!K§.data[this.§[!d§];
      }
      
      override public function set value(param1:*) : void
      {
         if(!this.§[!O§)
         {
            this.§&"$§();
         }
         super.value = param1;
         this.§"!K§.data[this.§[!d§] = super.value;
      }
      
      override public function toString() : String
      {
         return this.§[!d§ + " : " + super.toString();
      }
      
      private function §&"$§() : void
      {
         if(this.§[!d§ in this.§"!K§.data)
         {
            super.value = this.§"!K§.data[this.§[!d§];
         }
         else
         {
            super.value = this.§0"K§;
            this.§"!K§.data[this.§[!d§] = this.§0"K§;
         }
         §>j§();
         this.§[!O§ = true;
      }
   }
}
