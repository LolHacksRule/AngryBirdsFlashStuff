package §>M§
{
   public class §+$9§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §each §:Number = 0;
      
      protected var §6!c§:Number;
      
      private var §[!w§:Boolean = false;
      
      protected var §=!k§:Boolean = false;
      
      private var §]`§:Number;
      
      public function §+$9§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§6!c§ = Math.floor(param3 * 1000);
         this.§[!w§ = param4;
         this.§]`§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §1#X§() : Boolean
      {
         return this.§=!k§;
      }
      
      public function set §1#X§(param1:Boolean) : void
      {
         this.§=!k§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§]`§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§[!w§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§each § += param1;
         if(this.§each § >= this.§6!c§)
         {
            return false;
         }
         return true;
      }
   }
}
