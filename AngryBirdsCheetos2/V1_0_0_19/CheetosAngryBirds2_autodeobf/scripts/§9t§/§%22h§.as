package §9t§
{
   public class §"h§
   {
       
      
      private var § ;§:Vector.<§35§>;
      
      public function §"h§()
      {
         super();
         this.§ ;§ = new Vector.<§35§>();
      }
      
      public function addFrame(param1:§35§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§ ;§.push(param1);
      }
      
      public function getFrame(param1:int) : §35§
      {
         if(param1 >= this.§ ;§.length)
         {
            param1 = this.§ ;§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§ ;§.length)
         {
            return null;
         }
         return this.§ ;§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§ ;§.length;
      }
      
      public function getSubAnimation(param1:String) : §"h§
      {
         return null;
      }
   }
}
