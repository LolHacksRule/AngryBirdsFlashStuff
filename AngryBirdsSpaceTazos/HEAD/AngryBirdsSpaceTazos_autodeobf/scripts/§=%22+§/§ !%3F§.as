package §="+§
{
   public class § !?§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §;!2§:Number = 0;
      
      protected var §%!g§:Number;
      
      protected var §>s§:Boolean = false;
      
      public function § !?§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§%!g§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §8[§() : Boolean
      {
         return this.§>s§;
      }
      
      public function set §8[§(param1:Boolean) : void
      {
         this.§>s§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§;!2§ += param1;
         if(this.§;!2§ >= this.§%!g§)
         {
            return false;
         }
         return true;
      }
   }
}
