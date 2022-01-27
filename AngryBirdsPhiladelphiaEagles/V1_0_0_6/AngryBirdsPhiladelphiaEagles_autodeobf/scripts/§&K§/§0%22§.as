package §&K§
{
   public class §0"§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §4n§:Number = 0;
      
      protected var §#!1§:Number;
      
      protected var §5h§:Boolean = false;
      
      public function §0"§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§#!1§ = Math.floor(param3 * 1000);
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
      
      public function get §-!B§() : Boolean
      {
         return this.§5h§;
      }
      
      public function set §-!B§(param1:Boolean) : void
      {
         this.§5h§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§4n§ += param1;
         if(this.§4n§ >= this.§#!1§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
