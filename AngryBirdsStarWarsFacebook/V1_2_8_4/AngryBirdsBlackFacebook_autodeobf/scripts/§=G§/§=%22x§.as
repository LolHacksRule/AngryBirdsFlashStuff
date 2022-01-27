package §=G§
{
   public class §="x§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §1"p§:Number = 0;
      
      protected var §-L§:Number;
      
      private var §2#$§:Boolean = false;
      
      protected var §<]§:Boolean = false;
      
      public function §="x§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§-L§ = Math.floor(param3 * 1000);
         this.§2#$§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §9[§() : Boolean
      {
         return this.§<]§;
      }
      
      public function set §9[§(param1:Boolean) : void
      {
         this.§<]§ = param1;
      }
      
      public function get §7!U§() : Boolean
      {
         return this.§2#$§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§1"p§ += param1;
         if(this.§1"p§ >= this.§-L§)
         {
            return false;
         }
         return true;
      }
   }
}
