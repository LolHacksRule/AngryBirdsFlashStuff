package §_-4I§
{
   public class §_-14§
   {
       
      
      private var §_-OC§:Vector.<§_-EA§>;
      
      public function §_-14§()
      {
         super();
         this.§_-OC§ = new Vector.<§_-EA§>();
      }
      
      public function addFrame(param1:§_-EA§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-OC§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-EA§
      {
         if(param1 >= this.§_-OC§.length)
         {
            param1 = this.§_-OC§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-OC§.length)
         {
            return null;
         }
         return this.§_-OC§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-OC§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-14§
      {
         return null;
      }
   }
}
