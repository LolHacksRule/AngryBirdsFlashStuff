package §=0§
{
   public class §@_§
   {
       
      
      private var §7!-§:Vector.<§^L§>;
      
      public function §@_§()
      {
         super();
         this.§7!-§ = new Vector.<§^L§>();
      }
      
      public function addFrame(param1:§^L§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7!-§.push(param1);
      }
      
      public function getFrame(param1:int) : §^L§
      {
         if(param1 >= this.§7!-§.length)
         {
            param1 = this.§7!-§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7!-§.length)
         {
            return null;
         }
         return this.§7!-§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7!-§.length;
      }
      
      public function getSubAnimation(param1:String) : §@_§
      {
         return null;
      }
   }
}
