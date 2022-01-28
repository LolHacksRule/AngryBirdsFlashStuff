package §3"5§
{
   public class §8"9§
   {
       
      
      protected var §;"$§:int;
      
      protected var §0!O§:int;
      
      protected var §6#§:Number = 0;
      
      protected var § !W§:Number;
      
      protected var §,P§:Boolean = false;
      
      public function §8"9§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§;"$§ = param1;
         this.§0!O§ = param2;
         this.§ !W§ = Math.floor(param3 * 1000);
      }
      
      public function get §2`§() : int
      {
         return this.§;"$§;
      }
      
      public function set §2`§(param1:int) : void
      {
         this.§;"$§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§0!O§;
      }
      
      public function get §]o§() : Boolean
      {
         return this.§,P§;
      }
      
      public function set §]o§(param1:Boolean) : void
      {
         this.§,P§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§6#§ += param1;
         if(this.§6#§ >= this.§ !W§)
         {
            return this.§0!O§;
         }
         return -1;
      }
   }
}
