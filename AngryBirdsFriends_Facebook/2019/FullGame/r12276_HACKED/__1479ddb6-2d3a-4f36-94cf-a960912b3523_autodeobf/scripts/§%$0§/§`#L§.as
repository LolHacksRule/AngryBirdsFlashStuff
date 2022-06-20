package §%$0§
{
   import §#Z§.DisplayObject;
   import §#Z§.DisplayObjectContainer;
   import §-!j§.§@U§;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   
   public class §`#L§ extends §[!@§
   {
       
      
      protected var §>$5§:§@U§;
      
      protected var §&"J§:§,`§;
      
      private var §8"`§:DisplayObject;
      
      public function §`#L§(param1:§,`§, param2:Number, param3:Number, param4:Number, param5:§@U§)
      {
         super(param2,param3,param4,param5);
         this.§>$5§ = param5;
         this.§&"J§ = param1;
         this.§8"`§ = this.§&"J§.getFrameWithOffset(§<K§,this.§8"`§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§8"`§;
      }
      
      public function dispose() : void
      {
         if(this.§8"`§)
         {
            this.§8"`§.dispose();
            this.§8"`§ = null;
         }
         this.§>$5§ = null;
         this.§&"J§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§&"J§.getFrameWithOffset(§<K§,this.§8"`§);
            if(_loc3_ != this.§8"`§)
            {
               (_loc4_ = this.§8"`§.parent).removeChild(this.§8"`§);
               _loc4_.addChild(_loc3_);
               this.§8"`§ = _loc3_;
            }
            this.§8"`§.scaleX = §6#q§;
            this.§8"`§.scaleY = §6#q§;
            this.§8"`§.rotation = §8"a§;
            this.§8"`§.x = §0k§ / §<d§.§6@§;
            this.§8"`§.y = §@_§ / §<d§.§6@§;
         }
         return _loc2_;
      }
   }
}
