package §6$"§
{
   public class §&![§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §`#^§:Number = 0;
      
      protected var §^$8§:Number;
      
      private var §5"C§:Boolean = false;
      
      protected var §1&§:Boolean = false;
      
      private var §=8§:Number;
      
      public function §&![§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§^$8§ = Math.floor(param3 * 1000);
         this.§5"C§ = param4;
         this.§=8§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §'#G§() : Boolean
      {
         return this.§1&§;
      }
      
      public function set §'#G§(param1:Boolean) : void
      {
         this.§1&§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§=8§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§5"C§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§`#^§ += param1;
         if(this.§`#^§ >= this.§^$8§)
         {
            return false;
         }
         return true;
      }
   }
}
