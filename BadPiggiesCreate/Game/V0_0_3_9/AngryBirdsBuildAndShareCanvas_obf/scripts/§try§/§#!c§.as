package §try§
{
   import §&"8§.§]T§;
   import §3!S§.§%s§;
   import §7q§.§0!§;
   import §8Y§.Texture;
   import flash.display.Bitmap;
   import flash.utils.Dictionary;
   
   public class §#!c§
   {
      
      private static const §@!@§:Class = §4%§;
      
      private static const §-!e§:Class = §"E§;
      
      protected static var §1!b§:Class;
       
      
      private var §92§:Dictionary;
      
      private var §;U§:Dictionary;
      
      public function §#!c§()
      {
         this.§92§ = new Dictionary();
         this.§;U§ = new Dictionary();
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:§0!§ = null;
         for each(_loc1_ in this.§92§)
         {
            §%s§.§`!f§.objects.§8!T§.removeChild(_loc1_);
         }
         for each(_loc1_ in this.§;U§)
         {
            §%s§.§`!f§.objects.§8!T§.removeChild(_loc1_);
         }
         this.§92§ = new Dictionary();
         this.§;U§ = new Dictionary();
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§92§)
         {
            if((_loc1_ as §]T§).§;m§)
            {
               §%s§.§`!f§.objects.§8!T§.addChild(this.§92§[_loc1_]);
            }
            else
            {
               §%s§.§`!f§.objects.§8!T§.removeChild(this.§92§[_loc1_]);
            }
         }
         for(_loc1_ in this.§;U§)
         {
            if((_loc1_ as §]T§).§;m§)
            {
               §%s§.§`!f§.objects.§8!T§.removeChild(this.§;U§[_loc1_]);
            }
            else
            {
               §%s§.§`!f§.objects.§8!T§.addChild(this.§;U§[_loc1_]);
            }
         }
      }
      
      public function init(param1:Vector.<§]T§>) : void
      {
         var _loc2_:§]T§ = null;
         var _loc3_:int = 0;
         var _loc4_:Bitmap = null;
         var _loc5_:Texture = null;
         var _loc6_:§0!§ = null;
         this.clear();
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            while(_loc3_ < 2)
            {
               _loc4_ = _loc3_ == 0 ? new §@!@§() : new §-!e§();
               _loc5_ = §%s§.§`!f§.§20§.§>!d§(_loc4_.bitmapData);
               (_loc6_ = new §0!§(_loc5_)).name = _loc2_.§>?§;
               _loc6_.x = _loc2_.§9!-§;
               _loc6_.y = _loc2_.§8=§;
               _loc6_.pivotX = -_loc6_.width / 2;
               _loc6_.pivotY = -_loc6_.height / 2;
               §%s§.§`!f§.objects.§8!T§.addChild(_loc6_);
               if(_loc3_ == 0)
               {
                  this.§92§[_loc2_] = _loc6_;
               }
               else
               {
                  this.§;U§[_loc2_] = _loc6_;
               }
               _loc6_.visible = false;
               _loc3_++;
            }
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:§0!§ = null;
         for each(_loc2_ in this.§92§)
         {
            _loc2_.visible = param1;
         }
         for each(_loc2_ in this.§;U§)
         {
            _loc2_.visible = param1;
         }
      }
   }
}
