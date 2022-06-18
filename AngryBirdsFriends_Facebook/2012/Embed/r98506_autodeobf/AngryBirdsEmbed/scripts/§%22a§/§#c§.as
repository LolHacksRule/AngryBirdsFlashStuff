package §"a§
{
   public class §#c§
   {
       
      
      private var §5!9§:Vector.<§^>§>;
      
      public function §#c§()
      {
         super();
         this.§5!9§ = new Vector.<§^>§>();
      }
      
      public function addFrame(param1:§^>§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§5!9§.push(param1);
      }
      
      public function getFrame(param1:int) : §^>§
      {
         if(param1 >= this.§5!9§.length)
         {
            param1 = this.§5!9§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§5!9§.length)
         {
            return null;
         }
         return this.§5!9§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§5!9§.length;
      }
      
      public function getSubAnimation(param1:String) : §#c§
      {
         return null;
      }
   }
}
