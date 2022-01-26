package §_-ZG§
{
   import §_-p7§.§_-WY§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-HK§ extends Sprite
   {
      
      private static var §_-9E§:Boolean = false;
      
      private static const §_-a8§:String = "Mouse_Cursors";
      
      private static var §_-nJ§:Sprite;
      
      private static var §_-Qw§:MovieClip;
      
      private static var §_-wZ§:String;
      
      private static var §_-pG§:String = "";
      
      private static var §_-0s§:Boolean = false;
       
      
      public function §_-HK§()
      {
         super();
      }
      
      public static function §_-RU§(param1:String) : Boolean
      {
         if(§_-wZ§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-wZ§ = "";
         §_-0s§ = false;
         if(!§_-9E§ || !§_-Qw§)
         {
            if(!§_-KG§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-Qw§.numChildren)
         {
            §_-Qw§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-Qw§.getChildByName(param1) as Sprite))
         {
            §_-Qw§.visible = false;
            Mouse.show();
            return false;
         }
         §_-wZ§ = param1;
         §_-Qw§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-wZ§ + "_Up"))
         {
            §_-0s§ = true;
         }
         if(§_-0s§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-wZ§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-KG§() : Boolean
      {
         var _loc1_:Class = §_-WY§.§_-fs§(§_-a8§);
         §_-Qw§ = new _loc1_();
         if(§_-Qw§)
         {
            §_-nJ§.addChild(§_-Qw§);
            §_-nJ§.mouseChildren = false;
            §_-Qw§.mouseEnabled = false;
            §_-nJ§.mouseEnabled = false;
            §_-Qw§.enabled = false;
            §_-Qw§.cacheAsBitmap = true;
         }
         return §_-Qw§ != null;
      }
      
      public static function §_-nW§() : Boolean
      {
         return §_-Nb§("_Down");
      }
      
      public static function §_-uL§() : Boolean
      {
         return §_-Nb§("_Up");
      }
      
      private static function §_-Nb§(param1:String) : Boolean
      {
         if(!§_-Qw§ || §_-wZ§.length < 1 || !§_-0s§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-Qw§.getChildByName(§_-wZ§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-wZ§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-wZ§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-9E§)
         {
            return §_-nJ§;
         }
         §_-nJ§ = new Sprite();
         §_-9E§ = true;
         return §_-nJ§;
      }
      
      public static function §_-6c§(param1:Number, param2:Number) : void
      {
         if(!§_-9E§ || !§_-Qw§ || !§_-Qw§.visible)
         {
            return;
         }
         §_-nJ§.x = param1;
         §_-nJ§.y = param2;
      }
      
      public static function §_-57§() : void
      {
         if(§_-Qw§)
         {
            if(§_-Qw§.visible)
            {
               §_-pG§ = §_-wZ§;
            }
            §_-RU§("");
         }
      }
      
      public static function §_-mK§() : void
      {
         if(§_-Qw§)
         {
            if(!§_-Qw§.visible)
            {
               §_-RU§(§_-pG§);
            }
         }
      }
   }
}
