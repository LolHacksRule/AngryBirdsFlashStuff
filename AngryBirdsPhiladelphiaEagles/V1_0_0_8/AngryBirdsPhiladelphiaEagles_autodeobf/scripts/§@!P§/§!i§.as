package §@!P§
{
   public class §!i§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §-w§:Number = 0;
      
      protected var §79§:Number;
      
      protected var §4C§:Boolean = false;
      
      public function §!i§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§79§ = Math.floor(param3 * 1000);
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
      
      public function get §0!!§() : Boolean
      {
         return this.§4C§;
      }
      
      public function set §0!!§(param1:Boolean) : void
      {
         this.§4C§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§-w§ += param1;
         if(this.§-w§ >= this.§79§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
