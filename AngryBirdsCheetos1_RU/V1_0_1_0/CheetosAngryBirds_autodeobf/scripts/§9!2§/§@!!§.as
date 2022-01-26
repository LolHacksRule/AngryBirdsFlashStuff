package §9!2§
{
   public class §@!!§
   {
       
      
      private var §#P§:Vector.<§<j§>;
      
      public function §@!!§()
      {
         super();
         this.§#P§ = new Vector.<§<j§>();
      }
      
      public function addFrame(param1:§<j§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§#P§.push(param1);
      }
      
      public function getFrame(param1:int) : §<j§
      {
         if(param1 >= this.§#P§.length)
         {
            param1 = this.§#P§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§#P§.length)
         {
            return null;
         }
         return this.§#P§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§#P§.length;
      }
      
      public function getSubAnimation(param1:String) : §@!!§
      {
         return null;
      }
   }
}
