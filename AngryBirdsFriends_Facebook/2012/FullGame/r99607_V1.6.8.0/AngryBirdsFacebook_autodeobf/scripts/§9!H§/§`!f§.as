package §9!H§
{
   public class §`!f§
   {
       
      
      protected var §8!g§:int;
      
      protected var §9L§:int;
      
      protected var §"e§:Number = 0;
      
      protected var §^q§:Number;
      
      protected var §<!9§:Boolean = false;
      
      public function §`!f§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§8!g§ = param1;
         this.§9L§ = param2;
         this.§^q§ = Math.floor(param3 * 1000);
      }
      
      public function get §=!d§() : int
      {
         return this.§8!g§;
      }
      
      public function set §=!d§(param1:int) : void
      {
         this.§8!g§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§9L§;
      }
      
      public function get §<Q§() : Boolean
      {
         return this.§<!9§;
      }
      
      public function set §<Q§(param1:Boolean) : void
      {
         this.§<!9§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§"e§ += param1;
         if(this.§"e§ >= this.§^q§)
         {
            return this.§9L§;
         }
         return -1;
      }
   }
}
