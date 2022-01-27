package §4!0§
{
   public class §#v§
   {
       
      
      private var §2!#§:Vector.<§#^§>;
      
      public function §#v§()
      {
         super();
         this.§2!#§ = new Vector.<§#^§>();
      }
      
      public function addFrame(param1:§#^§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§2!#§.push(param1);
      }
      
      public function getFrame(param1:int) : §#^§
      {
         if(param1 >= this.§2!#§.length)
         {
            param1 = this.§2!#§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§2!#§.length)
         {
            return null;
         }
         return this.§2!#§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§2!#§.length;
      }
      
      public function getSubAnimation(param1:String) : §#v§
      {
         return null;
      }
   }
}
