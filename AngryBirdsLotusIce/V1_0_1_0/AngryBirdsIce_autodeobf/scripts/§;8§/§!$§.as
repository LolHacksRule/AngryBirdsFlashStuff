package §;8§
{
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §!$§ extends Sprite
   {
      
      private static var §;j§:Boolean = false;
      
      private static const § !4§:String = "Mouse_Cursors";
      
      private static var §6`§:Sprite;
      
      private static var §#!>§:MovieClip;
      
      private static var §5>§:String;
      
      private static var §6!;§:String = "";
      
      private static var §^9§:Boolean = false;
       
      
      public function §!$§()
      {
         super();
      }
      
      public static function §`T§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§5>§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §5>§ = "";
         §^9§ = false;
         if(!§;j§ || !§#!>§)
         {
            if(!§&j§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §#!>§.numChildren)
         {
            §#!>§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §#!>§.getChildByName(param1) as Sprite))
         {
            §#!>§.visible = false;
            Mouse.show();
            return false;
         }
         §5>§ = param1;
         §#!>§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§5>§ + "_Up"))
         {
            §^9§ = true;
         }
         if(§^9§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§5>§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&j§() : Boolean
      {
         var _loc1_:Class = §>D§.§`C§(§ !4§);
         §#!>§ = new _loc1_();
         if(§#!>§)
         {
            §6`§.addChild(§#!>§);
            §6`§.mouseChildren = false;
            §#!>§.mouseEnabled = false;
            §6`§.mouseEnabled = false;
            §#!>§.enabled = false;
            §#!>§.cacheAsBitmap = true;
         }
         return §#!>§ != null;
      }
      
      public static function §"r§() : Boolean
      {
         return §4!8§("_Down");
      }
      
      public static function §`?§() : Boolean
      {
         return §4!8§("_Up");
      }
      
      private static function §4!8§(param1:String) : Boolean
      {
         if(!§#!>§ || §5>§.length < 1 || !§^9§)
         {
            return false;
         }
         var _loc2_:Sprite = §#!>§.getChildByName(§5>§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§5>§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§5>§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§;j§)
         {
            return §6`§;
         }
         §6`§ = new Sprite();
         §;j§ = true;
         return §6`§;
      }
      
      public static function §`u§(param1:Number, param2:Number) : void
      {
         if(!§;j§ || !§#!>§ || !§#!>§.visible)
         {
            return;
         }
         §6`§.x = param1;
         §6`§.y = param2;
      }
      
      public static function §31§() : void
      {
         if(§#!>§)
         {
            if(§#!>§.visible)
            {
               §6!;§ = §5>§;
            }
            §`T§("");
         }
      }
      
      public static function §8,§() : void
      {
         if(§#!>§)
         {
            if(!§#!>§.visible)
            {
               §`T§(§6!;§);
            }
         }
      }
   }
}
