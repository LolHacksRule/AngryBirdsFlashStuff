package §&N§
{
   import §-0§.§^a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §6§ extends Sprite
   {
      
      private static var §"j§:Boolean = false;
      
      private static const §;G§:String = "Mouse_Cursors";
      
      private static var §]!%§:Sprite;
      
      private static var §"i§:MovieClip;
      
      private static var §1%§:String;
      
      private static var §44§:String = "";
      
      private static var §%!L§:Boolean = false;
       
      
      public function §6§()
      {
         super();
      }
      
      public static function §@>§(param1:String) : Boolean
      {
         if(§1%§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §1%§ = "";
         §%!L§ = false;
         if(!§"j§ || !§"i§)
         {
            if(!§4!!§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"i§.numChildren)
         {
            §"i§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §"i§.getChildByName(param1) as Sprite))
         {
            §"i§.visible = false;
            Mouse.show();
            return false;
         }
         §1%§ = param1;
         §"i§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§1%§ + "_Up"))
         {
            §%!L§ = true;
         }
         if(§%!L§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§1%§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §4!!§() : Boolean
      {
         var _loc1_:Class = §^a§.§;x§(§;G§);
         §"i§ = new _loc1_();
         if(§"i§)
         {
            §]!%§.addChild(§"i§);
            §]!%§.mouseChildren = false;
            §"i§.mouseEnabled = false;
            §]!%§.mouseEnabled = false;
            §"i§.enabled = false;
            §"i§.cacheAsBitmap = true;
         }
         return §"i§ != null;
      }
      
      public static function §@!Y§() : Boolean
      {
         return §1!2§("_Down");
      }
      
      public static function §%!@§() : Boolean
      {
         return §1!2§("_Up");
      }
      
      private static function §1!2§(param1:String) : Boolean
      {
         if(!§"i§ || §1%§.length < 1 || !§%!L§)
         {
            return false;
         }
         var _loc2_:Sprite = §"i§.getChildByName(§1%§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§1%§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§1%§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§"j§)
         {
            return §]!%§;
         }
         §]!%§ = new Sprite();
         §"j§ = true;
         return §]!%§;
      }
      
      public static function §8!Y§(param1:Number, param2:Number) : void
      {
         if(!§"j§ || !§"i§ || !§"i§.visible)
         {
            return;
         }
         §]!%§.x = param1;
         §]!%§.y = param2;
      }
      
      public static function §9Q§() : void
      {
         if(§"i§)
         {
            if(§"i§.visible)
            {
               §44§ = §1%§;
            }
            §@>§("");
         }
      }
      
      public static function § g§() : void
      {
         if(§"i§)
         {
            if(!§"i§.visible)
            {
               §@>§(§44§);
            }
         }
      }
   }
}
