package §@!;§
{
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%"-§ extends Sprite
   {
      
      private static var §=B§:Boolean = false;
      
      private static const §2![§:String = "Mouse_Cursors";
      
      private static var §^!&§:Sprite;
      
      private static var §@!]§:MovieClip;
      
      private static var §>!u§:String;
      
      private static var §>"6§:String = "";
      
      private static var §=D§:Boolean = false;
       
      
      public function §%"-§()
      {
         super();
      }
      
      public static function §+S§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§>!u§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §>!u§ = "";
         §=D§ = false;
         if(!§=B§ || !§@!]§)
         {
            if(!§5!h§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §@!]§.numChildren)
         {
            §@!]§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §@!]§.getChildByName(param1) as Sprite))
         {
            §@!]§.visible = false;
            Mouse.show();
            return false;
         }
         §>!u§ = param1;
         §@!]§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§>!u§ + "_Up"))
         {
            §=D§ = true;
         }
         if(§=D§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§>!u§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5!h§() : Boolean
      {
         var _loc1_:Class = §8!q§.§2^§(§2![§);
         §@!]§ = new _loc1_();
         if(§@!]§)
         {
            §^!&§.addChild(§@!]§);
            §^!&§.mouseChildren = false;
            §@!]§.mouseEnabled = false;
            §^!&§.mouseEnabled = false;
            §@!]§.enabled = false;
            §@!]§.cacheAsBitmap = true;
         }
         return §@!]§ != null;
      }
      
      public static function §in §() : Boolean
      {
         return §`Y§("_Down");
      }
      
      public static function §5!Q§() : Boolean
      {
         return §`Y§("_Up");
      }
      
      private static function §`Y§(param1:String) : Boolean
      {
         if(!§@!]§ || §>!u§.length < 1 || !§=D§)
         {
            return false;
         }
         var _loc2_:Sprite = §@!]§.getChildByName(§>!u§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§>!u§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§>!u§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§=B§)
         {
            return §^!&§;
         }
         §^!&§ = new Sprite();
         §=B§ = true;
         return §^!&§;
      }
      
      public static function §,!l§(param1:Number, param2:Number) : void
      {
         if(!§=B§ || !§@!]§ || !§@!]§.visible)
         {
            return;
         }
         §^!&§.x = param1;
         §^!&§.y = param2;
      }
      
      public static function §5X§() : void
      {
         if(§@!]§)
         {
            if(§@!]§.visible)
            {
               §>"6§ = §>!u§;
            }
            §+S§("");
         }
      }
      
      public static function §`"%§() : void
      {
         if(§@!]§)
         {
            if(!§@!]§.visible)
            {
               §+S§(§>"6§);
            }
         }
      }
   }
}
