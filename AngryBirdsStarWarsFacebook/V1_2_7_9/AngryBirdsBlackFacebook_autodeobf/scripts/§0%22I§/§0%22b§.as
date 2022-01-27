package §0"I§
{
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §0"b§ extends Sprite
   {
      
      private static var §+"P§:Boolean = false;
      
      private static const §,"N§:String = "Mouse_Cursors";
      
      private static var §+"0§:Sprite;
      
      private static var §6P§:MovieClip;
      
      private static var §,!f§:String;
      
      private static var §'"Q§:String = "";
      
      private static var §8Y§:Boolean = false;
       
      
      public function §0"b§()
      {
         super();
      }
      
      public static function §`B§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§,!f§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §,!f§ = "";
         §8Y§ = false;
         if(!§+"P§ || !§6P§)
         {
            if(!§""z§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §6P§.numChildren)
         {
            §6P§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §6P§.getChildByName(param1) as Sprite))
         {
            §6P§.visible = false;
            Mouse.show();
            return false;
         }
         §,!f§ = param1;
         §6P§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§,!f§ + "_Up"))
         {
            §8Y§ = true;
         }
         if(§8Y§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§,!f§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §""z§() : Boolean
      {
         var _loc1_:Class = §5"]§.§4!K§(§,"N§);
         §6P§ = new _loc1_();
         if(§6P§)
         {
            §+"0§.addChild(§6P§);
            §+"0§.mouseChildren = false;
            §6P§.mouseEnabled = false;
            §+"0§.mouseEnabled = false;
            §6P§.enabled = false;
            §6P§.cacheAsBitmap = true;
         }
         return §6P§ != null;
      }
      
      public static function §0#,§() : Boolean
      {
         return §'">§("_Down");
      }
      
      public static function §;!p§() : Boolean
      {
         return §'">§("_Up");
      }
      
      private static function §'">§(param1:String) : Boolean
      {
         if(!§6P§ || §,!f§.length < 1 || !§8Y§)
         {
            return false;
         }
         var _loc2_:Sprite = §6P§.getChildByName(§,!f§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§,!f§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§,!f§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§+"P§)
         {
            return §+"0§;
         }
         §+"0§ = new Sprite();
         §+"P§ = true;
         return §+"0§;
      }
      
      public static function §-#,§(param1:Number, param2:Number) : void
      {
         if(!§+"P§ || !§6P§ || !§6P§.visible)
         {
            return;
         }
         §+"0§.x = param1;
         §+"0§.y = param2;
      }
      
      public static function §;&§() : void
      {
         if(§6P§)
         {
            if(§6P§.visible)
            {
               §'"Q§ = §,!f§;
            }
            §`B§("");
         }
      }
      
      public static function §&"i§() : void
      {
         if(§6P§)
         {
            if(!§6P§.visible)
            {
               §`B§(§'"Q§);
            }
         }
      }
   }
}
