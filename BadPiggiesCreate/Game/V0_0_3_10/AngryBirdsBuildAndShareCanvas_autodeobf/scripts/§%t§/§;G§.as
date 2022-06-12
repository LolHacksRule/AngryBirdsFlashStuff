package §%t§
{
   import flash.utils.Dictionary;
   
   public class §;G§ extends §2!D§
   {
       
      
      private var §@!^§:Dictionary;
      
      private var §"o§:§2!D§;
      
      public function §;G§()
      {
         this.§@!^§ = new Dictionary();
         super();
      }
      
      public function §,#§(param1:String, param2:§2!D§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§"o§)
         {
            this.§"o§ = param2;
         }
         this.§@!^§[param1] = param2;
      }
      
      override public function addFrame(param1:§#B§) : void
      {
         this.§"o§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §#B§
      {
         return this.§"o§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§"o§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2!D§
      {
         if(this.§@!^§[param1])
         {
            return this.§@!^§[param1];
         }
         return this.§"o§;
      }
   }
}
