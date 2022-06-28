package §5`§
{
   public class §+R§
   {
       
      
      private var §+T§:Vector.<§%F§>;
      
      public function §+R§()
      {
         super();
         this.§+T§ = new Vector.<§%F§>();
      }
      
      public function addFrame(param1:§%F§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§+T§.push(param1);
      }
      
      public function getFrame(param1:int) : §%F§
      {
         if(param1 >= this.§+T§.length)
         {
            param1 = this.§+T§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+T§.length)
         {
            return null;
         }
         return this.§+T§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§+T§.length;
      }
      
      public function getSubAnimation(param1:String) : §+R§
      {
         return null;
      }
   }
}
