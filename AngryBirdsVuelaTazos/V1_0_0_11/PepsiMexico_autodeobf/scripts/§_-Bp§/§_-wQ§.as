package §_-Bp§
{
   public class §_-wQ§
   {
       
      
      private var §_-Kn§:Vector.<§_-9c§>;
      
      public function §_-wQ§()
      {
         super();
         this.§_-Kn§ = new Vector.<§_-9c§>();
      }
      
      public function addFrame(param1:§_-9c§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-Kn§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-9c§
      {
         if(param1 >= this.§_-Kn§.length)
         {
            param1 = this.§_-Kn§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-Kn§.length)
         {
            return null;
         }
         return this.§_-Kn§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-Kn§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-wQ§
      {
         return null;
      }
   }
}
