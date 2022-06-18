package §7!P§
{
   import §^q§.§8,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §[!1§ extends Sprite
   {
      
      private static var §=!M§:Boolean = false;
      
      private static const §%M§:String = "Mouse_Cursors";
      
      private static var §89§:Sprite;
      
      private static var §;! §:MovieClip;
      
      private static var §#%§:String;
      
      private static var §'W§:String = "";
      
      private static var §++§:Boolean = false;
       
      
      public function §[!1§()
      {
         super();
      }
      
      public static function §[_§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§#%§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §#%§ = "";
         §++§ = false;
         if(!§=!M§ || !§;! §)
         {
            if(!§%!b§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §;! §.numChildren)
         {
            §;! §.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §;! §.getChildByName(param1) as Sprite))
         {
            §;! §.visible = false;
            Mouse.show();
            return false;
         }
         §#%§ = param1;
         §;! §.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§#%§ + "_Up"))
         {
            §++§ = true;
         }
         if(§++§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§#%§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §%!b§() : Boolean
      {
         var _loc1_:Class = §8,§.§8X§(§%M§);
         §;! § = new _loc1_();
         if(§;! §)
         {
            §89§.addChild(§;! §);
            §89§.mouseChildren = false;
            §;! §.mouseEnabled = false;
            §89§.mouseEnabled = false;
            §;! §.enabled = false;
            §;! §.cacheAsBitmap = true;
         }
         return §;! § != null;
      }
      
      public static function §5!@§() : Boolean
      {
         return §1!K§("_Down");
      }
      
      public static function §"k§() : Boolean
      {
         return §1!K§("_Up");
      }
      
      private static function §1!K§(param1:String) : Boolean
      {
         if(!§;! § || §#%§.length < 1 || !§++§)
         {
            return false;
         }
         var _loc2_:Sprite = §;! §.getChildByName(§#%§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§#%§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§#%§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§=!M§)
         {
            return §89§;
         }
         §89§ = new Sprite();
         §=!M§ = true;
         return §89§;
      }
      
      public static function §'o§(param1:Number, param2:Number) : void
      {
         if(!§=!M§ || !§;! § || !§;! §.visible)
         {
            return;
         }
         §89§.x = param1;
         §89§.y = param2;
      }
      
      public static function §2n§() : void
      {
         if(§;! §)
         {
            if(§;! §.visible)
            {
               §'W§ = §#%§;
            }
            §[_§("");
         }
      }
      
      public static function §&!Q§() : void
      {
         if(§;! §)
         {
            if(!§;! §.visible)
            {
               §[_§(§'W§);
            }
         }
      }
   }
}
