package §#"3§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §2#>§ extends Sprite
   {
      
      private static var §2!Q§:Boolean = false;
      
      private static const §1"!§:String = "Mouse_Cursors";
      
      private static var §`"R§:Sprite;
      
      private static var §=#;§:MovieClip;
      
      private static var §8"M§:String;
      
      private static var §`!2§:String = "";
      
      private static var §"R§:Boolean = false;
       
      
      public function §2#>§()
      {
         super();
      }
      
      public static function §;!j§(param1:String) : Boolean
      {
         if(§8"M§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §8"M§ = "";
         §"R§ = false;
         if(!§2!Q§ || !§=#;§)
         {
            if(!§&"]§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §=#;§.numChildren)
         {
            §=#;§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §=#;§.getChildByName(param1) as Sprite))
         {
            §=#;§.visible = false;
            Mouse.show();
            return false;
         }
         §8"M§ = param1;
         §=#;§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§8"M§ + "_Up"))
         {
            §"R§ = true;
         }
         if(§"R§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§8"M§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&"]§() : Boolean
      {
         var _loc1_:Class = §=@§.§9!x§(§1"!§);
         §=#;§ = new _loc1_();
         if(§=#;§)
         {
            §`"R§.addChild(§=#;§);
            §`"R§.mouseChildren = false;
            §=#;§.mouseEnabled = false;
            §`"R§.mouseEnabled = false;
            §=#;§.enabled = false;
            §=#;§.cacheAsBitmap = true;
         }
         return §=#;§ != null;
      }
      
      public static function §28§() : Boolean
      {
         return §97§("_Down");
      }
      
      public static function §-`§() : Boolean
      {
         return §97§("_Up");
      }
      
      private static function §97§(param1:String) : Boolean
      {
         if(!§=#;§ || §8"M§.length < 1 || !§"R§)
         {
            return false;
         }
         var _loc2_:Sprite = §=#;§.getChildByName(§8"M§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§8"M§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§8"M§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§2!Q§)
         {
            return §`"R§;
         }
         §`"R§ = new Sprite();
         §2!Q§ = true;
         return §`"R§;
      }
      
      public static function §#"U§(param1:Number, param2:Number) : void
      {
         if(!§2!Q§ || !§=#;§ || !§=#;§.visible)
         {
            return;
         }
         §`"R§.x = param1;
         §`"R§.y = param2;
      }
      
      public static function §=!b§() : void
      {
         if(§=#;§)
         {
            if(§=#;§.visible)
            {
               §`!2§ = §8"M§;
            }
            §;!j§("");
         }
      }
      
      public static function §@!r§() : void
      {
         if(§=#;§)
         {
            if(!§=#;§.visible)
            {
               §;!j§(§`!2§);
            }
         }
      }
   }
}
