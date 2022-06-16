package §1#v§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4"l§ extends Sprite
   {
      
      private static var §9#Q§:Boolean = false;
      
      private static const §@#,§:String = "Mouse_Cursors";
      
      private static var §?![§:Sprite;
      
      private static var §`§:MovieClip;
      
      private static var §@#>§:String;
      
      private static var §8?§:String = "";
      
      private static var §3Y§:Boolean = false;
       
      
      public function §4"l§()
      {
         super();
      }
      
      public static function §+!=§(param1:String) : Boolean
      {
         if(§@#>§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §@#>§ = "";
         §3Y§ = false;
         if(!§9#Q§ || !§`§)
         {
            if(!§&!K§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §`§.numChildren)
         {
            §`§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §`§.getChildByName(param1) as Sprite))
         {
            §`§.visible = false;
            Mouse.show();
            return false;
         }
         §@#>§ = param1;
         §`§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§@#>§ + "_Up"))
         {
            §3Y§ = true;
         }
         if(§3Y§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§@#>§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&!K§() : Boolean
      {
         var _loc1_:Class = §6$A§.§1!m§(§@#,§);
         §`§ = new _loc1_();
         if(§`§)
         {
            §?![§.addChild(§`§);
            §?![§.mouseChildren = false;
            §`§.mouseEnabled = false;
            §?![§.mouseEnabled = false;
            §`§.enabled = false;
            §`§.cacheAsBitmap = true;
         }
         return §`§ != null;
      }
      
      public static function §"!m§() : Boolean
      {
         return §["Z§("_Down");
      }
      
      public static function §3"B§() : Boolean
      {
         return §["Z§("_Up");
      }
      
      private static function §["Z§(param1:String) : Boolean
      {
         if(!§`§ || §@#>§.length < 1 || !§3Y§)
         {
            return false;
         }
         var _loc2_:Sprite = §`§.getChildByName(§@#>§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§@#>§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§@#>§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§9#Q§)
         {
            return §?![§;
         }
         §?![§ = new Sprite();
         §9#Q§ = true;
         return §?![§;
      }
      
      public static function §-!§(param1:Number, param2:Number) : void
      {
         if(!§9#Q§ || !§`§ || !§`§.visible)
         {
            return;
         }
         §?![§.x = param1;
         §?![§.y = param2;
      }
      
      public static function §3"5§() : void
      {
         if(§`§)
         {
            if(§`§.visible)
            {
               §8?§ = §@#>§;
            }
            §+!=§("");
         }
      }
      
      public static function §!"V§() : void
      {
         if(§`§)
         {
            if(!§`§.visible)
            {
               §+!=§(§8?§);
            }
         }
      }
   }
}
