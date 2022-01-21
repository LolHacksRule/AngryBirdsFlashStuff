package §5K§
{
   import § 1§.§=§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §6]§ extends Sprite
   {
      
      private static var §8![§:Boolean = false;
      
      private static const §+!k§:String = "Mouse_Cursors";
      
      private static var § +§:Sprite;
      
      private static var §;0§:MovieClip;
      
      private static var §]!B§:String;
      
      private static var §"P§:String = "";
      
      private static var §5!G§:Boolean = false;
       
      
      public function §6]§()
      {
         super();
      }
      
      public static function §+_§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§]!B§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §]!B§ = "";
         §5!G§ = false;
         if(!§8![§ || !§;0§)
         {
            if(!§6!;§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §;0§.numChildren)
         {
            §;0§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §;0§.getChildByName(param1) as Sprite))
         {
            §;0§.visible = false;
            Mouse.show();
            return false;
         }
         §]!B§ = param1;
         §;0§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§]!B§ + "_Up"))
         {
            §5!G§ = true;
         }
         if(§5!G§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§]!B§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §6!;§() : Boolean
      {
         var _loc1_:Class = §=§.§>!f§(§+!k§);
         §;0§ = new _loc1_();
         if(§;0§)
         {
            § +§.addChild(§;0§);
            § +§.mouseChildren = false;
            §;0§.mouseEnabled = false;
            § +§.mouseEnabled = false;
            §;0§.enabled = false;
            §;0§.cacheAsBitmap = true;
         }
         return §;0§ != null;
      }
      
      public static function §8O§() : Boolean
      {
         return §,b§("_Down");
      }
      
      public static function §%!;§() : Boolean
      {
         return §,b§("_Up");
      }
      
      private static function §,b§(param1:String) : Boolean
      {
         if(!§;0§ || §]!B§.length < 1 || !§5!G§)
         {
            return false;
         }
         var _loc2_:Sprite = §;0§.getChildByName(§]!B§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§]!B§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§]!B§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§8![§)
         {
            return § +§;
         }
         § +§ = new Sprite();
         §8![§ = true;
         return § +§;
      }
      
      public static function § K§(param1:Number, param2:Number) : void
      {
         if(!§8![§ || !§;0§ || !§;0§.visible)
         {
            return;
         }
         § +§.x = param1;
         § +§.y = param2;
      }
      
      public static function §'v§() : void
      {
         if(§;0§)
         {
            if(§;0§.visible)
            {
               §"P§ = §]!B§;
            }
            §+_§("");
         }
      }
      
      public static function §3!5§() : void
      {
         if(§;0§)
         {
            if(!§;0§.visible)
            {
               §+_§(§"P§);
            }
         }
      }
   }
}
