package §[!$§
{
   public class §2!%§
   {
       
      
      private var §4!A§:Vector.<§89§>;
      
      public function §2!%§()
      {
         super();
         this.§4!A§ = new Vector.<§89§>();
      }
      
      public function addFrame(param1:§89§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§4!A§.push(param1);
      }
      
      public function getFrame(param1:int) : §89§
      {
         if(param1 >= this.§4!A§.length)
         {
            param1 = this.§4!A§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§4!A§.length)
         {
            return null;
         }
         return this.§4!A§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§4!A§.length;
      }
      
      public function getSubAnimation(param1:String) : §2!%§
      {
         return null;
      }
   }
}
