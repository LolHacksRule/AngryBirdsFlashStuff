package §0N§
{
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5!^§ extends Sprite
   {
      
      private static var §]n§:Boolean = false;
      
      private static const §6!z§:String = "Mouse_Cursors";
      
      private static var §,![§:Sprite;
      
      private static var § !r§:MovieClip;
      
      private static var §^O§:String;
      
      private static var §'"3§:String = "";
      
      private static var §<!x§:Boolean = false;
       
      
      public function §5!^§()
      {
         super();
      }
      
      public static function §<!w§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§^O§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §^O§ = "";
         §<!x§ = false;
         if(!§]n§ || !§ !r§)
         {
            if(!§@"B§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < § !r§.numChildren)
         {
            § !r§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = § !r§.getChildByName(param1) as Sprite))
         {
            § !r§.visible = false;
            Mouse.show();
            return false;
         }
         §^O§ = param1;
         § !r§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§^O§ + "_Up"))
         {
            §<!x§ = true;
         }
         if(§<!x§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§^O§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@"B§() : Boolean
      {
         var _loc1_:Class = § !h§.§["3§(§6!z§);
         § !r§ = new _loc1_();
         if(§ !r§)
         {
            §,![§.addChild(§ !r§);
            §,![§.mouseChildren = false;
            § !r§.mouseEnabled = false;
            §,![§.mouseEnabled = false;
            § !r§.enabled = false;
            § !r§.cacheAsBitmap = true;
         }
         return § !r§ != null;
      }
      
      public static function §-!,§() : Boolean
      {
         return §3!a§("_Down");
      }
      
      public static function §!!x§() : Boolean
      {
         return §3!a§("_Up");
      }
      
      private static function §3!a§(param1:String) : Boolean
      {
         if(!§ !r§ || §^O§.length < 1 || !§<!x§)
         {
            return false;
         }
         var _loc2_:Sprite = § !r§.getChildByName(§^O§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§^O§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§^O§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§]n§)
         {
            return §,![§;
         }
         §,![§ = new Sprite();
         §]n§ = true;
         return §,![§;
      }
      
      public static function §#`§(param1:Number, param2:Number) : void
      {
         if(!§]n§ || !§ !r§ || !§ !r§.visible)
         {
            return;
         }
         §,![§.x = param1;
         §,![§.y = param2;
      }
      
      public static function §6;§() : void
      {
         if(§ !r§)
         {
            if(§ !r§.visible)
            {
               §'"3§ = §^O§;
            }
            §<!w§("");
         }
      }
      
      public static function §<"F§() : void
      {
         if(§ !r§)
         {
            if(!§ !r§.visible)
            {
               §<!w§(§'"3§);
            }
         }
      }
   }
}
