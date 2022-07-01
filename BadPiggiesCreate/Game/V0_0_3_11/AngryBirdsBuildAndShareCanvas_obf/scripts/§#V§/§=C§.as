package §#V§
{
   import §'x§.§?z§;
   import §1!Y§.§8C§;
   import §1z§.§@k§;
   import §^i§.Texture;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §=C§
   {
      
      private static const § 8§:Class = §!"#§;
      
      private static const §6[§:Class = §=D§;
      
      protected static var §'r§:Class;
       
      
      private var §8!Y§:Dictionary;
      
      private var §6I§:Dictionary;
      
      public function §=C§()
      {
         this.§8!Y§ = new Dictionary();
         this.§6I§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§8C§ = null;
         for each(_loc1_ in this.§8!Y§)
         {
            §?z§.§=7§.objects.§0&§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§6I§)
         {
            §?z§.§=7§.objects.§0&§.removeChild(_loc1_);
         }
         this.§8!Y§ = new Dictionary();
         this.§6I§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§8!Y§)
         {
            if((_loc1_ as §@k§).§2!t§)
            {
               §?z§.§=7§.objects.§0&§.addChild(this.§8!Y§[_loc1_]);
            }
            else
            {
               §?z§.§=7§.objects.§0&§.removeChild(this.§8!Y§[_loc1_]);
            }
         }
         for(_loc1_ in this.§6I§)
         {
            if((_loc1_ as §@k§).§2!t§)
            {
               §?z§.§=7§.objects.§0&§.removeChild(this.§6I§[_loc1_]);
            }
            else
            {
               §?z§.§=7§.objects.§0&§.addChild(this.§6I§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§@k§>) : void
      {
         var _loc2_:§@k§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§8C§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new § 8§() : new §6[§();
               _loc5_ = §?z§.§=7§.§while§.§[!$§(_loc4_.bitmapData);
               (_loc6_ = new §8C§(_loc5_)).name = _loc2_.§!" §;
               _loc6_.x = _loc2_.§3f§;
               _loc6_.y = _loc2_.§?-§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §?z§.§=7§.objects.§0&§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§8!Y§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§6I§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§8C§ = null;
         for each(_loc2_ in this.§8!Y§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§6I§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
