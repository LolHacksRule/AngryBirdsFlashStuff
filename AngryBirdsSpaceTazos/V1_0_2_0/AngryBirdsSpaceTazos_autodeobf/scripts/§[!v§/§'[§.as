package §[!v§
{
   public class §'[§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §^"F§:Number = 0;
      
      protected var §,'§:Number;
      
      protected var §9!l§:Boolean = false;
      
      public function §'[§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§,'§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §0!+§() : Boolean
      {
         return this.§9!l§;
      }
      
      public function set §0!+§(param1:Boolean) : void
      {
         this.§9!l§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§^"F§ += param1;
         if(this.§^"F§ >= this.§,'§)
         {
            return false;
         }
         return true;
      }
   }
}
