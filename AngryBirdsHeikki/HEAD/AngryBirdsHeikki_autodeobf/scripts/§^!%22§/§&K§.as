package §^!"§
{
   public class §&K§
   {
       
      
      protected var §return§:int;
      
      protected var §[!`§:int;
      
      protected var §5!;§:Number = 0;
      
      protected var §]_§:Number;
      
      protected var §"G§:Boolean = false;
      
      public function §&K§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§return§ = param1;
         this.§[!`§ = param2;
         this.§]_§ = Math.floor(param3 * 1000);
      }
      
      public function get §#!9§() : int
      {
         return this.§return§;
      }
      
      public function set §#!9§(param1:int) : void
      {
         this.§return§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§[!`§;
      }
      
      public function get §`!P§() : Boolean
      {
         return this.§"G§;
      }
      
      public function set §`!P§(param1:Boolean) : void
      {
         this.§"G§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§5!;§ += param1;
         if(this.§5!;§ >= this.§]_§)
         {
            return this.§[!`§;
         }
         return -1;
      }
   }
}
