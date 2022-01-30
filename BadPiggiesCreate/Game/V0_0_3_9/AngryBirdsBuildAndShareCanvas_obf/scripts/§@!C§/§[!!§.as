package §@!C§
{
   import §6!!§.§+G§;
   import §^b§.§ E§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §[!!§ extends §+G§
   {
       
      
      private var §@u§:DisplayObject;
      
      private var §<a§:DisplayObjectContainer;
      
      public function §[!!§(param1:§ E§, param2:DisplayObject)
      {
         super(param1);
         this.§@u§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@u§;
      }
      
      override protected function rollback() : void
      {
         if(this.§@u§ != null && this.§<a§ != null)
         {
            this.§<a§.addChild(this.§@u§);
            this.§<a§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§@u§ != null && this.§@u§.parent != null)
         {
            this.§<a§ = this.§@u§.parent;
            this.§<a§.removeChild(this.§@u§);
         }
      }
   }
}
