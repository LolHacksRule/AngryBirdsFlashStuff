package §0"1§
{
   public class §,M§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §-!`§:Number = 0;
      
      protected var §,`§:Number;
      
      private var §7!Z§:Boolean = false;
      
      protected var §^!P§:Boolean = false;
      
      public function §,M§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§,`§ = Math.floor(param3 * 1000);
         this.§7!Z§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §["3§() : Boolean
      {
         return this.§^!P§;
      }
      
      public function set §["3§(param1:Boolean) : void
      {
         this.§^!P§ = param1;
      }
      
      public function get §6!4§() : Boolean
      {
         return this.§7!Z§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§-!`§ += param1;
         if(this.§-!`§ >= this.§,`§)
         {
            return false;
         }
         return true;
      }
   }
}
