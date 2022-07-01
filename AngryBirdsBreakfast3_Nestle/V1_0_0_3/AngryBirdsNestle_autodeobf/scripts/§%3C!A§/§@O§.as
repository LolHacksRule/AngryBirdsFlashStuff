package §<!A§
{
   public class §@O§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §7§:Number = 0;
      
      protected var §`b§:Number;
      
      protected var §#" §:Boolean = false;
      
      public function §@O§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§`b§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §%g§() : int
      {
         return this.§`b§;
      }
      
      public function get §9!k§() : Boolean
      {
         return this.§#" §;
      }
      
      public function set §9!k§(param1:Boolean) : void
      {
         this.§#" § = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§7§ += param1;
         if(this.§7§ >= this.§`b§)
         {
            return false;
         }
         return true;
      }
   }
}
