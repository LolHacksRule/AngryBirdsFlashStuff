package §6!D§
{
   public class §"A§
   {
       
      
      private var §+"$§:Vector.<§3!K§>;
      
      public function §"A§()
      {
         super();
         this.§+"$§ = new Vector.<§3!K§>();
      }
      
      public function addFrame(param1:§3!K§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§+"$§.push(param1);
      }
      
      public function getFrame(param1:int) : §3!K§
      {
         if(param1 >= this.§+"$§.length)
         {
            param1 = this.§+"$§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+"$§.length)
         {
            return null;
         }
         return this.§+"$§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§+"$§.length;
      }
      
      public function getSubAnimation(param1:String) : §"A§
      {
         return null;
      }
   }
}
