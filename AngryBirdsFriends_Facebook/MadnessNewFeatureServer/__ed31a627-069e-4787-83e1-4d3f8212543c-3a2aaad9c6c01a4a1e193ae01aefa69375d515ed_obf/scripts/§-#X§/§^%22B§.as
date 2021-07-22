package §-#X§
{
   public class §^"B§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §%"<§:Number = 0;
      
      protected var §"!;§:Number;
      
      private var §-$;§:Boolean = false;
      
      protected var §-"I§:Boolean = false;
      
      private var §-$8§:Number;
      
      public function §^"B§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§"!;§ = Math.floor(param3 * 1000);
         this.§-$;§ = param4;
         this.§-$8§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §'"Z§() : Boolean
      {
         return this.§-"I§;
      }
      
      public function set §'"Z§(param1:Boolean) : void
      {
         this.§-"I§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§-$8§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§-$;§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§%"<§ += param1;
         if(this.§%"<§ >= this.§"!;§)
         {
            return false;
         }
         return true;
      }
   }
}
