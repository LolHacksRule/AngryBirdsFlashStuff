package §@"v§
{
   public class §5#>§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §7$;§:Number = 0;
      
      protected var §@!<§:Number;
      
      private var §=#t§:Boolean = false;
      
      protected var §-!M§:Boolean = false;
      
      private var §7#X§:Number;
      
      public function §5#>§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§@!<§ = Math.floor(param3 * 1000);
         this.§=#t§ = param4;
         this.§7#X§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §]"`§() : Boolean
      {
         return this.§-!M§;
      }
      
      public function set §]"`§(param1:Boolean) : void
      {
         this.§-!M§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§7#X§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§=#t§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§7$;§ += param1;
         if(this.§7$;§ >= this.§@!<§)
         {
            return false;
         }
         return true;
      }
   }
}
