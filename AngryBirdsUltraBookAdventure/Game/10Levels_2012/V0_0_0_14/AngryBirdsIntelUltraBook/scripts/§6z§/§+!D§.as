package §6z§
{
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §+!D§ extends Sprite
   {
      
      private static var §6!9§:Boolean = false;
      
      private static const §^!`§:String = "Mouse_Cursors";
      
      private static var §;G§:Sprite;
      
      private static var §'b§:MovieClip;
      
      private static var §&!o§:String;
      
      private static var §!!O§:String = "";
      
      private static var §%z§:Boolean = false;
       
      
      public function §+!D§()
      {
         super();
      }
      
      public static function §,!=§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§&!o§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §&!o§ = "";
         §%z§ = false;
         if(!§6!9§ || !§'b§)
         {
            if(!§@'§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'b§.numChildren)
         {
            §'b§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'b§.getChildByName(param1) as Sprite))
         {
            §'b§.visible = false;
            Mouse.show();
            return false;
         }
         §&!o§ = param1;
         §'b§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§&!o§ + "_Up"))
         {
            §%z§ = true;
         }
         if(§%z§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§&!o§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@'§() : Boolean
      {
         var _loc1_:Class = §9!N§.§0!k§(§^!`§);
         §'b§ = new _loc1_();
         if(§'b§)
         {
            §;G§.addChild(§'b§);
            §;G§.mouseChildren = false;
            §'b§.mouseEnabled = false;
            §;G§.mouseEnabled = false;
            §'b§.enabled = false;
            §'b§.cacheAsBitmap = true;
         }
         return §'b§ != null;
      }
      
      public static function §,3§() : Boolean
      {
         return §53§("_Down");
      }
      
      public static function §&!X§() : Boolean
      {
         return §53§("_Up");
      }
      
      private static function §53§(param1:String) : Boolean
      {
         if(!§'b§ || §&!o§.length < 1 || !§%z§)
         {
            return false;
         }
         var _loc2_:Sprite = §'b§.getChildByName(§&!o§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§&!o§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§&!o§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§6!9§)
         {
            return §;G§;
         }
         §;G§ = new Sprite();
         §6!9§ = true;
         return §;G§;
      }
      
      public static function §&§(param1:Number, param2:Number) : void
      {
         if(!§6!9§ || !§'b§ || !§'b§.visible)
         {
            return;
         }
         §;G§.x = param1;
         §;G§.y = param2;
      }
      
      public static function §&!^§() : void
      {
         if(§'b§)
         {
            if(§'b§.visible)
            {
               §!!O§ = §&!o§;
            }
            §,!=§("");
         }
      }
      
      public static function §-A§() : void
      {
         if(§'b§)
         {
            if(!§'b§.visible)
            {
               §,!=§(§!!O§);
            }
         }
      }
   }
}
