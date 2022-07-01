package §8+§
{
   public class § !z§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §6"6§:Number = 0;
      
      protected var §3!g§:Number;
      
      private var §,!u§:Boolean = false;
      
      protected var §>!L§:Boolean = false;
      
      public function § !z§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§3!g§ = Math.floor(param3 * 1000);
         this.§,!u§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §1!@§() : Boolean
      {
         return this.§>!L§;
      }
      
      public function set §1!@§(param1:Boolean) : void
      {
         this.§>!L§ = param1;
      }
      
      public function get §=!n§() : Boolean
      {
         return this.§,!u§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§6"6§ += param1;
         if(this.§6"6§ >= this.§3!g§)
         {
            return false;
         }
         return true;
      }
   }
}
