package §8K§
{
   import flash.utils.Dictionary;
   
   public class §7r§ extends §4i§
   {
       
      
      private var §1!K§:Dictionary;
      
      private var §71§:§4i§;
      
      public function §7r§()
      {
         this.§1!K§ = new Dictionary();
         super();
      }
      
      public function §[!R§(param1:String, param2:§4i§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§71§)
         {
            this.§71§ = param2;
         }
         this.§1!K§[param1] = param2;
      }
      
      override public function addFrame(param1:§9!S§) : void
      {
         this.§71§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §9!S§
      {
         return this.§71§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§71§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4i§
      {
         if(this.§1!K§[param1])
         {
            return this.§1!K§[param1];
         }
         return this.§71§;
      }
   }
}
