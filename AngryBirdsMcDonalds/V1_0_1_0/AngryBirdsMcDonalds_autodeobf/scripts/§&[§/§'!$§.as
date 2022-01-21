package §&[§
{
   public class §'!$§
   {
       
      
      private var §-!l§:Vector.<§,!"§>;
      
      public function §'!$§()
      {
         super();
         this.§-!l§ = new Vector.<§,!"§>();
      }
      
      public function addFrame(param1:§,!"§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§-!l§.push(param1);
      }
      
      public function getFrame(param1:int) : §,!"§
      {
         if(param1 >= this.§-!l§.length)
         {
            param1 = this.§-!l§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§-!l§.length)
         {
            return null;
         }
         return this.§-!l§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§-!l§.length;
      }
      
      public function getSubAnimation(param1:String) : §'!$§
      {
         return null;
      }
   }
}
