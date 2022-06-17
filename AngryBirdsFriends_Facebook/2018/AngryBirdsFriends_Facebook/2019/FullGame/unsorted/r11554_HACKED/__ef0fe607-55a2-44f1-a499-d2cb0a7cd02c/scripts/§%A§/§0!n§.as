package §%A§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.DisplayObjectContainer;
   import §?§.§6!M§;
   import §^"[§.§4!8§;
   
   public class §0!n§ extends §6"I§
   {
       
      
      protected var §<"<§:§6!M§;
      
      protected var §"m§:§4!8§;
      
      private var §^p§:DisplayObject;
      
      public function §0!n§(param1:§4!8§, param2:Number, param3:Number, param4:Number, param5:§6!M§)
      {
         super(param2,param3,param4,param5);
         this.§<"<§ = param5;
         this.§"m§ = param1;
         this.§^p§ = this.§"m§.getFrameWithOffset(§>"&§,this.§^p§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§^p§;
      }
      
      public function dispose() : void
      {
         if(this.§^p§)
         {
            this.§^p§.dispose();
            this.§^p§ = null;
         }
         this.§<"<§ = null;
         this.§"m§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§"m§.getFrameWithOffset(§>"&§,this.§^p§);
            if(_loc3_ != this.§^p§)
            {
               (_loc4_ = this.§^p§.parent).removeChild(this.§^p§);
               _loc4_.addChild(_loc3_);
               this.§^p§ = _loc3_;
            }
            this.§^p§.scaleX = §6z§;
            this.§^p§.scaleY = §6z§;
            this.§^p§.rotation = §?+§;
            this.§^p§.x = §-##§ / §'"u§.§'#e§;
            this.§^p§.y = §0#[§ / §'"u§.§'#e§;
         }
         return _loc2_;
      }
   }
}
