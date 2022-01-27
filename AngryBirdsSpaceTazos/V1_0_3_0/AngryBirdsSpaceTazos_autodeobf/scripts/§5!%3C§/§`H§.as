package §5!<§
{
   public class §`H§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §@!q§:Number = 0;
      
      protected var §8"F§:Number;
      
      protected var §5"3§:Boolean = false;
      
      public function §`H§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§8"F§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §?h§() : Boolean
      {
         return this.§5"3§;
      }
      
      public function set §?h§(param1:Boolean) : void
      {
         this.§5"3§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§@!q§ += param1;
         if(this.§@!q§ >= this.§8"F§)
         {
            return false;
         }
         return true;
      }
   }
}
