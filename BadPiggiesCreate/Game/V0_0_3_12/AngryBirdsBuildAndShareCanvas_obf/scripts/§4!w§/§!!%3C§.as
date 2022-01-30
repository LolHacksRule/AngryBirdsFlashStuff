package §4!w§
{
   import §2n§.§8"7§;
   import §8!J§.§8!c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §!!<§ extends §8!c§
   {
       
      
      private var §<"$§:DisplayObject;
      
      private var §9!h§:DisplayObjectContainer;
      
      public function §!!<§(param1:§8"7§, param2:DisplayObject)
      {
         super(param1);
         this.§<"$§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§<"$§;
      }
      
      override protected function rollback() : void
      {
         if(this.§<"$§ != null && this.§9!h§ != null)
         {
            this.§9!h§.addChild(this.§<"$§);
            this.§9!h§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§<"$§ != null && this.§<"$§.parent != null)
         {
            this.§9!h§ = this.§<"$§.parent;
            this.§9!h§.removeChild(this.§<"$§);
         }
      }
   }
}
