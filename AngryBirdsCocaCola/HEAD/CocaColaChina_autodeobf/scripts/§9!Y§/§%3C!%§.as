package §9!Y§
{
   public class §<!%§
   {
       
      
      private var native:Vector.<§"#§>;
      
      public function §<!%§()
      {
         super();
         this.native = new Vector.<§"#§>();
      }
      
      public function addFrame(param1:§"#§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.native.push(param1);
      }
      
      public function getFrame(param1:int) : §"#§
      {
         if(param1 >= this.native.length)
         {
            param1 = this.native.length - 1;
         }
         if(param1 < 0 || param1 >= this.native.length)
         {
            return null;
         }
         return this.native[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.native.length;
      }
      
      public function getSubAnimation(param1:String) : §<!%§
      {
         return null;
      }
   }
}
