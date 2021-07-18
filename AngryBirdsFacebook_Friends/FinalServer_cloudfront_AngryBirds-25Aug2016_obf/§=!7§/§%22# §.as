package §=!7§
{
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §9$§.DisplayObjectContainer;
   import §@"§.§`"W§;
   import §`#C§.§-$'§;
   
   public class §"# § extends §?!;§
   {
       
      
      protected var §?";§:§-$'§;
      
      protected var §"!c§:§`"W§;
      
      private var §#P§:DisplayObject;
      
      public function §"# §(param1:§`"W§, param2:Number, param3:Number, param4:Number, param5:§-$'§)
      {
         super(param2,param3,param4,param5);
         this.§?";§ = param5;
         this.§"!c§ = param1;
         this.§#P§ = this.§"!c§.getFrameWithOffset(§"4§,this.§#P§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§#P§;
      }
      
      public function dispose() : void
      {
         if(this.§#P§)
         {
            this.§#P§.dispose();
            this.§#P§ = null;
         }
         this.§?";§ = null;
         this.§"!c§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§"!c§.getFrameWithOffset(§"4§,this.§#P§);
            if(_loc3_ != this.§#P§)
            {
               (_loc4_ = this.§#P§.parent).removeChild(this.§#P§);
               _loc4_.addChild(_loc3_);
               this.§#P§ = _loc3_;
            }
            this.§#P§.scaleX = §]"?§;
            this.§#P§.scaleY = §]"?§;
            this.§#P§.rotation = §2#!§;
            this.§#P§.x = §+!5§ / §#!,§.§?$#§;
            this.§#P§.y = §'! § / §#!,§.§?$#§;
         }
         return _loc2_;
      }
   }
}
