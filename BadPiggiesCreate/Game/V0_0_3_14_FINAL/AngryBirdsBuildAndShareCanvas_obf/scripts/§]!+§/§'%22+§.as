package §]!+§
{
   import §%c§.§=!X§;
   import §7R§.Texture;
   import §8" §.§7z§;
   import §default§.§=!Z§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §'"+§
   {
      
      private static const §]j§:Class = § !o§;
      
      private static const §"7§:Class = §<!s§;
      
      protected static var §;2§:Class;
       
      
      private var §"<§:Dictionary;
      
      private var §>!§:Dictionary;
      
      public function §'"+§()
      {
         this.§"<§ = new Dictionary();
         this.§>!§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§=!Z§ = null;
         for each(_loc1_ in this.§"<§)
         {
            §=!X§.§!'§.objects.§6!v§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§>!§)
         {
            §=!X§.§!'§.objects.§6!v§.removeChild(_loc1_);
         }
         this.§"<§ = new Dictionary();
         this.§>!§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§"<§)
         {
            if((_loc1_ as §7z§).§%!0§)
            {
               §=!X§.§!'§.objects.§6!v§.addChild(this.§"<§[_loc1_]);
            }
            else
            {
               §=!X§.§!'§.objects.§6!v§.removeChild(this.§"<§[_loc1_]);
            }
         }
         for(_loc1_ in this.§>!§)
         {
            if((_loc1_ as §7z§).§%!0§)
            {
               §=!X§.§!'§.objects.§6!v§.removeChild(this.§>!§[_loc1_]);
            }
            else
            {
               §=!X§.§!'§.objects.§6!v§.addChild(this.§>!§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§7z§>) : void
      {
         var _loc2_:§7z§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§=!Z§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §]j§() : new §"7§();
               _loc5_ = §=!X§.§!'§.§7!J§.§&#§(_loc4_.bitmapData);
               (_loc6_ = new §=!Z§(_loc5_)).name = _loc2_.§9!p§;
               _loc6_.x = _loc2_.§&U§;
               _loc6_.y = _loc2_.§`!3§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §=!X§.§!'§.objects.§6!v§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§"<§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§>!§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§=!Z§ = null;
         for each(_loc2_ in this.§"<§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§>!§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
