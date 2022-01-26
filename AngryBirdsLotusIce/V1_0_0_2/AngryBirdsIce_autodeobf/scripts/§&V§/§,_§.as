package §&V§
{
   public class §,_§
   {
       
      
      private var §^1§:Vector.<§;Q§>;
      
      public function §,_§()
      {
         super();
         this.§^1§ = new Vector.<§;Q§>();
      }
      
      public function addFrame(param1:§;Q§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§^1§.push(param1);
      }
      
      public function getFrame(param1:int) : §;Q§
      {
         if(param1 >= this.§^1§.length)
         {
            param1 = this.§^1§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§^1§.length)
         {
            return null;
         }
         return this.§^1§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§^1§.length;
      }
      
      public function getSubAnimation(param1:String) : §,_§
      {
         return null;
      }
   }
}
