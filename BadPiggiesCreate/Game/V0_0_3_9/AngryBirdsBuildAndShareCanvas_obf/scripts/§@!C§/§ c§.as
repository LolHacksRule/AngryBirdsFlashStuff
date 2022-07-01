package §@!C§
{
   import §6!!§.§+G§;
   import §^b§.§ E§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class § c§ extends §+G§
   {
       
      
      private var §@u§:DisplayObject;
      
      private var §<a§:DisplayObjectContainer;
      
      public function § c§(param1:§ E§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§@u§ = param2;
         this.§<a§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§@u§;
      }
      
      override protected function rollback() : void
      {
         if(this.§@u§ != null && this.§<a§ != null && this.§@u§.parent == this.§<a§)
         {
            this.§<a§.removeChild(this.§@u§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§@u§ != null && this.§<a§ != null && this.§@u§.parent != this.§<a§)
         {
            this.§<a§.addChild(this.§@u§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§<a§;
      }
   }
}
