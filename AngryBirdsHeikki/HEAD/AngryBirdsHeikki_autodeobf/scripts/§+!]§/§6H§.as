package §+!]§
{
   public class §6H§
   {
       
      
      private var §,A§:Vector.<§+!=§>;
      
      public function §6H§()
      {
         super();
         this.§,A§ = new Vector.<§+!=§>();
      }
      
      public function addFrame(param1:§+!=§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§,A§.push(param1);
      }
      
      public function getFrame(param1:int) : §+!=§
      {
         if(param1 >= this.§,A§.length)
         {
            param1 = this.§,A§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§,A§.length)
         {
            return null;
         }
         return this.§,A§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§,A§.length;
      }
      
      public function getSubAnimation(param1:String) : §6H§
      {
         return null;
      }
   }
}
