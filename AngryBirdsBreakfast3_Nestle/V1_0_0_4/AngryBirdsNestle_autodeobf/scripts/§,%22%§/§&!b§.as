package §,"%§
{
   public class §&!b§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §!!u§:Number = 0;
      
      protected var §2! §:Number;
      
      protected var §?!C§:Boolean = false;
      
      public function §&!b§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§2! § = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §0r§() : int
      {
         return this.§2! §;
      }
      
      public function get §function§() : Boolean
      {
         return this.§?!C§;
      }
      
      public function set §function§(param1:Boolean) : void
      {
         this.§?!C§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§!!u§ += param1;
         if(this.§!!u§ >= this.§2! §)
         {
            return false;
         }
         return true;
      }
   }
}
