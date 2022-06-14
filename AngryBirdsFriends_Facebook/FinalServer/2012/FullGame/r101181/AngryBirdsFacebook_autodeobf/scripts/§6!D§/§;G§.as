package §6!D§
{
   import flash.utils.Dictionary;
   
   public class §;G§ extends §"A§
   {
       
      
      private var §[!t§:Dictionary;
      
      private var §5" §:§"A§;
      
      public function §;G§()
      {
         this.§[!t§ = new Dictionary();
         super();
      }
      
      public function §<!=§(param1:String, param2:§"A§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5" §)
         {
            this.§5" § = param2;
         }
         this.§[!t§[param1] = param2;
      }
      
      override public function addFrame(param1:§3!K§) : void
      {
         this.§5" §.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §3!K§
      {
         return this.§5" §.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§5" §.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"A§
      {
         if(this.§[!t§[param1])
         {
            return this.§[!t§[param1];
         }
         return this.§5" §;
      }
   }
}
