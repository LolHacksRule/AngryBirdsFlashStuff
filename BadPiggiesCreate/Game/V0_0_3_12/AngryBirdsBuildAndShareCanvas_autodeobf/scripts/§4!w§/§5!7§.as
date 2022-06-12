package §4!w§
{
   import §2n§.§8"7§;
   import §8!J§.§8!c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §5!7§ extends §8!c§
   {
       
      
      private var §<"$§:DisplayObject;
      
      private var §9!h§:DisplayObjectContainer;
      
      public function §5!7§(param1:§8"7§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§<"$§ = param2;
         this.§9!h§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§<"$§;
      }
      
      override protected function rollback() : void
      {
         if(this.§<"$§ != null && this.§9!h§ != null && this.§<"$§.parent == this.§9!h§)
         {
            this.§9!h§.removeChild(this.§<"$§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§<"$§ != null && this.§9!h§ != null && this.§<"$§.parent != this.§9!h§)
         {
            this.§9!h§.addChild(this.§<"$§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§9!h§;
      }
   }
}
