package §>u§
{
   public class §`!8§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §;?§:Number = 0;
      
      protected var §!!7§:Number;
      
      protected var §'!N§:Boolean = false;
      
      public function §`!8§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§!!7§ = Math.floor(param3 * 1000);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         this.mId1 = param1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §#!9§() : Boolean
      {
         return this.§'!N§;
      }
      
      public function set §#!9§(param1:Boolean) : void
      {
         this.§'!N§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§;?§ += param1;
         if(this.§;?§ >= this.§!!7§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
