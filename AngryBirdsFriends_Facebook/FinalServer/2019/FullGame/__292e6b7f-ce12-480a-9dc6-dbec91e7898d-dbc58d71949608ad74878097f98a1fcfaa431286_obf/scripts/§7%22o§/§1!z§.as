package §7"o§
{
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.DisplayObjectContainer;
   import §7"T§.§7b§;
   import §8#K§.§@"M§;
   
   public class §1!z§ extends §;q§
   {
       
      
      protected var §0"^§:§@"M§;
      
      protected var §#"T§:§7b§;
      
      private var §6"z§:DisplayObject;
      
      public function §1!z§(param1:§7b§, param2:Number, param3:Number, param4:Number, param5:§@"M§)
      {
         super(param2,param3,param4,param5);
         this.§0"^§ = param5;
         this.§#"T§ = param1;
         this.§6"z§ = this.§#"T§.getFrameWithOffset(§1!j§,this.§6"z§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6"z§;
      }
      
      public function dispose() : void
      {
         if(this.§6"z§)
         {
            this.§6"z§.dispose();
            this.§6"z§ = null;
         }
         this.§0"^§ = null;
         this.§#"T§ = null;
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc2_:Boolean = super.update(param1);
         if(_loc2_)
         {
            _loc3_ = this.§#"T§.getFrameWithOffset(§1!j§,this.§6"z§);
            if(_loc3_ != this.§6"z§)
            {
               (_loc4_ = this.§6"z§.parent).removeChild(this.§6"z§);
               _loc4_.addChild(_loc3_);
               this.§6"z§ = _loc3_;
            }
            this.§6"z§.scaleX = §#!1§;
            this.§6"z§.scaleY = §#!1§;
            this.§6"z§.rotation = §"$#§;
            this.§6"z§.x = §&$'§ / §8#3§.§2K§;
            this.§6"z§.y = §<#-§ / §8#3§.§2K§;
         }
         return _loc2_;
      }
   }
}
