package §'!E§
{
   public class §=E§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §with§:Number = 0;
      
      protected var §<E§:Number;
      
      protected var §+g§:Boolean = false;
      
      public function §=E§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§<E§ = Math.floor(param3 * 1000);
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
      
      public function get §3d§() : Boolean
      {
         return this.§+g§;
      }
      
      public function set §3d§(param1:Boolean) : void
      {
         this.§+g§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§with§ += param1;
         if(this.§with§ >= this.§<E§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
