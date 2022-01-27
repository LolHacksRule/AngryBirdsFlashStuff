package §4!0§
{
   import flash.utils.Dictionary;
   
   public class §9d§ extends §#v§
   {
       
      
      private var §'^§:Dictionary;
      
      private var §8!>§:§#v§;
      
      public function §9d§()
      {
         this.§'^§ = new Dictionary();
         super();
      }
      
      public function §0!8§(param1:String, param2:§#v§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§8!>§)
         {
            this.§8!>§ = param2;
         }
         this.§'^§[param1] = param2;
      }
      
      override public function addFrame(param1:§#^§) : void
      {
         this.§8!>§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §#^§
      {
         return this.§8!>§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8!>§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §#v§
      {
         if(this.§'^§[param1])
         {
            return this.§'^§[param1];
         }
         return this.§8!>§;
      }
   }
}
