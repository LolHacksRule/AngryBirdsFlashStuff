package § !V§
{
   public class §%!T§
   {
       
      
      private var §<V§:Vector.<§=!g§>;
      
      public function §%!T§()
      {
         super();
         this.§<V§ = new Vector.<§=!g§>();
      }
      
      public function addFrame(param1:§=!g§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§<V§.push(param1);
      }
      
      public function getFrame(param1:int) : §=!g§
      {
         if(param1 >= this.§<V§.length)
         {
            param1 = this.§<V§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§<V§.length)
         {
            return null;
         }
         return this.§<V§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§<V§.length;
      }
      
      public function getSubAnimation(param1:String) : §%!T§
      {
         return null;
      }
   }
}
