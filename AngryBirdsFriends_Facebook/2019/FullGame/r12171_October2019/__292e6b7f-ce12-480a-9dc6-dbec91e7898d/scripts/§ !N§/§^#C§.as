package § !N§
{
   public class §^#C§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §3%§:Number = 0;
      
      protected var §'B§:Number;
      
      private var §@#m§:Boolean = false;
      
      protected var §8!F§:Boolean = false;
      
      private var §>!i§:Number;
      
      public function §^#C§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§'B§ = Math.floor(param3 * 1000);
         this.§@#m§ = param4;
         this.§>!i§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §##B§() : Boolean
      {
         return this.§8!F§;
      }
      
      public function set §##B§(param1:Boolean) : void
      {
         this.§8!F§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§>!i§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§@#m§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§3%§ += param1;
         if(this.§3%§ >= this.§'B§)
         {
            return false;
         }
         return true;
      }
   }
}
