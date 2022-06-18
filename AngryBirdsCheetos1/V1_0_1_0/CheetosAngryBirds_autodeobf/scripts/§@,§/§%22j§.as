package §@,§
{
   import §0v§.§-'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §"j§ extends Sprite
   {
      
      private static var §;G§:Boolean = false;
      
      private static const §]!%§:String = "Mouse_Cursors";
      
      private static var §"i§:Sprite;
      
      private static var §1%§:MovieClip;
      
      private static var §44§:String;
      
      private static var §%!L§:String = "";
      
      private static var §@>§:Boolean = false;
       
      
      public function §"j§()
      {
         super();
      }
      
      public static function §4!!§(param1:String) : Boolean
      {
         if(§44§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §44§ = "";
         §@>§ = false;
         if(!§;G§ || !§1%§)
         {
            if(!§@!Y§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §1%§.numChildren)
         {
            §1%§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §1%§.getChildByName(param1) as Sprite))
         {
            §1%§.visible = false;
            Mouse.show();
            return false;
         }
         §44§ = param1;
         §1%§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§44§ + "_Up"))
         {
            §@>§ = true;
         }
         if(§@>§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§44§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@!Y§() : Boolean
      {
         var _loc1_:Class = §-'§.§]`§(§]!%§);
         §1%§ = new _loc1_();
         if(§1%§)
         {
            §"i§.addChild(§1%§);
            §"i§.mouseChildren = false;
            §1%§.mouseEnabled = false;
            §"i§.mouseEnabled = false;
            §1%§.enabled = false;
            §1%§.cacheAsBitmap = true;
         }
         return §1%§ != null;
      }
      
      public static function §%!@§() : Boolean
      {
         return §8!Y§("_Down");
      }
      
      public static function §1!2§() : Boolean
      {
         return §8!Y§("_Up");
      }
      
      private static function §8!Y§(param1:String) : Boolean
      {
         if(!§1%§ || §44§.length < 1 || !§@>§)
         {
            return false;
         }
         var _loc2_:Sprite = §1%§.getChildByName(§44§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§44§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§44§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§;G§)
         {
            return §"i§;
         }
         §"i§ = new Sprite();
         §;G§ = true;
         return §"i§;
      }
      
      public static function §9Q§(param1:Number, param2:Number) : void
      {
         if(!§;G§ || !§1%§ || !§1%§.visible)
         {
            return;
         }
         §"i§.x = param1;
         §"i§.y = param2;
      }
      
      public static function § g§() : void
      {
         if(§1%§)
         {
            if(§1%§.visible)
            {
               §%!L§ = §44§;
            }
            §4!!§("");
         }
      }
      
      public static function §0l§() : void
      {
         if(§1%§)
         {
            if(!§1%§.visible)
            {
               §4!!§(§%!L§);
            }
         }
      }
   }
}
