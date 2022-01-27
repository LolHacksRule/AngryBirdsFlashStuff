package § !3§
{
   import §,y§.§?!0§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9v§ extends Sprite
   {
      
      private static var §6!b§:Boolean = false;
      
      private static const §8!F§:String = "Mouse_Cursors";
      
      private static var §`!P§:Sprite;
      
      private static var §1T§:MovieClip;
      
      private static var §9!b§:String;
      
      private static var §6!f§:String = "";
      
      private static var §"h§:Boolean = false;
       
      
      public function §9v§()
      {
         super();
      }
      
      public static function §3`§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§9!b§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §9!b§ = "";
         §"h§ = false;
         if(!§6!b§ || !§1T§)
         {
            if(!§0s§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §1T§.numChildren)
         {
            §1T§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §1T§.getChildByName(param1) as Sprite))
         {
            §1T§.visible = false;
            Mouse.show();
            return false;
         }
         §9!b§ = param1;
         §1T§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§9!b§ + "_Up"))
         {
            §"h§ = true;
         }
         if(§"h§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§9!b§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §0s§() : Boolean
      {
         var _loc1_:Class = §?!0§.§^e§(§8!F§);
         §1T§ = new _loc1_();
         if(§1T§)
         {
            §`!P§.addChild(§1T§);
            §`!P§.mouseChildren = false;
            §1T§.mouseEnabled = false;
            §`!P§.mouseEnabled = false;
            §1T§.enabled = false;
            §1T§.cacheAsBitmap = true;
         }
         return §1T§ != null;
      }
      
      public static function §1!O§() : Boolean
      {
         return §&E§("_Down");
      }
      
      public static function §"z§() : Boolean
      {
         return §&E§("_Up");
      }
      
      private static function §&E§(param1:String) : Boolean
      {
         if(!§1T§ || §9!b§.length < 1 || !§"h§)
         {
            return false;
         }
         var _loc2_:Sprite = §1T§.getChildByName(§9!b§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§9!b§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§9!b§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§6!b§)
         {
            return §`!P§;
         }
         §`!P§ = new Sprite();
         §6!b§ = true;
         return §`!P§;
      }
      
      public static function §5<§(param1:Number, param2:Number) : void
      {
         if(!§6!b§ || !§1T§ || !§1T§.visible)
         {
            return;
         }
         §`!P§.x = param1;
         §`!P§.y = param2;
      }
      
      public static function §`!]§() : void
      {
         if(§1T§)
         {
            if(§1T§.visible)
            {
               §6!f§ = §9!b§;
            }
            §3`§("");
         }
      }
      
      public static function §3e§() : void
      {
         if(§1T§)
         {
            if(!§1T§.visible)
            {
               §3`§(§6!f§);
            }
         }
      }
   }
}
