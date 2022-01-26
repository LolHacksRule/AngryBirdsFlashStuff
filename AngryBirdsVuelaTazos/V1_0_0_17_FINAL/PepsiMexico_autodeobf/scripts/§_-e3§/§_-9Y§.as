package §_-e3§
{
   import §_-0S§.§_-z1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-9Y§ extends Sprite
   {
      
      private static var §in§:Boolean = false;
      
      private static const §_-ET§:String = "Mouse_Cursors";
      
      private static var §_-jB§:Sprite;
      
      private static var §_-Lu§:MovieClip;
      
      private static var §_-86§:String;
      
      private static var §_-Nf§:String = "";
      
      private static var §_-zA§:Boolean = false;
       
      
      public function §_-9Y§()
      {
         super();
      }
      
      public static function §_-k6§(param1:String) : Boolean
      {
         if(§_-86§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-86§ = "";
         §_-zA§ = false;
         if(!§in§ || !§_-Lu§)
         {
            if(!§_-dM§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-Lu§.numChildren)
         {
            §_-Lu§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-Lu§.getChildByName(param1) as Sprite))
         {
            §_-Lu§.visible = false;
            Mouse.show();
            return false;
         }
         §_-86§ = param1;
         §_-Lu§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-86§ + "_Up"))
         {
            §_-zA§ = true;
         }
         if(§_-zA§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-86§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-dM§() : Boolean
      {
         var _loc1_:Class = §_-z1§.§_-tn§(§_-ET§);
         §_-Lu§ = new _loc1_();
         if(§_-Lu§)
         {
            §_-jB§.addChild(§_-Lu§);
            §_-jB§.mouseChildren = false;
            §_-Lu§.mouseEnabled = false;
            §_-jB§.mouseEnabled = false;
            §_-Lu§.enabled = false;
            §_-Lu§.cacheAsBitmap = true;
         }
         return §_-Lu§ != null;
      }
      
      public static function §_-gZ§() : Boolean
      {
         return §_-d6§("_Down");
      }
      
      public static function §_-TK§() : Boolean
      {
         return §_-d6§("_Up");
      }
      
      private static function §_-d6§(param1:String) : Boolean
      {
         if(!§_-Lu§ || §_-86§.length < 1 || !§_-zA§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-Lu§.getChildByName(§_-86§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-86§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-86§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§in§)
         {
            return §_-jB§;
         }
         §_-jB§ = new Sprite();
         §in§ = true;
         return §_-jB§;
      }
      
      public static function §_-1L§(param1:Number, param2:Number) : void
      {
         if(!§in§ || !§_-Lu§ || !§_-Lu§.visible)
         {
            return;
         }
         §_-jB§.x = param1;
         §_-jB§.y = param2;
      }
      
      public static function §_-i8§() : void
      {
         if(§_-Lu§)
         {
            if(§_-Lu§.visible)
            {
               §_-Nf§ = §_-86§;
            }
            §_-k6§("");
         }
      }
      
      public static function §_-Ud§() : void
      {
         if(§_-Lu§)
         {
            if(!§_-Lu§.visible)
            {
               §_-k6§(§_-Nf§);
            }
         }
      }
   }
}
