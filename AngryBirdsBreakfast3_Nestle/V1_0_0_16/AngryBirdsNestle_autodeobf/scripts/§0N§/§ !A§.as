package §0N§
{
   public class § !A§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §="'§:Number = 0;
      
      protected var §;!E§:Number;
      
      private var §"!8§:Boolean = false;
      
      protected var §'!^§:Boolean = false;
      
      public function § !A§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§;!E§ = Math.floor(param3 * 1000);
         this.§"!8§ = param4;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §^5§() : Boolean
      {
         return this.§'!^§;
      }
      
      public function set §^5§(param1:Boolean) : void
      {
         this.§'!^§ = param1;
      }
      
      public function get §'&§() : Boolean
      {
         return this.§"!8§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§="'§ += param1;
         if(this.§="'§ >= this.§;!E§)
         {
            return false;
         }
         return true;
      }
   }
}
