package §?"<§
{
   import flash.utils.Dictionary;
   
   public class §%!=§ extends §"d§
   {
       
      
      private var §>"-§:Dictionary;
      
      private var §>!i§:§"d§;
      
      public function §%!=§()
      {
         this.§>"-§ = new Dictionary();
         super();
      }
      
      public function §'N§(param1:String, param2:§"d§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>!i§)
         {
            this.§>!i§ = param2;
         }
         this.§>"-§[param1] = param2;
      }
      
      override public function addFrame(param1:§?n§) : void
      {
         this.§>!i§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §?n§
      {
         return this.§>!i§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§>!i§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"d§
      {
         if(this.§>"-§[param1])
         {
            return this.§>"-§[param1];
         }
         return this.§>!i§;
      }
   }
}
