package §_-U0§
{
   import §_-3-§.§_-ki§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-M9§ extends Sprite
   {
      
      private static var §_-h9§:Boolean = false;
      
      private static const §_-Mk§:String = "Mouse_Cursors";
      
      private static var §_-00F§:Sprite;
      
      private static var §_-qH§:MovieClip;
      
      private static var §_-6e§:String;
      
      private static var §_-pm§:String = "";
      
      private static var §_-EV§:Boolean = false;
       
      
      public function §_-M9§()
      {
         super();
      }
      
      public static function §_-7V§(param1:String) : Boolean
      {
         if(§_-6e§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-6e§ = "";
         §_-EV§ = false;
         if(!§_-h9§ || !§_-qH§)
         {
            if(!§_-a§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-qH§.numChildren)
         {
            §_-qH§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-qH§.getChildByName(param1) as Sprite))
         {
            §_-qH§.visible = false;
            Mouse.show();
            return false;
         }
         §_-6e§ = param1;
         §_-qH§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-6e§ + "_Up"))
         {
            §_-EV§ = true;
         }
         if(§_-EV§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-6e§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-a§() : Boolean
      {
         var _loc1_:Class = §_-ki§.§_-pB§(§_-Mk§);
         §_-qH§ = new _loc1_();
         if(§_-qH§)
         {
            §_-00F§.addChild(§_-qH§);
            §_-00F§.mouseChildren = false;
            §_-qH§.mouseEnabled = false;
            §_-00F§.mouseEnabled = false;
            §_-qH§.enabled = false;
            §_-qH§.cacheAsBitmap = true;
         }
         return §_-qH§ != null;
      }
      
      public static function §_-5K§() : Boolean
      {
         return §_-F5§("_Down");
      }
      
      public static function §_-RI§() : Boolean
      {
         return §_-F5§("_Up");
      }
      
      private static function §_-F5§(param1:String) : Boolean
      {
         if(!§_-qH§ || §_-6e§.length < 1 || !§_-EV§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-qH§.getChildByName(§_-6e§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-6e§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-6e§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-h9§)
         {
            return §_-00F§;
         }
         §_-00F§ = new Sprite();
         §_-h9§ = true;
         return §_-00F§;
      }
      
      public static function §_-5b§(param1:Number, param2:Number) : void
      {
         if(!§_-h9§ || !§_-qH§ || !§_-qH§.visible)
         {
            return;
         }
         §_-00F§.x = param1;
         §_-00F§.y = param2;
      }
      
      public static function §_-4C§() : void
      {
         if(§_-qH§)
         {
            if(§_-qH§.visible)
            {
               §_-pm§ = §_-6e§;
            }
            §_-7V§("");
         }
      }
      
      public static function §_-OJ§() : void
      {
         if(§_-qH§)
         {
            if(!§_-qH§.visible)
            {
               §_-7V§(§_-pm§);
            }
         }
      }
   }
}
