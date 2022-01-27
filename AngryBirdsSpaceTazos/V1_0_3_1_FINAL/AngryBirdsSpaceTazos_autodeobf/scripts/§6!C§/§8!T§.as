package §6!C§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §8!T§ extends Sprite
   {
      
      private static var §9"8§:Boolean = false;
      
      private static const §';§:String = "Mouse_Cursors";
      
      private static var §!"C§:Sprite;
      
      private static var §0K§:MovieClip;
      
      private static var §5"E§:String;
      
      private static var §^!q§:String = "";
      
      private static var §9">§:Boolean = false;
       
      
      public function §8!T§()
      {
         super();
      }
      
      public static function §else §(param1:String) : Boolean
      {
         if(§5"E§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §5"E§ = "";
         §9">§ = false;
         if(!§9"8§ || !§0K§)
         {
            if(!§&D§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §0K§.numChildren)
         {
            §0K§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §0K§.getChildByName(param1) as Sprite))
         {
            §0K§.visible = false;
            Mouse.show();
            return false;
         }
         §5"E§ = param1;
         §0K§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§5"E§ + "_Up"))
         {
            §9">§ = true;
         }
         if(§9">§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§5"E§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&D§() : Boolean
      {
         if(§0K§)
         {
            §!"C§.addChild(§0K§);
            §!"C§.mouseChildren = false;
            §0K§.mouseEnabled = false;
            §!"C§.mouseEnabled = false;
            §0K§.enabled = false;
            §0K§.cacheAsBitmap = true;
         }
         return §0K§ != null;
      }
      
      public static function §7"B§() : Boolean
      {
         return §39§("_Down");
      }
      
      public static function §]z§() : Boolean
      {
         return §39§("_Up");
      }
      
      private static function §39§(param1:String) : Boolean
      {
         if(!§0K§ || §5"E§.length < 1 || !§9">§)
         {
            return false;
         }
         var _loc2_:Sprite = §0K§.getChildByName(§5"E§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§5"E§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§5"E§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§9"8§)
         {
            return §!"C§;
         }
         §!"C§ = new Sprite();
         §9"8§ = true;
         return §!"C§;
      }
      
      public static function §9"G§(param1:Number, param2:Number) : void
      {
         if(!§9"8§ || !§0K§ || !§0K§.visible)
         {
            return;
         }
         §!"C§.x = param1;
         §!"C§.y = param2;
      }
      
      public static function §>"@§() : void
      {
         if(§0K§)
         {
            if(§0K§.visible)
            {
               §^!q§ = §5"E§;
            }
         }
      }
      
      public static function §2%§() : void
      {
         if(§0K§)
         {
            if(§0K§.visible)
            {
            }
         }
      }
   }
}
