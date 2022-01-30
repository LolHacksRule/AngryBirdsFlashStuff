package §@!-§
{
   public class §5A§
   {
       
      
      private var §0W§:Vector.<§"K§>;
      
      public function §5A§()
      {
         super();
         this.§0W§ = new Vector.<§"K§>();
      }
      
      public function addFrame(param1:§"K§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§0W§.push(param1);
      }
      
      public function getFrame(param1:int) : §"K§
      {
         if(param1 >= this.§0W§.length)
         {
            param1 = this.§0W§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§0W§.length)
         {
            return null;
         }
         return this.§0W§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§0W§.length;
      }
      
      public function getSubAnimation(param1:String) : §5A§
      {
         return null;
      }
   }
}
