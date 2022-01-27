package §!u§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §4"@§.DisplayObjectContainer;
   import §6!M§.§?R§;
   import §^e§.§^5§;
   
   public class §[!e§ extends §6!%§
   {
       
      
      protected var §'!m§:§?R§;
      
      protected var §=O§:§^5§;
      
      private var §#!R§:DisplayObject;
      
      public function §[!e§(param1:§^5§, param2:Number, param3:Number, param4:Number, param5:§?R§)
      {
         super(param2,param3,param4,param5);
         this.§'!m§ = param5;
         this.§=O§ = param1;
         this.§#!R§ = this.§=O§.getFrameWithOffset(§7J§,this.§#!R§);
      }
      
      public function get §set §() : DisplayObject
      {
         return this.§#!R§;
      }
      
      public function dispose() : void
      {
         if(this.§#!R§)
         {
            this.§#!R§.dispose();
            this.§#!R§ = null;
         }
         this.§'!m§ = null;
         this.§=O§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§=O§.getFrameWithOffset(§7J§,this.§#!R§);
         if(_loc3_ != this.§#!R§)
         {
            (_loc4_ = this.§#!R§.parent).removeChild(this.§#!R§);
            _loc4_.addChild(_loc3_);
            this.§#!R§ = _loc3_;
         }
         this.§#!R§.scaleX = §1!k§;
         this.§#!R§.scaleY = §1!k§;
         this.§#!R§.rotation = §7_§;
         this.§#!R§.x = §1!`§ / §1!R§.§00§;
         this.§#!R§.y = §<2§ / §1!R§.§00§;
         return _loc2_;
      }
   }
}
