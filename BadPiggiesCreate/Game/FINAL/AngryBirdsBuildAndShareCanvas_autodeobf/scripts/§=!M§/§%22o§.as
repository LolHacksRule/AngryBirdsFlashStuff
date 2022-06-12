package §=!M§
{
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §"o§ extends Sprite
   {
      
      private static var §3>§:Boolean = false;
      
      private static const §;!3§:String = "Mouse_Cursors";
      
      private static var §#"8§:Sprite;
      
      private static var §=D§:MovieClip;
      
      private static var §7D§:String;
      
      private static var §]!e§:String = "";
      
      private static var §-!r§:Boolean = false;
       
      
      public function §"o§()
      {
         super();
      }
      
      public static function §^!+§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§7D§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §7D§ = "";
         §-!r§ = false;
         if(!§3>§ || !§=D§)
         {
            if(!§5B§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §=D§.numChildren)
         {
            §=D§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §=D§.getChildByName(param1) as Sprite))
         {
            §=D§.visible = false;
            Mouse.show();
            return false;
         }
         §7D§ = param1;
         §=D§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§7D§ + "_Up"))
         {
            §-!r§ = true;
         }
         if(§-!r§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§7D§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5B§() : Boolean
      {
         var _loc1_:Class = §>!]§.§1!8§(§;!3§);
         §=D§ = new _loc1_();
         if(§=D§)
         {
            §#"8§.addChild(§=D§);
            §#"8§.mouseChildren = false;
            §=D§.mouseEnabled = false;
            §#"8§.mouseEnabled = false;
            §=D§.enabled = false;
            §=D§.cacheAsBitmap = true;
         }
         return §=D§ != null;
      }
      
      public static function §2!a§() : Boolean
      {
         return §6!H§("_Down");
      }
      
      public static function §[!?§() : Boolean
      {
         return §6!H§("_Up");
      }
      
      private static function §6!H§(param1:String) : Boolean
      {
         if(!§=D§ || §7D§.length < 1 || !§-!r§)
         {
            return false;
         }
         var _loc2_:Sprite = §=D§.getChildByName(§7D§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§7D§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§7D§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3>§)
         {
            return §#"8§;
         }
         §#"8§ = new Sprite();
         §3>§ = true;
         return §#"8§;
      }
      
      public static function §-P§(param1:Number, param2:Number) : void
      {
         if(!§3>§ || !§=D§ || !§=D§.visible)
         {
            return;
         }
         §#"8§.x = param1;
         §#"8§.y = param2;
      }
      
      public static function §9$§() : void
      {
         if(§=D§)
         {
            if(§=D§.visible)
            {
               §]!e§ = §7D§;
            }
            §^!+§("");
         }
      }
      
      public static function §'X§() : void
      {
         if(§=D§)
         {
            if(!§=D§.visible)
            {
               §^!+§(§]!e§);
            }
         }
      }
   }
}
