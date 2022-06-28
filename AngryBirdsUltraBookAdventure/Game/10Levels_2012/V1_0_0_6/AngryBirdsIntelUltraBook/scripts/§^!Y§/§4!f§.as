package §^!Y§
{
   public class §4!f§
   {
       
      
      private var §+!R§:Vector.<§1C§>;
      
      public function §4!f§()
      {
         super();
         this.§+!R§ = new Vector.<§1C§>();
      }
      
      public function addFrame(param1:§1C§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§+!R§.push(param1);
      }
      
      public function getFrame(param1:int) : §1C§
      {
         if(param1 >= this.§+!R§.length)
         {
            param1 = this.§+!R§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+!R§.length)
         {
            return null;
         }
         return this.§+!R§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§+!R§.length;
      }
      
      public function getSubAnimation(param1:String) : §4!f§
      {
         return null;
      }
   }
}
