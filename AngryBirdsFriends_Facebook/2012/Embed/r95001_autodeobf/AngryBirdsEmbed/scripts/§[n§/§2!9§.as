package §[n§
{
   public class §2!9§
   {
       
      
      private var §"Q§:Vector.<§#H§>;
      
      public function §2!9§()
      {
         super();
         this.§"Q§ = new Vector.<§#H§>();
      }
      
      public function addFrame(param1:§#H§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§"Q§.push(param1);
      }
      
      public function getFrame(param1:int) : §#H§
      {
         if(param1 >= this.§"Q§.length)
         {
            param1 = this.§"Q§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§"Q§.length)
         {
            return null;
         }
         return this.§"Q§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§"Q§.length;
      }
      
      public function getSubAnimation(param1:String) : §2!9§
      {
         return null;
      }
   }
}
