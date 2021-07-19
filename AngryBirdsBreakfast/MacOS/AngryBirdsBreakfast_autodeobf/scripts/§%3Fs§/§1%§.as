package §?s§
{
   public class §1%§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §="#§:Number = 0;
      
      protected var §"" §:Number;
      
      private var §`_§:Boolean = false;
      
      protected var §7!U§:Boolean = false;
      
      public function §1%§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§"" § = Math.floor(param3 * 1000);
         this.§`_§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §1Z§() : Boolean
      {
         return this.§7!U§;
      }
      
      public function set §1Z§(param1:Boolean) : void
      {
         this.§7!U§ = param1;
      }
      
      public function get §#!8§() : Boolean
      {
         return this.§`_§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§="#§ += param1;
         if(this.§="#§ >= this.§"" §)
         {
            return false;
         }
         return true;
      }
   }
}
