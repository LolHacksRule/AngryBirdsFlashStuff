package §5<§
{
   public class § r§
   {
       
      
      protected var §"!H§:int;
      
      protected var §@!z§:int;
      
      protected var §4!K§:Number = 0;
      
      protected var §<!'§:Number;
      
      protected var §;B§:Boolean = false;
      
      public function § r§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§"!H§ = param1;
         this.§@!z§ = param2;
         this.§<!'§ = Math.floor(param3 * 1000);
      }
      
      public function get §`s§() : int
      {
         return this.§"!H§;
      }
      
      public function set §`s§(param1:int) : void
      {
         this.§"!H§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§@!z§;
      }
      
      public function get §2,§() : int
      {
         return this.§<!'§;
      }
      
      public function get §!s§() : Boolean
      {
         return this.§;B§;
      }
      
      public function set §!s§(param1:Boolean) : void
      {
         this.§;B§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§4!K§ += param1;
         if(this.§4!K§ >= this.§<!'§)
         {
            return this.§@!z§;
         }
         return -1;
      }
   }
}
