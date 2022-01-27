package §<"B§
{
   public class §;!#§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §1J§:Number = 0;
      
      protected var §<"e§:Number;
      
      private var §2"f§:Boolean = false;
      
      protected var §,!h§:Boolean = false;
      
      public function §;!#§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§<"e§ = Math.floor(param3 * 1000);
         this.§2"f§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §>"i§() : Boolean
      {
         return this.§,!h§;
      }
      
      public function set §>"i§(param1:Boolean) : void
      {
         this.§,!h§ = param1;
      }
      
      public function get §+!A§() : Boolean
      {
         return this.§2"f§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§1J§ += param1;
         if(this.§1J§ >= this.§<"e§)
         {
            return false;
         }
         return true;
      }
   }
}
