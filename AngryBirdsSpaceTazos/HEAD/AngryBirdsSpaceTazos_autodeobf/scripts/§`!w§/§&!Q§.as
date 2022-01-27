package §`!w§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §&!Q§ extends Sprite
   {
      
      private static var §'=§:Boolean = false;
      
      private static const §?!B§:String = "Mouse_Cursors";
      
      private static var §>p§:Sprite;
      
      private static var §&!R§:MovieClip;
      
      private static var §@!j§:String;
      
      private static var §#"7§:String = "";
      
      private static var §0§:Boolean = false;
       
      
      public function §&!Q§()
      {
         super();
      }
      
      public static function §96§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§@!j§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §@!j§ = "";
         §0§ = false;
         if(!§'=§ || !§&!R§)
         {
            if(!§?!e§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §&!R§.numChildren)
         {
            §&!R§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §&!R§.getChildByName(param1) as Sprite))
         {
            §&!R§.visible = false;
            Mouse.show();
            return false;
         }
         §@!j§ = param1;
         §&!R§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§@!j§ + "_Up"))
         {
            §0§ = true;
         }
         if(§0§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§@!j§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §?!e§() : Boolean
      {
         if(§&!R§)
         {
            §>p§.addChild(§&!R§);
            §>p§.mouseChildren = false;
            §&!R§.mouseEnabled = false;
            §>p§.mouseEnabled = false;
            §&!R§.enabled = false;
            §&!R§.cacheAsBitmap = true;
         }
         return §&!R§ != null;
      }
      
      public static function §!""§() : Boolean
      {
         return §7[§("_Down");
      }
      
      public static function §2'§() : Boolean
      {
         return §7[§("_Up");
      }
      
      private static function §7[§(param1:String) : Boolean
      {
         if(!§&!R§ || §@!j§.length < 1 || !§0§)
         {
            return false;
         }
         var _loc2_:Sprite = §&!R§.getChildByName(§@!j§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§@!j§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§@!j§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§'=§)
         {
            return §>p§;
         }
         §>p§ = new Sprite();
         §'=§ = true;
         return §>p§;
      }
      
      public static function §]"§(param1:Number, param2:Number) : void
      {
         if(!§'=§ || !§&!R§ || !§&!R§.visible)
         {
            return;
         }
         §>p§.x = param1;
         §>p§.y = param2;
      }
      
      public static function §0"G§() : void
      {
         if(§&!R§)
         {
            if(§&!R§.visible)
            {
               §#"7§ = §@!j§;
            }
         }
      }
      
      public static function §9?§() : void
      {
         if(§&!R§)
         {
            if(§&!R§.visible)
            {
            }
         }
      }
   }
}
