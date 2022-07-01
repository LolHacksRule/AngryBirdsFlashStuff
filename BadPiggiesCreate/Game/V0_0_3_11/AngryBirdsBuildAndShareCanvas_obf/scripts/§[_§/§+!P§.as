package §[_§
{
   public class §+!P§
   {
       
      
      private var §4!=§:Vector.<§'!N§>;
      
      public function §+!P§()
      {
         super();
         this.§4!=§ = new Vector.<§'!N§>();
      }
      
      public function addFrame(param1:§'!N§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§4!=§.push(param1);
      }
      
      public function getFrame(param1:int) : §'!N§
      {
         if(param1 >= this.§4!=§.length)
         {
            param1 = this.§4!=§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§4!=§.length)
         {
            return null;
         }
         return this.§4!=§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§4!=§.length;
      }
      
      public function getSubAnimation(param1:String) : §+!P§
      {
         return null;
      }
   }
}
