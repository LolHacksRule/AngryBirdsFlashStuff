package § !b§
{
   public class §`!W§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §8!C§:Number = 0;
      
      protected var §&x§:Number;
      
      protected var §8>§:Boolean = false;
      
      public function §`!W§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§&x§ = Math.floor(param3 * 1000);
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
      
      public function set id2(param1:int) : void
      {
         this.mId2 = param1;
      }
      
      public function get §7U§() : Boolean
      {
         return this.§8>§;
      }
      
      public function set §7U§(param1:Boolean) : void
      {
         this.§8>§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§8!C§ += param1;
         if(this.§8!C§ >= this.§&x§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
