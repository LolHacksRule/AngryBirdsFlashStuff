package §3c§
{
   import §4!S§.§7!o§;
   import §=!<§.§5!U§;
   import §@!#§.Texture;
   import §`L§.§-;§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §0" §
   {
      
      private static const §else§:Class = §6!5§;
      
      private static const §7"1§:Class = §^4§;
      
      protected static var §=!c§:Class;
       
      
      private var §,!b§:Dictionary;
      
      private var §&'§:Dictionary;
      
      public function §0" §()
      {
         this.§,!b§ = new Dictionary();
         this.§&'§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§-;§ = null;
         for each(_loc1_ in this.§,!b§)
         {
            §5!U§.§,!E§.objects.§[!a§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§&'§)
         {
            §5!U§.§,!E§.objects.§[!a§.removeChild(_loc1_);
         }
         this.§,!b§ = new Dictionary();
         this.§&'§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§,!b§)
         {
            if((_loc1_ as §7!o§).§%!E§)
            {
               §5!U§.§,!E§.objects.§[!a§.addChild(this.§,!b§[_loc1_]);
            }
            else
            {
               §5!U§.§,!E§.objects.§[!a§.removeChild(this.§,!b§[_loc1_]);
            }
         }
         for(_loc1_ in this.§&'§)
         {
            if((_loc1_ as §7!o§).§%!E§)
            {
               §5!U§.§,!E§.objects.§[!a§.removeChild(this.§&'§[_loc1_]);
            }
            else
            {
               §5!U§.§,!E§.objects.§[!a§.addChild(this.§&'§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§7!o§>) : void
      {
         var _loc2_:§7!o§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§-;§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §else§() : new §7"1§();
               _loc5_ = §5!U§.§,!E§.§4F§.§`!+§(_loc4_.bitmapData);
               (_loc6_ = new §-;§(_loc5_)).name = _loc2_.§'9§;
               _loc6_.x = _loc2_.§`O§;
               _loc6_.y = _loc2_.§!!h§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §5!U§.§,!E§.objects.§[!a§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§,!b§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§&'§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§-;§ = null;
         for each(_loc2_ in this.§,!b§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§&'§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
