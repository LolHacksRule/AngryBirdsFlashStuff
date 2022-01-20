package §9`§
{
   public class §+!D§
   {
       
      
      private var §6!K§:Vector.<§8!P§>;
      
      public function §+!D§()
      {
         super();
         this.§6!K§ = new Vector.<§8!P§>();
      }
      
      public function addFrame(param1:§8!P§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§6!K§.push(param1);
      }
      
      public function getFrame(param1:int) : §8!P§
      {
         if(param1 >= this.§6!K§.length)
         {
            param1 = this.§6!K§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§6!K§.length)
         {
            return null;
         }
         return this.§6!K§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§6!K§.length;
      }
      
      public function getSubAnimation(param1:String) : §+!D§
      {
         return null;
      }
   }
}
