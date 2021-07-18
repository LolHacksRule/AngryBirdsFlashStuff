package §&"5§
{
   public class §+2§
   {
       
      
      private var §8@§:Vector.<§6!L§>;
      
      public function §+2§()
      {
         super();
         this.§8@§ = new Vector.<§6!L§>();
      }
      
      public function addFrame(param1:§6!L§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§8@§.push(param1);
      }
      
      public function getFrame(param1:int) : §6!L§
      {
         if(param1 >= this.§8@§.length)
         {
            param1 = this.§8@§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§8@§.length)
         {
            return null;
         }
         return this.§8@§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§8@§.length;
      }
      
      public function getSubAnimation(param1:String) : §+2§
      {
         return null;
      }
   }
}
