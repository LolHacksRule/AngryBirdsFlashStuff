package § `§
{
   public class §^1§
   {
       
      
      private var §6d§:Vector.<§6!=§>;
      
      public function §^1§()
      {
         super();
         this.§6d§ = new Vector.<§6!=§>();
      }
      
      public function addFrame(param1:§6!=§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§6d§.push(param1);
      }
      
      public function getFrame(param1:int) : §6!=§
      {
         if(param1 >= this.§6d§.length)
         {
            param1 = this.§6d§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§6d§.length)
         {
            return null;
         }
         return this.§6d§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§6d§.length;
      }
      
      public function getSubAnimation(param1:String) : §^1§
      {
         return null;
      }
   }
}
