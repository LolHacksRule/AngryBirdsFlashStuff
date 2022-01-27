package §^9§
{
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§=!F§;
   import §use§.DisplayObject;
   import §use§.DisplayObjectContainer;
   
   public class §[!h§ extends §;!<§
   {
       
      
      protected var §7!d§:§=!F§;
      
      protected var §#!9§:§1!^§;
      
      private var §&"#§:DisplayObject;
      
      public function §[!h§(param1:§1!^§, param2:Number, param3:Number, param4:Number, param5:§=!F§)
      {
         super(param2,param3,param4,param5);
         this.§7!d§ = param5;
         this.§#!9§ = param1;
         this.§&"#§ = this.§#!9§.getFrameWithOffset(§<!"§,this.§&"#§);
      }
      
      public function get §>#3§() : DisplayObject
      {
         return this.§&"#§;
      }
      
      public function dispose() : void
      {
         if(this.§&"#§)
         {
            this.§&"#§.dispose();
            this.§&"#§ = null;
         }
         this.§7!d§ = null;
         this.§#!9§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         var _loc3_:DisplayObject = this.§#!9§.getFrameWithOffset(§<!"§,this.§&"#§);
         if(_loc3_ != this.§&"#§)
         {
            (_loc4_ = this.§&"#§.parent).removeChild(this.§&"#§);
            _loc4_.addChild(_loc3_);
            this.§&"#§ = _loc3_;
         }
         this.§&"#§.scaleX = §#"5§;
         this.§&"#§.scaleY = §#"5§;
         this.§&"#§.rotation = §^]§;
         this.§&"#§.x = §0U§ / §;!E§.§0"?§;
         this.§&"#§.y = §3"[§ / §;!E§.§0"?§;
         return _loc2_;
      }
   }
}
