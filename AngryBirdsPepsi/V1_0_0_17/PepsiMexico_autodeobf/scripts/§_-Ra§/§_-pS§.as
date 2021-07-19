package §_-Ra§
{
   import flash.utils.Dictionary;
   
   public class §_-pS§ extends §_-RO§
   {
       
      
      private var §_-mM§:Dictionary;
      
      private var §_-GN§:§_-RO§;
      
      public function §_-pS§()
      {
         this.§_-mM§ = new Dictionary();
         super();
      }
      
      public function §_-i9§(param1:String, param2:§_-RO§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§_-GN§)
         {
            this.§_-GN§ = param2;
         }
         this.§_-mM§[param1] = param2;
      }
      
      override public function addFrame(param1:§_-Vr§) : void
      {
         this.§_-GN§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §_-Vr§
      {
         return this.§_-GN§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-GN§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-RO§
      {
         if(this.§_-mM§[param1])
         {
            return this.§_-mM§[param1];
         }
         return this.§_-GN§;
      }
   }
}
