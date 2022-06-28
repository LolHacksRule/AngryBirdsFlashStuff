package §=`§
{
   import flash.utils.Dictionary;
   
   public class §;a§ extends §%!L§
   {
       
      
      private var § !O§:Dictionary;
      
      private var §'a§:§%!L§;
      
      public function §;a§()
      {
         this.§ !O§ = new Dictionary();
         super();
      }
      
      public function §0+§(param1:String, param2:§%!L§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'a§)
         {
            this.§'a§ = param2;
         }
         this.§ !O§[param1] = param2;
      }
      
      override public function addFrame(param1:§#`§) : void
      {
         this.§'a§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §#`§
      {
         return this.§'a§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'a§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §%!L§
      {
         if(this.§ !O§[param1])
         {
            return this.§ !O§[param1];
         }
         return this.§'a§;
      }
   }
}
