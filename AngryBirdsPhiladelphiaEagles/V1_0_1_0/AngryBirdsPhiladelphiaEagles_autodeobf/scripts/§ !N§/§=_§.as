package § !N§
{
   public class §=_§
   {
       
      
      private var §1!N§:Vector.<§6!§>;
      
      public function §=_§()
      {
         super();
         this.§1!N§ = new Vector.<§6!§>();
      }
      
      public function addFrame(param1:§6!§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§1!N§.push(param1);
      }
      
      public function getFrame(param1:int) : §6!§
      {
         if(param1 >= this.§1!N§.length)
         {
            param1 = this.§1!N§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§1!N§.length)
         {
            return null;
         }
         return this.§1!N§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§1!N§.length;
      }
      
      public function getSubAnimation(param1:String) : §=_§
      {
         return null;
      }
   }
}
