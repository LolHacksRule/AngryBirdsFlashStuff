package §6`§
{
   import §1U§.§"!V§;
   import §4!S§.Texture;
   import §="$§.§?w§;
   import §^I§.§=!+§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §,!n§
   {
      
      private static const §;! §:Class = §@!p§;
      
      private static const §@I§:Class = §`r§;
      
      protected static var §<!C§:Class;
       
      
      private var §8!h§:Dictionary;
      
      private var §'v§:Dictionary;
      
      public function §,!n§()
      {
         this.§8!h§ = new Dictionary();
         this.§'v§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§=!+§ = null;
         for each(_loc1_ in this.§8!h§)
         {
            §"!V§.§!j§.objects.§@!F§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§'v§)
         {
            §"!V§.§!j§.objects.§@!F§.removeChild(_loc1_);
         }
         this.§8!h§ = new Dictionary();
         this.§'v§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§8!h§)
         {
            if((_loc1_ as §?w§).§""4§)
            {
               §"!V§.§!j§.objects.§@!F§.addChild(this.§8!h§[_loc1_]);
            }
            else
            {
               §"!V§.§!j§.objects.§@!F§.removeChild(this.§8!h§[_loc1_]);
            }
         }
         for(_loc1_ in this.§'v§)
         {
            if((_loc1_ as §?w§).§""4§)
            {
               §"!V§.§!j§.objects.§@!F§.removeChild(this.§'v§[_loc1_]);
            }
            else
            {
               §"!V§.§!j§.objects.§@!F§.addChild(this.§'v§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§?w§>) : void
      {
         var _loc2_:§?w§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§=!+§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §;! §() : new §@I§();
               _loc5_ = §"!V§.§!j§.§>=§.§extends§(_loc4_.bitmapData);
               (_loc6_ = new §=!+§(_loc5_)).name = _loc2_.§7>§;
               _loc6_.x = _loc2_.§>M§;
               _loc6_.y = _loc2_.§2!E§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §"!V§.§!j§.objects.§@!F§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§8!h§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§'v§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§=!+§ = null;
         for each(_loc2_ in this.§8!h§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§'v§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
