package §=<§
{
   import §7!d§.§'!5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §&5§ extends Sprite
   {
      
      private static var §2!8§:Boolean = false;
      
      private static const §>!2§:String = "Mouse_Cursors";
      
      private static var §8=§:Sprite;
      
      private static var §7d§:MovieClip;
      
      private static var §7!S§:String;
      
      private static var §5!T§:String = "";
      
      private static var §8![§:Boolean = false;
       
      
      public function §&5§()
      {
         super();
      }
      
      public static function §8!K§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§7!S§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §7!S§ = "";
         §8![§ = false;
         if(!§2!8§ || !§7d§)
         {
            if(!§!!2§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §7d§.numChildren)
         {
            §7d§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §7d§.getChildByName(param1) as Sprite))
         {
            §7d§.visible = false;
            Mouse.show();
            return false;
         }
         §7!S§ = param1;
         §7d§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§7!S§ + "_Up"))
         {
            §8![§ = true;
         }
         if(§8![§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§7!S§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §!!2§() : Boolean
      {
         var _loc1_:Class = §'!5§.§-!P§(§>!2§);
         §7d§ = new _loc1_();
         if(§7d§)
         {
            §8=§.addChild(§7d§);
            §8=§.mouseChildren = false;
            §7d§.mouseEnabled = false;
            §8=§.mouseEnabled = false;
            §7d§.enabled = false;
            §7d§.cacheAsBitmap = true;
         }
         return §7d§ != null;
      }
      
      public static function §?!h§() : Boolean
      {
         return §@!5§("_Down");
      }
      
      public static function §'e§() : Boolean
      {
         return §@!5§("_Up");
      }
      
      private static function §@!5§(param1:String) : Boolean
      {
         if(!§7d§ || §7!S§.length < 1 || !§8![§)
         {
            return false;
         }
         var _loc2_:Sprite = §7d§.getChildByName(§7!S§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§7!S§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§7!S§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§2!8§)
         {
            return §8=§;
         }
         §8=§ = new Sprite();
         §2!8§ = true;
         return §8=§;
      }
      
      public static function § '§(param1:Number, param2:Number) : void
      {
         if(!§2!8§ || !§7d§ || !§7d§.visible)
         {
            return;
         }
         §8=§.x = param1;
         §8=§.y = param2;
      }
      
      public static function §1!b§() : void
      {
         if(§7d§)
         {
            if(§7d§.visible)
            {
               §5!T§ = §7!S§;
            }
            §8!K§("");
         }
      }
      
      public static function §6c§() : void
      {
         if(§7d§)
         {
            if(!§7d§.visible)
            {
               §8!K§(§5!T§);
            }
         }
      }
   }
}
