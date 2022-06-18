package §'D§
{
   import §]0§.§%%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §6!L§ extends Sprite
   {
      
      private static var §]l§:Boolean = false;
      
      private static const §[?§:String = "Mouse_Cursors";
      
      private static var §=Y§:Sprite;
      
      private static var §8!8§:MovieClip;
      
      private static var §,f§:String;
      
      private static var §!1§:String = "";
      
      private static var §[§:Boolean = false;
       
      
      public function §6!L§()
      {
         super();
      }
      
      public static function §7v§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§,f§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §,f§ = "";
         §[§ = false;
         if(!§]l§ || !§8!8§)
         {
            if(!§!i§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §8!8§.numChildren)
         {
            §8!8§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §8!8§.getChildByName(param1) as Sprite))
         {
            §8!8§.visible = false;
            Mouse.show();
            return false;
         }
         §,f§ = param1;
         §8!8§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§,f§ + "_Up"))
         {
            §[§ = true;
         }
         if(§[§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§,f§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §!i§() : Boolean
      {
         var _loc1_:Class = §%%§.§in §(§[?§);
         §8!8§ = new _loc1_();
         if(§8!8§)
         {
            §=Y§.addChild(§8!8§);
            §=Y§.mouseChildren = false;
            §8!8§.mouseEnabled = false;
            §=Y§.mouseEnabled = false;
            §8!8§.enabled = false;
            §8!8§.cacheAsBitmap = true;
         }
         return §8!8§ != null;
      }
      
      public static function §!5§() : Boolean
      {
         return §%!T§("_Down");
      }
      
      public static function §&-§() : Boolean
      {
         return §%!T§("_Up");
      }
      
      private static function §%!T§(param1:String) : Boolean
      {
         if(!§8!8§ || §,f§.length < 1 || !§[§)
         {
            return false;
         }
         var _loc2_:Sprite = §8!8§.getChildByName(§,f§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§,f§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§,f§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§]l§)
         {
            return §=Y§;
         }
         §=Y§ = new Sprite();
         §]l§ = true;
         return §=Y§;
      }
      
      public static function §,!'§(param1:Number, param2:Number) : void
      {
         if(!§]l§ || !§8!8§ || !§8!8§.visible)
         {
            return;
         }
         §=Y§.x = param1;
         §=Y§.y = param2;
      }
      
      public static function §9_§() : void
      {
         if(§8!8§)
         {
            if(§8!8§.visible)
            {
               §!1§ = §,f§;
            }
            §7v§("");
         }
      }
      
      public static function §8^§() : void
      {
         if(§8!8§)
         {
            if(!§8!8§.visible)
            {
               §7v§(§!1§);
            }
         }
      }
   }
}
