package §!4§
{
   import §[-§.§#!,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%!]§ extends Sprite
   {
      
      private static var §[&§:Boolean = false;
      
      private static const §0U§:String = "Mouse_Cursors";
      
      private static var §4!L§:Sprite;
      
      private static var §<V§:MovieClip;
      
      private static var §2-§:String;
      
      private static var §,S§:String = "";
      
      private static var §-!&§:Boolean = false;
       
      
      public function §%!]§()
      {
         super();
      }
      
      public static function §0!P§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§2-§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §2-§ = "";
         §-!&§ = false;
         if(!§[&§ || !§<V§)
         {
            if(!§7#§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §<V§.numChildren)
         {
            §<V§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §<V§.getChildByName(param1) as Sprite))
         {
            §<V§.visible = false;
            Mouse.show();
            return false;
         }
         §2-§ = param1;
         §<V§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§2-§ + "_Up"))
         {
            §-!&§ = true;
         }
         if(§-!&§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§2-§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §7#§() : Boolean
      {
         var _loc1_:Class = §#!,§.§-<§(§0U§);
         §<V§ = new _loc1_();
         if(§<V§)
         {
            §4!L§.addChild(§<V§);
            §4!L§.mouseChildren = false;
            §<V§.mouseEnabled = false;
            §4!L§.mouseEnabled = false;
            §<V§.enabled = false;
            §<V§.cacheAsBitmap = true;
         }
         return §<V§ != null;
      }
      
      public static function §;<§() : Boolean
      {
         return §0!=§("_Down");
      }
      
      public static function §@@§() : Boolean
      {
         return §0!=§("_Up");
      }
      
      private static function §0!=§(param1:String) : Boolean
      {
         if(!§<V§ || §2-§.length < 1 || !§-!&§)
         {
            return false;
         }
         var _loc2_:Sprite = §<V§.getChildByName(§2-§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§2-§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§2-§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§[&§)
         {
            return §4!L§;
         }
         §4!L§ = new Sprite();
         §[&§ = true;
         return §4!L§;
      }
      
      public static function §4>§(param1:Number, param2:Number) : void
      {
         if(!§[&§ || !§<V§ || !§<V§.visible)
         {
            return;
         }
         §4!L§.x = param1;
         §4!L§.y = param2;
      }
      
      public static function §2>§() : void
      {
         if(§<V§)
         {
            if(§<V§.visible)
            {
               §,S§ = §2-§;
            }
            §0!P§("");
         }
      }
      
      public static function §4t§() : void
      {
         if(§<V§)
         {
            if(!§<V§.visible)
            {
               §0!P§(§,S§);
            }
         }
      }
   }
}
