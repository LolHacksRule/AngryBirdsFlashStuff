package §_-0BH§
{
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-Hy§ extends Sprite
   {
      
      private static var §_-05Q§:Boolean = false;
      
      private static const §_-0s§:String = "Mouse_Cursors";
      
      private static var §_-xq§:Sprite;
      
      private static var §_-ES§:MovieClip;
      
      private static var §_-08j§:String;
      
      private static var §_-0AW§:String = "";
      
      private static var §_-NJ§:Boolean = false;
       
      
      public function §_-Hy§()
      {
         super();
      }
      
      public static function §_-Ru§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§_-08j§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-08j§ = "";
         §_-NJ§ = false;
         if(!§_-05Q§ || !§_-ES§)
         {
            if(!§_-kM§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-ES§.numChildren)
         {
            §_-ES§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §_-ES§.getChildByName(param1) as Sprite))
         {
            §_-ES§.visible = false;
            Mouse.show();
            return false;
         }
         §_-08j§ = param1;
         §_-ES§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-08j§ + "_Up"))
         {
            §_-NJ§ = true;
         }
         if(§_-NJ§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-08j§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-kM§() : Boolean
      {
         var _loc1_:Class = §_-Fc§.§_-YE§(§_-0s§);
         §_-ES§ = new _loc1_();
         if(§_-ES§)
         {
            §_-xq§.addChild(§_-ES§);
            §_-xq§.mouseChildren = false;
            §_-ES§.mouseEnabled = false;
            §_-xq§.mouseEnabled = false;
            §_-ES§.enabled = false;
            §_-ES§.cacheAsBitmap = true;
         }
         return §_-ES§ != null;
      }
      
      public static function §_-7h§() : Boolean
      {
         return §_-uR§("_Down");
      }
      
      public static function §_-6Z§() : Boolean
      {
         return §_-uR§("_Up");
      }
      
      private static function §_-uR§(param1:String) : Boolean
      {
         if(!§_-ES§ || §_-08j§.length < 1 || !§_-NJ§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-ES§.getChildByName(§_-08j§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-08j§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-08j§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-05Q§)
         {
            return §_-xq§;
         }
         §_-xq§ = new Sprite();
         §_-05Q§ = true;
         return §_-xq§;
      }
      
      public static function §_-wP§(param1:Number, param2:Number) : void
      {
         if(!§_-05Q§ || !§_-ES§ || !§_-ES§.visible)
         {
            return;
         }
         §_-xq§.x = param1;
         §_-xq§.y = param2;
      }
      
      public static function §_-ih§() : void
      {
         if(§_-ES§)
         {
            if(§_-ES§.visible)
            {
               §_-0AW§ = §_-08j§;
            }
            §_-Ru§("");
         }
      }
      
      public static function §_-03u§() : void
      {
         if(§_-ES§)
         {
            if(!§_-ES§.visible)
            {
               §_-Ru§(§_-0AW§);
            }
         }
      }
   }
}
