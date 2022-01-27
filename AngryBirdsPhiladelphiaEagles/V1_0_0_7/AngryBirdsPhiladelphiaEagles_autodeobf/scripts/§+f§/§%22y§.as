package §+f§
{
   import flash.utils.Dictionary;
   
   public class §"y§ extends §0Q§
   {
       
      
      private var §=!B§:Dictionary;
      
      private var §&w§:§0Q§;
      
      public function §"y§()
      {
         this.§=!B§ = new Dictionary();
         super();
      }
      
      public function §"f§(param1:String, param2:§0Q§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§&w§)
         {
            this.§&w§ = param2;
         }
         this.§=!B§[param1] = param2;
      }
      
      override public function addFrame(param1:§=3§) : void
      {
         this.§&w§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §=3§
      {
         return this.§&w§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§&w§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §0Q§
      {
         if(this.§=!B§[param1])
         {
            return this.§=!B§[param1];
         }
         return this.§&w§;
      }
   }
}
