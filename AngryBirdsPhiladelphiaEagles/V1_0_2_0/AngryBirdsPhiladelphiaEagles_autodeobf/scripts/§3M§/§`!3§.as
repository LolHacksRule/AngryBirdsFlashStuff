package §3M§
{
   public class §`!3§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §3R§:Number = 0;
      
      protected var §>E§:Number;
      
      protected var §@!"§:Boolean = false;
      
      public function §`!3§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§>E§ = Math.floor(param3 * 1000);
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
      
      public function get §#H§() : Boolean
      {
         return this.§@!"§;
      }
      
      public function set §#H§(param1:Boolean) : void
      {
         this.§@!"§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§3R§ += param1;
         if(this.§3R§ >= this.§>E§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
