package §<h§
{
   public class §<@§
   {
       
      
      private var §4b§:Vector.<§]^§>;
      
      public function §<@§()
      {
         super();
         this.§4b§ = new Vector.<§]^§>();
      }
      
      public function addFrame(param1:§]^§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§4b§.push(param1);
      }
      
      public function getFrame(param1:int) : §]^§
      {
         if(param1 >= this.§4b§.length)
         {
            param1 = this.§4b§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§4b§.length)
         {
            return null;
         }
         return this.§4b§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§4b§.length;
      }
      
      public function getSubAnimation(param1:String) : §<@§
      {
         return null;
      }
   }
}
