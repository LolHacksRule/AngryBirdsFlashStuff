package §[d§
{
   public class §^;§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §]!1§:Number = 0;
      
      protected var §0!O§:Number;
      
      protected var §`!-§:Boolean = false;
      
      public function §^;§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§0!O§ = Math.floor(param3 * 1000);
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
      
      public function get §#!>§() : Boolean
      {
         return this.§`!-§;
      }
      
      public function set §#!>§(param1:Boolean) : void
      {
         this.§`!-§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§]!1§ += param1;
         if(this.§]!1§ >= this.§0!O§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
