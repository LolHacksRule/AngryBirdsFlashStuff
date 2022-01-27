package §&o§
{
   public class §2=§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §5!N§:Number = 0;
      
      protected var §+!I§:Number;
      
      protected var §2!;§:Boolean = false;
      
      public function §2=§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§+!I§ = Math.floor(param3 * 1000);
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
      
      public function get §38§() : Boolean
      {
         return this.§2!;§;
      }
      
      public function set §38§(param1:Boolean) : void
      {
         this.§2!;§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§5!N§ += param1;
         if(this.§5!N§ >= this.§+!I§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
