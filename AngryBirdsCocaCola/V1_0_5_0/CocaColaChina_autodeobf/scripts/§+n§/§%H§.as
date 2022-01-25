package §+N§
{
   public class §%H§
   {
       
      
      private var §]!N§:Vector.<§=!+§>;
      
      public function §%H§()
      {
         super();
         this.§]!N§ = new Vector.<§=!+§>();
      }
      
      public function addFrame(param1:§=!+§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§]!N§.push(param1);
      }
      
      public function getFrame(param1:int) : §=!+§
      {
         if(param1 >= this.§]!N§.length)
         {
            param1 = this.§]!N§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]!N§.length)
         {
            return null;
         }
         return this.§]!N§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§]!N§.length;
      }
      
      public function getSubAnimation(param1:String) : §%H§
      {
         return null;
      }
   }
}
