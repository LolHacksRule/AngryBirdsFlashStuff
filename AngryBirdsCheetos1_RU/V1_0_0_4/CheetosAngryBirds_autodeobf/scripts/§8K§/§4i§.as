package §8K§
{
   public class §4i§
   {
       
      
      private var §+[§:Vector.<§9!S§>;
      
      public function §4i§()
      {
         super();
         this.§+[§ = new Vector.<§9!S§>();
      }
      
      public function addFrame(param1:§9!S§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§+[§.push(param1);
      }
      
      public function getFrame(param1:int) : §9!S§
      {
         if(param1 >= this.§+[§.length)
         {
            param1 = this.§+[§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+[§.length)
         {
            return null;
         }
         return this.§+[§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§+[§.length;
      }
      
      public function getSubAnimation(param1:String) : §4i§
      {
         return null;
      }
   }
}
