package §9$+§
{
   public class §2"<§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §'v§:Number = 0;
      
      protected var §@"o§:Number;
      
      private var §7$,§:Boolean = false;
      
      protected var §"&§:Boolean = false;
      
      private var §@9§:Number;
      
      public function §2"<§(param1:int, param2:int, param3:Number, param4:Boolean, param5:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§@"o§ = Math.floor(param3 * 1000);
         this.§7$,§ = param4;
         this.§@9§ = param5;
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §>"B§() : Boolean
      {
         return this.§"&§;
      }
      
      public function set §>"B§(param1:Boolean) : void
      {
         this.§"&§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§@9§;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§7$,§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§'v§ += param1;
         if(this.§'v§ >= this.§@"o§)
         {
            return false;
         }
         return true;
      }
   }
}
