package §7"p§
{
   import §'G§.§;D§;
   import §6#H§.DisplayObject;
   import §6#H§.DisplayObjectContainer;
   import §>2§.§!6§;
   import §?$<§.§[S§;
   
   public class §,#v§ extends §2!<§
   {
       
      
      protected var §4<§:§[S§;
      
      protected var §&#N§:§;D§;
      
      private var §&#W§:DisplayObject;
      
      public function §,#v§(param1:§;D§, param2:Number, param3:Number, param4:Number, param5:§[S§)
      {
         super(param2,param3,param4,param5);
         this.§4<§ = param5;
         this.§&#N§ = param1;
         this.§&#W§ = this.§&#N§.getFrameWithOffset(§7$;§,this.§&#W§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§&#W§;
      }
      
      public function dispose() : void
      {
         if(this.§&#W§)
         {
            this.§&#W§.dispose();
            this.§&#W§ = null;
         }
         this.§4<§ = null;
         this.§&#N§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§&#N§.getFrameWithOffset(§7$;§,this.§&#W§);
            if(_loc3_ != this.§&#W§)
            {
               (_loc4_ = this.§&#W§.parent).removeChild(this.§&#W§);
               _loc4_.addChild(_loc3_);
               this.§&#W§ = _loc3_;
            }
            this.§&#W§.scaleX = §5>§;
            this.§&#W§.scaleY = §5>§;
            this.§&#W§.rotation = §9"c§;
            this.§&#W§.x = §["d§ / §!6§.§[#v§;
            this.§&#W§.y = §%#z§ / §!6§.§[#v§;
         }
         return _loc2_;
      }
   }
}
