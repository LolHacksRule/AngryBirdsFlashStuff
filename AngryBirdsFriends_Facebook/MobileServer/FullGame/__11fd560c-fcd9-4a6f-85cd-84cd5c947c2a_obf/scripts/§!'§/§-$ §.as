package §!'§
{
   import §8"L§.§3#N§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.DisplayObjectContainer;
   import §`"8§.§0$2§;
   
   public class §-$ § extends §4"j§
   {
       
      
      protected var § !F§:§3#N§;
      
      protected var §&n§:§0$2§;
      
      private var § $9§:DisplayObject;
      
      public function §-$ §(param1:§0$2§, param2:Number, param3:Number, param4:Number, param5:§3#N§)
      {
         super(param2,param3,param4,param5);
         this.§ !F§ = param5;
         this.§&n§ = param1;
         this.§ $9§ = this.§&n§.getFrameWithOffset(§8G§,this.§ $9§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§ $9§;
      }
      
      public function dispose() : void
      {
         if(this.§ $9§)
         {
            this.§ $9§.dispose();
            this.§ $9§ = null;
         }
         this.§ !F§ = null;
         this.§&n§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§&n§.getFrameWithOffset(§8G§,this.§ $9§);
            if(_loc3_ != this.§ $9§)
            {
               (_loc4_ = this.§ $9§.parent).removeChild(this.§ $9§);
               _loc4_.addChild(_loc3_);
               this.§ $9§ = _loc3_;
            }
            this.§ $9§.scaleX = §^#5§;
            this.§ $9§.scaleY = §^#5§;
            this.§ $9§.rotation = §9v§;
            this.§ $9§.x = §8u§ / §%!q§.§6q§;
            this.§ $9§.y = §!#§ / §%!q§.§6q§;
         }
         return _loc2_;
      }
   }
}
