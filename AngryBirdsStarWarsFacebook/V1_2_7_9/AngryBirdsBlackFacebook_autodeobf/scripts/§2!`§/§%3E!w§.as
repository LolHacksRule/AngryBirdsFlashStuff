package §2!`§
{
   import §1"s§.DisplayObject;
   import §1"s§.DisplayObjectContainer;
   import §3"$§.§[a§;
   import §5!q§.§3"X§;
   import §>P§.§?L§;
   
   public class §>!w§ extends §'"F§
   {
       
      
      protected var § !4§:§?L§;
      
      protected var §3-§:§[a§;
      
      private var §7"+§:DisplayObject;
      
      public function §>!w§(param1:§[a§, param2:Number, param3:Number, param4:Number, param5:§?L§)
      {
         super(param2,param3,param4,param5);
         this.§ !4§ = param5;
         this.§3-§ = param1;
         this.§7"+§ = this.§3-§.getFrameWithOffset(§-=§,this.§7"+§);
      }
      
      public function get §^1§() : DisplayObject
      {
         return this.§7"+§;
      }
      
      public function dispose() : void
      {
         if(this.§7"+§)
         {
            this.§7"+§.dispose();
            this.§7"+§ = null;
         }
         this.§ !4§ = null;
         this.§3-§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§3-§.getFrameWithOffset(§-=§,this.§7"+§);
         if(_loc3_ != this.§7"+§)
         {
            (_loc4_ = this.§7"+§.parent).removeChild(this.§7"+§);
            _loc4_.addChild(_loc3_);
            this.§7"+§ = _loc3_;
         }
         this.§7"+§.scaleX = §"r§;
         this.§7"+§.scaleY = §"r§;
         this.§7"+§.rotation = §`"j§;
         this.§7"+§.x = §]!_§ / §3"X§.§;"l§;
         this.§7"+§.y = §#j§ / §3"X§.§;"l§;
         return _loc2_;
      }
   }
}
