package §"p§
{
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`!y§ extends Sprite
   {
      
      private static var §^"$§:Boolean = false;
      
      private static const §"!'§:String = "Mouse_Cursors";
      
      private static var §]Z§:Sprite;
      
      private static var §'P§:MovieClip;
      
      private static var §5!S§:String;
      
      private static var §1@§:String = "";
      
      private static var §[!a§:Boolean = false;
       
      
      public function §`!y§()
      {
         super();
      }
      
      public static function §<^§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§5!S§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §5!S§ = "";
         §[!a§ = false;
         if(!§^"$§ || !§'P§)
         {
            if(!§&!U§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'P§.numChildren)
         {
            §'P§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'P§.getChildByName(param1) as Sprite))
         {
            §'P§.visible = false;
            Mouse.show();
            return false;
         }
         §5!S§ = param1;
         §'P§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§5!S§ + "_Up"))
         {
            §[!a§ = true;
         }
         if(§[!a§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§5!S§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&!U§() : Boolean
      {
         var _loc1_:Class = §!"'§.§%!Q§(§"!'§);
         §'P§ = new _loc1_();
         if(§'P§)
         {
            §]Z§.addChild(§'P§);
            §]Z§.mouseChildren = false;
            §'P§.mouseEnabled = false;
            §]Z§.mouseEnabled = false;
            §'P§.enabled = false;
            §'P§.cacheAsBitmap = true;
         }
         return §'P§ != null;
      }
      
      public static function §%0§() : Boolean
      {
         return §%`§("_Down");
      }
      
      public static function §6>§() : Boolean
      {
         return §%`§("_Up");
      }
      
      private static function §%`§(param1:String) : Boolean
      {
         if(!§'P§ || §5!S§.length < 1 || !§[!a§)
         {
            return false;
         }
         var _loc2_:Sprite = §'P§.getChildByName(§5!S§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§5!S§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§5!S§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§^"$§)
         {
            return §]Z§;
         }
         §]Z§ = new Sprite();
         §^"$§ = true;
         return §]Z§;
      }
      
      public static function §-g§(param1:Number, param2:Number) : void
      {
         if(!§^"$§ || !§'P§ || !§'P§.visible)
         {
            return;
         }
         §]Z§.x = param1;
         §]Z§.y = param2;
      }
      
      public static function §8"3§() : void
      {
         if(§'P§)
         {
            if(§'P§.visible)
            {
               §1@§ = §5!S§;
            }
            §<^§("");
         }
      }
      
      public static function §9!=§() : void
      {
         if(§'P§)
         {
            if(!§'P§.visible)
            {
               §<^§(§1@§);
            }
         }
      }
   }
}
