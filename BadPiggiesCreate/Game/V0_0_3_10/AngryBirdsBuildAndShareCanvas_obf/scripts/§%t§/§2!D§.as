package §%t§
{
   public class §2!D§
   {
       
      
      private var §]#§:Vector.<§#B§>;
      
      public function §2!D§()
      {
         super();
         this.§]#§ = new Vector.<§#B§>();
      }
      
      public function addFrame(param1:§#B§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§]#§.push(param1);
      }
      
      public function getFrame(param1:int) : §#B§
      {
         if(param1 >= this.§]#§.length)
         {
            param1 = this.§]#§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]#§.length)
         {
            return null;
         }
         return this.§]#§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§]#§.length;
      }
      
      public function getSubAnimation(param1:String) : §2!D§
      {
         return null;
      }
   }
}
