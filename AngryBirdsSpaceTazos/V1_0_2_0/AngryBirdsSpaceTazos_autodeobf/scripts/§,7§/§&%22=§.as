package §,7§
{
   import §'!&§.DisplayObject;
   import §'!&§.DisplayObjectContainer;
   import §8o§.§]!U§;
   import §;"=§.§@!6§;
   import §?!<§.§'!1§;
   
   public class §&"=§ extends §9;§
   {
       
      
      protected var §^B§:§@!6§;
      
      protected var §"">§:§]!U§;
      
      private var §'"9§:DisplayObject;
      
      public function §&"=§(param1:§]!U§, param2:Number, param3:Number, param4:Number, param5:§@!6§)
      {
         super(param2,param3,param4,param5);
         this.§^B§ = param5;
         this.§"">§ = param1;
         this.§'"9§ = this.§"">§.getFrameWithOffset(§8Y§,this.§'"9§);
      }
      
      public function get §&§() : DisplayObject
      {
         return this.§'"9§;
      }
      
      public function dispose() : void
      {
         if(this.§'"9§)
         {
            this.§'"9§.dispose();
            this.§'"9§ = null;
         }
         this.§^B§ = null;
         this.§"">§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§"">§.getFrameWithOffset(§8Y§,this.§'"9§);
         if(_loc3_ != this.§'"9§)
         {
            (_loc4_ = this.§'"9§.parent).removeChild(this.§'"9§);
            _loc4_.addChild(_loc3_);
            this.§'"9§ = _loc3_;
         }
         this.§'"9§.scaleX = §-!Y§;
         this.§'"9§.scaleY = §-!Y§;
         this.§'"9§.rotation = §%!^§;
         this.§'"9§.x = §>!J§ / §'!1§.§<!@§;
         this.§'"9§.y = §;`§ / §'!1§.§<!@§;
         return _loc2_;
      }
   }
}
