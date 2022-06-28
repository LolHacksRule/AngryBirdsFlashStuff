package §&V§
{
   public class §`!1§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §@!_§:Number = 0;
      
      protected var §[Q§:Number;
      
      protected var §,J§:Boolean = false;
      
      public function §`!1§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§[Q§ = Math.floor(param3 * 1000);
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
      
      public function get §`r§() : Boolean
      {
         return this.§,J§;
      }
      
      public function set §`r§(param1:Boolean) : void
      {
         this.§,J§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§@!_§ += param1;
         if(this.§@!_§ >= this.§[Q§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
