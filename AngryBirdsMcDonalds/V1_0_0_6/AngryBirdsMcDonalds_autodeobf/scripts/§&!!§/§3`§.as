package §&!!§
{
   import flash.utils.Dictionary;
   
   public class §3`§ extends §[!]§
   {
       
      
      private var §"m§:Dictionary;
      
      private var §1S§:§[!]§;
      
      public function §3`§()
      {
         this.§"m§ = new Dictionary();
         super();
      }
      
      public function §[!K§(param1:String, param2:§[!]§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§1S§)
         {
            this.§1S§ = param2;
         }
         this.§"m§[param1] = param2;
      }
      
      override public function addFrame(param1:§7N§) : void
      {
         this.§1S§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §7N§
      {
         return this.§1S§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§1S§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §[!]§
      {
         if(this.§"m§[param1])
         {
            return this.§"m§[param1];
         }
         return this.§1S§;
      }
   }
}
