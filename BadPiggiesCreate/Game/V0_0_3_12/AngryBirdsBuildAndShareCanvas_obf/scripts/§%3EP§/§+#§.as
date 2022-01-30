package §>P§
{
   import §2!w§.§8!g§;
   import §7"1§.§%W§;
   import §@!i§.§%Q§;
   import §^Q§.Texture;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §+#§
   {
      
      private static const §@m§:Class = §"R§;
      
      private static const §8B§:Class = §5%§;
      
      protected static var §5@§:Class;
       
      
      private var §#C§:Dictionary;
      
      private var §3P§:Dictionary;
      
      public function §+#§()
      {
         this.§#C§ = new Dictionary();
         this.§3P§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§%Q§ = null;
         for each(_loc1_ in this.§#C§)
         {
            §%W§.§5"8§.objects.§="0§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§3P§)
         {
            §%W§.§5"8§.objects.§="0§.removeChild(_loc1_);
         }
         this.§#C§ = new Dictionary();
         this.§3P§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§#C§)
         {
            if((_loc1_ as §8!g§).§!! §)
            {
               §%W§.§5"8§.objects.§="0§.addChild(this.§#C§[_loc1_]);
            }
            else
            {
               §%W§.§5"8§.objects.§="0§.removeChild(this.§#C§[_loc1_]);
            }
         }
         for(_loc1_ in this.§3P§)
         {
            if((_loc1_ as §8!g§).§!! §)
            {
               §%W§.§5"8§.objects.§="0§.removeChild(this.§3P§[_loc1_]);
            }
            else
            {
               §%W§.§5"8§.objects.§="0§.addChild(this.§3P§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§8!g§>) : void
      {
         var _loc2_:§8!g§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§%Q§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §@m§() : new §8B§();
               _loc5_ = §%W§.§5"8§.§="!§.§,!d§(_loc4_.bitmapData);
               (_loc6_ = new §%Q§(_loc5_)).name = _loc2_.§[!Y§;
               _loc6_.x = _loc2_.§8J§;
               _loc6_.y = _loc2_.§;!<§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §%W§.§5"8§.objects.§="0§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§#C§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§3P§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§%Q§ = null;
         for each(_loc2_ in this.§#C§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§3P§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
