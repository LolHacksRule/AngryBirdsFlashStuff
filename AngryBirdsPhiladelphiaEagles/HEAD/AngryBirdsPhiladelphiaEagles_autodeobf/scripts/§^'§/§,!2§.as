package §^'§
{
   public class §,!2§
   {
       
      
      private var §6O§:Vector.<§!!M§>;
      
      public function §,!2§()
      {
         super();
         this.§6O§ = new Vector.<§!!M§>();
      }
      
      public function addFrame(param1:§!!M§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§6O§.push(param1);
      }
      
      public function getFrame(param1:int) : §!!M§
      {
         if(param1 >= this.§6O§.length)
         {
            param1 = this.§6O§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§6O§.length)
         {
            return null;
         }
         return this.§6O§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§6O§.length;
      }
      
      public function getSubAnimation(param1:String) : §,!2§
      {
         return null;
      }
   }
}
