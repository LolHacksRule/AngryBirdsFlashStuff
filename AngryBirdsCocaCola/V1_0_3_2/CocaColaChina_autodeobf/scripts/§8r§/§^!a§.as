package §8r§
{
   public class §^!a§
   {
       
      
      private var §]#§:Vector.<§-!$§>;
      
      public function §^!a§()
      {
         super();
         this.§]#§ = new Vector.<§-!$§>();
      }
      
      public function addFrame(param1:§-!$§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§]#§.push(param1);
      }
      
      public function getFrame(param1:int) : §-!$§
      {
         if(param1 >= this.§]#§.length)
         {
            param1 = this.§]#§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]#§.length)
         {
            return null;
         }
         return this.§]#§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§]#§.length;
      }
      
      public function getSubAnimation(param1:String) : §^!a§
      {
         return null;
      }
   }
}
