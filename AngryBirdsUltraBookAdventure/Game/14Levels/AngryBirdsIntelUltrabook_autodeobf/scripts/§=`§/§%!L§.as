package §=`§
{
   public class §%!L§
   {
       
      
      private var §<!E§:Vector.<§#`§>;
      
      public function §%!L§()
      {
         super();
         this.§<!E§ = new Vector.<§#`§>();
      }
      
      public function addFrame(param1:§#`§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§<!E§.push(param1);
      }
      
      public function getFrame(param1:int) : §#`§
      {
         if(param1 >= this.§<!E§.length)
         {
            param1 = this.§<!E§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§<!E§.length)
         {
            return null;
         }
         return this.§<!E§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§<!E§.length;
      }
      
      public function getSubAnimation(param1:String) : §%!L§
      {
         return null;
      }
   }
}
