package §,!_§
{
   public class Animation
   {
       
      
      private var §+6§:Vector.<§;K§>;
      
      public function Animation()
      {
         super();
         this.§+6§ = new Vector.<§;K§>();
      }
      
      public function addFrame(param1:§;K§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§+6§.push(param1);
      }
      
      public function getFrame(param1:int) : §;K§
      {
         if(param1 >= this.§+6§.length)
         {
            param1 = this.§+6§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+6§.length)
         {
            return null;
         }
         return this.§+6§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§+6§.length;
      }
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
   }
}
