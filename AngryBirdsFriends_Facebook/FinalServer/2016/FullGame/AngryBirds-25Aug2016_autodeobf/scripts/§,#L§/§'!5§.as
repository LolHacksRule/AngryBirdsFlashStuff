package §,#L§
{
   public class §'!5§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §?"i§:Number = 0;
      
      protected var §7#b§:Number;
      
      private var §=!h§:Boolean = false;
      
      protected var §3#^§:Boolean = false;
      
      private var §2$1§:Number;
      
      public function §'!5§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§7#b§ = Math.floor(param3 * 1000);
         this.§=!h§ = param4;
         this.§2$1§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §6!6§() : Boolean
      {
         return this.§3#^§;
      }
      
      public function set §6!6§(param1:Boolean) : void
      {
         this.§3#^§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§2$1§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§=!h§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§?"i§ += param1;
         if(this.§?"i§ >= this.§7#b§)
         {
            return false;
         }
         return true;
      }
   }
}
