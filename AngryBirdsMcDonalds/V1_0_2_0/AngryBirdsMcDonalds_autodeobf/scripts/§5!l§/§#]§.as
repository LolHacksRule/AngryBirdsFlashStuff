package §5!l§
{
   import flash.utils.Dictionary;
   
   public class §#]§ extends §8!_§
   {
       
      
      private var §#!!§:Dictionary;
      
      private var §7,§:§8!_§;
      
      public function §#]§()
      {
         this.§#!!§ = new Dictionary();
         super();
      }
      
      public function §^#§(param1:String, param2:§8!_§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§7,§)
         {
            this.§7,§ = param2;
         }
         this.§#!!§[param1] = param2;
      }
      
      override public function addFrame(param1:§9Z§) : void
      {
         this.§7,§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §9Z§
      {
         return this.§7,§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§7,§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §8!_§
      {
         if(this.§#!!§[param1])
         {
            return this.§#!!§[param1];
         }
         return this.§7,§;
      }
   }
}
