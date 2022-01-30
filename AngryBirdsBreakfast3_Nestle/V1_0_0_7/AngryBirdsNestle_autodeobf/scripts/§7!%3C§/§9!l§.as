package §7!<§
{
   public class §9!l§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §<3§:Number = 0;
      
      protected var §=!T§:Number;
      
      protected var §-n§:Boolean = false;
      
      public function §9!l§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§=!T§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §?!k§() : int
      {
         return this.§=!T§;
      }
      
      public function get § !l§() : Boolean
      {
         return this.§-n§;
      }
      
      public function set § !l§(param1:Boolean) : void
      {
         this.§-n§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§<3§ += param1;
         if(this.§<3§ >= this.§=!T§)
         {
            return false;
         }
         return true;
      }
   }
}
