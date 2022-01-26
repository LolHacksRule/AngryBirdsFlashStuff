package §&V§
{
   import flash.utils.Dictionary;
   
   public class §>m§ extends §,_§
   {
       
      
      private var §function§:Dictionary;
      
      private var §0O§:§,_§;
      
      public function §>m§()
      {
         this.§function§ = new Dictionary();
         super();
      }
      
      public function §0p§(param1:String, param2:§,_§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§0O§)
         {
            this.§0O§ = param2;
         }
         this.§function§[param1] = param2;
      }
      
      override public function addFrame(param1:§;Q§) : void
      {
         this.§0O§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §;Q§
      {
         return this.§0O§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§0O§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §,_§
      {
         if(this.§function§[param1])
         {
            return this.§function§[param1];
         }
         return this.§0O§;
      }
   }
}
