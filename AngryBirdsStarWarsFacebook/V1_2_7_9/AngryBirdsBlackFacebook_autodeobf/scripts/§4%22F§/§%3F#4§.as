package §4"F§
{
   public class §?#4§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §use§:Number = 0;
      
      protected var §""p§:Number;
      
      private var §+"?§:Boolean = false;
      
      protected var §?"#§:Boolean = false;
      
      public function §?#4§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§""p§ = Math.floor(param3 * 1000);
         this.§+"?§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §+"I§() : Boolean
      {
         return this.§?"#§;
      }
      
      public function set §+"I§(param1:Boolean) : void
      {
         this.§?"#§ = param1;
      }
      
      public function get §-#3§() : Boolean
      {
         return this.§+"?§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§use§ += param1;
         if(this.§use§ >= this.§""p§)
         {
            return false;
         }
         return true;
      }
   }
}
