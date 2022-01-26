package §_-ot§
{
   import §_-ec§.§_-GK§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-UQ§ extends Sprite
   {
      
      private static var §_-jS§:Boolean = false;
      
      private static const §_-HL§:String = "Mouse_Cursors";
      
      private static var §_-ra§:Sprite;
      
      private static var §_-MB§:MovieClip;
      
      private static var §_-e5§:String;
      
      private static var §_-Af§:String = "";
      
      private static var §_-TX§:Boolean = false;
       
      
      public function §_-UQ§()
      {
         super();
      }
      
      public static function §_-Jy§(param1:String) : Boolean
      {
         if(§_-e5§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-e5§ = "";
         §_-TX§ = false;
         if(!§_-jS§ || !§_-MB§)
         {
            if(!§_-tQ§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-MB§.numChildren)
         {
            §_-MB§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-MB§.getChildByName(param1) as Sprite))
         {
            §_-MB§.visible = false;
            Mouse.show();
            return false;
         }
         §_-e5§ = param1;
         §_-MB§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-e5§ + "_Up"))
         {
            §_-TX§ = true;
         }
         if(§_-TX§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-e5§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-tQ§() : Boolean
      {
         var _loc1_:Class = §_-GK§.§_-dR§(§_-HL§);
         §_-MB§ = new _loc1_();
         if(§_-MB§)
         {
            §_-ra§.addChild(§_-MB§);
            §_-ra§.mouseChildren = false;
            §_-MB§.mouseEnabled = false;
            §_-ra§.mouseEnabled = false;
            §_-MB§.enabled = false;
            §_-MB§.cacheAsBitmap = true;
         }
         return §_-MB§ != null;
      }
      
      public static function §_-qw§() : Boolean
      {
         return §_-k3§("_Down");
      }
      
      public static function §_-nd§() : Boolean
      {
         return §_-k3§("_Up");
      }
      
      private static function §_-k3§(param1:String) : Boolean
      {
         if(!§_-MB§ || §_-e5§.length < 1 || !§_-TX§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-MB§.getChildByName(§_-e5§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-e5§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-e5§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-jS§)
         {
            return §_-ra§;
         }
         §_-ra§ = new Sprite();
         §_-jS§ = true;
         return §_-ra§;
      }
      
      public static function §_-wQ§(param1:Number, param2:Number) : void
      {
         if(!§_-jS§ || !§_-MB§ || !§_-MB§.visible)
         {
            return;
         }
         §_-ra§.x = param1;
         §_-ra§.y = param2;
      }
      
      public static function §_-s2§() : void
      {
         if(§_-MB§)
         {
            if(§_-MB§.visible)
            {
               §_-Af§ = §_-e5§;
            }
            §_-Jy§("");
         }
      }
      
      public static function §_-XN§() : void
      {
         if(§_-MB§)
         {
            if(!§_-MB§.visible)
            {
               §_-Jy§(§_-Af§);
            }
         }
      }
   }
}
