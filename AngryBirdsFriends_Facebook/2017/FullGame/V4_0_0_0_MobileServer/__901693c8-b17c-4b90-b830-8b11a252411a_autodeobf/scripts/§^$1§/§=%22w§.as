package §^$1§
{
   import §&!v§.DisplayObject;
   import §&!v§.DisplayObjectContainer;
   import §+!C§.§!!S§;
   import §7!j§.§8#B§;
   import §7"&§.§?"B§;
   
   public class §="w§ extends §7" §
   {
       
      
      protected var §9A§:§?"B§;
      
      protected var § @§:§8#B§;
      
      private var §;"6§:DisplayObject;
      
      public function §="w§(param1:§8#B§, param2:Number, param3:Number, param4:Number, param5:§?"B§)
      {
         super(param2,param3,param4,param5);
         this.§9A§ = param5;
         this.§ @§ = param1;
         this.§;"6§ = this.§ @§.getFrameWithOffset(§`"b§,this.§;"6§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§;"6§;
      }
      
      public function dispose() : void
      {
         if(this.§;"6§)
         {
            this.§;"6§.dispose();
            this.§;"6§ = null;
         }
         this.§9A§ = null;
         this.§ @§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§ @§.getFrameWithOffset(§`"b§,this.§;"6§);
            if(_loc3_ != this.§;"6§)
            {
               (_loc4_ = this.§;"6§.parent).removeChild(this.§;"6§);
               _loc4_.addChild(_loc3_);
               this.§;"6§ = _loc3_;
            }
            this.§;"6§.scaleX = § "A§;
            this.§;"6§.scaleY = § "A§;
            this.§;"6§.rotation = §;"A§;
            this.§;"6§.x = §?!l§ / §!!S§.§,"3§;
            this.§;"6§.y = §`"T§ / §!!S§.§,"3§;
         }
         return _loc2_;
      }
   }
}
