package §super§
{
   public class §@!2§
   {
       
      
      protected var §'"K§:int;
      
      protected var §`Z§:int;
      
      protected var §;z§:Number = 0;
      
      protected var § !]§:Number;
      
      protected var §,!A§:Boolean = false;
      
      public function §@!2§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§'"K§ = param1;
         this.§`Z§ = param2;
         this.§ !]§ = Math.floor(param3 * 1000);
      }
      
      public function get §!§() : int
      {
         return this.§'"K§;
      }
      
      public function set §!§(param1:int) : void
      {
         this.§'"K§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§`Z§;
      }
      
      public function get §<3§() : int
      {
         return this.§ !]§;
      }
      
      public function get §2B§() : Boolean
      {
         return this.§,!A§;
      }
      
      public function set §2B§(param1:Boolean) : void
      {
         this.§,!A§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§;z§ += param1;
         if(this.§;z§ >= this.§ !]§)
         {
            return this.§`Z§;
         }
         return -1;
      }
   }
}
