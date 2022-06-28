package §8!?§
{
   public class Animation
   {
       
      
      private var §2c§:Vector.<§?!B§>;
      
      public function Animation()
      {
         super();
         this.§2c§ = new Vector.<§?!B§>();
      }
      
      public function addFrame(param1:§?!B§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§2c§.push(param1);
      }
      
      public function getFrame(param1:int) : §?!B§
      {
         if(param1 >= this.§2c§.length)
         {
            param1 = this.§2c§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§2c§.length)
         {
            return null;
         }
         return this.§2c§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§2c§.length;
      }
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
   }
}
