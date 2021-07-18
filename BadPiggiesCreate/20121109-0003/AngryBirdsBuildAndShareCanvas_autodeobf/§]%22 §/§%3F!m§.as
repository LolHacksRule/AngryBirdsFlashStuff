package §]" §
{
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §;" §.§7!9§;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §?!m§
   {
      
      private static const § !5§:Class = §35§;
      
      private static const §"n§:Class = §>h§;
      
      protected static var §-8§:Class;
       
      
      private var § else§:Dictionary;
      
      private var §6!&§:Dictionary;
      
      public function §?!m§()
      {
         this.§ else§ = new Dictionary();
         this.§6!&§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§7"#§ = null;
         for each(_loc1_ in this.§ else§)
         {
            §'_§.§=M§.objects.§`z§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§6!&§)
         {
            §'_§.§=M§.objects.§`z§.removeChild(_loc1_);
         }
         this.§ else§ = new Dictionary();
         this.§6!&§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§ else§)
         {
            if((_loc1_ as §7!9§).§!9§)
            {
               §'_§.§=M§.objects.§`z§.addChild(this.§ else§[_loc1_]);
            }
            else
            {
               §'_§.§=M§.objects.§`z§.removeChild(this.§ else§[_loc1_]);
            }
         }
         for(_loc1_ in this.§6!&§)
         {
            if((_loc1_ as §7!9§).§!9§)
            {
               §'_§.§=M§.objects.§`z§.removeChild(this.§6!&§[_loc1_]);
            }
            else
            {
               §'_§.§=M§.objects.§`z§.addChild(this.§6!&§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§7!9§>) : void
      {
         var _loc2_:§7!9§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§7"#§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new § !5§() : new §"n§();
               _loc5_ = §'_§.§=M§.§8=§.§%N§(_loc4_.bitmapData);
               (_loc6_ = new §7"#§(_loc5_)).name = _loc2_.§&9§;
               _loc6_.x = _loc2_.§6!o§;
               _loc6_.y = _loc2_.§6!e§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §'_§.§=M§.objects.§`z§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§ else§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§6!&§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§7"#§ = null;
         for each(_loc2_ in this.§ else§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§6!&§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
