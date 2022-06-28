package §,6§
{
   public class §^!>§
   {
       
      
      private var §=!f§:Vector.<§5z§>;
      
      public function §^!>§()
      {
         super();
         this.§=!f§ = new Vector.<§5z§>();
      }
      
      public function addFrame(param1:§5z§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§=!f§.push(param1);
      }
      
      public function getFrame(param1:int) : §5z§
      {
         if(param1 >= this.§=!f§.length)
         {
            param1 = this.§=!f§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§=!f§.length)
         {
            return null;
         }
         return this.§=!f§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§=!f§.length;
      }
      
      public function getSubAnimation(param1:String) : §^!>§
      {
         return null;
      }
   }
}
