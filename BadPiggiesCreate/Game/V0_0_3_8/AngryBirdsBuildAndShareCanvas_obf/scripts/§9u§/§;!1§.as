package §9u§
{
   import §3!U§.Texture;
   import §]!2§.§,!n§;
   import §`%§.§8!0§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   import §var§.§0!r§;
   
   public class §;!1§
   {
      
      private static const §=!y§:Class = §9k§;
      
      private static const §'%§:Class = §-!z§;
      
      protected static var §0!a§:Class;
       
      
      private var §8!P§:Dictionary;
      
      private var §8J§:Dictionary;
      
      public function §;!1§()
      {
         this.§8!P§ = new Dictionary();
         this.§8J§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§,!n§ = null;
         for each(_loc1_ in this.§8!P§)
         {
            §8!0§.§?2§.objects.§<!b§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§8J§)
         {
            §8!0§.§?2§.objects.§<!b§.removeChild(_loc1_);
         }
         this.§8!P§ = new Dictionary();
         this.§8J§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§8!P§)
         {
            if((_loc1_ as §0!r§).§7@§)
            {
               §8!0§.§?2§.objects.§<!b§.addChild(this.§8!P§[_loc1_]);
            }
            else
            {
               §8!0§.§?2§.objects.§<!b§.removeChild(this.§8!P§[_loc1_]);
            }
         }
         for(_loc1_ in this.§8J§)
         {
            if((_loc1_ as §0!r§).§7@§)
            {
               §8!0§.§?2§.objects.§<!b§.removeChild(this.§8J§[_loc1_]);
            }
            else
            {
               §8!0§.§?2§.objects.§<!b§.addChild(this.§8J§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§0!r§>) : void
      {
         var _loc2_:§0!r§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§,!n§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §=!y§() : new §'%§();
               _loc5_ = §8!0§.§?2§.§7<§.§>!,§(_loc4_.bitmapData);
               (_loc6_ = new §,!n§(_loc5_)).name = _loc2_.§+!0§;
               _loc6_.x = _loc2_.§]8§;
               _loc6_.y = _loc2_.§>A§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §8!0§.§?2§.objects.§<!b§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§8!P§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§8J§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§,!n§ = null;
         for each(_loc2_ in this.§8!P§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§8J§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
