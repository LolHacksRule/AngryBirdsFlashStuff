package §]!C§
{
   public class §<!c§
   {
       
      
      private var §5!V§:Vector.<§'!!§>;
      
      public function §<!c§()
      {
         super();
         this.§5!V§ = new Vector.<§'!!§>();
      }
      
      public function addFrame(param1:§'!!§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§5!V§.push(param1);
      }
      
      public function getFrame(param1:int) : §'!!§
      {
         if(param1 >= this.§5!V§.length)
         {
            param1 = this.§5!V§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§5!V§.length)
         {
            return null;
         }
         return this.§5!V§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§5!V§.length;
      }
      
      public function getSubAnimation(param1:String) : §<!c§
      {
         return null;
      }
   }
}
