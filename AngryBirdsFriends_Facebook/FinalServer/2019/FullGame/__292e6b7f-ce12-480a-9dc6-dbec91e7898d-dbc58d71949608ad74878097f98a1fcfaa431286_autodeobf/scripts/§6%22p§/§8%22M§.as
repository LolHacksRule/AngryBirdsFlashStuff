package §6"p§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §8"M§ extends Sprite
   {
      
      private static var §<h§:Boolean = false;
      
      private static const §+#s§:String = "Mouse_Cursors";
      
      private static var §%"k§:Sprite;
      
      private static var §!"?§:MovieClip;
      
      private static var §+"3§:String;
      
      private static var §9!N§:String = "";
      
      private static var §'#L§:Boolean = false;
       
      
      public function §8"M§()
      {
         super();
      }
      
      public static function §;$&§(param1:String) : Boolean
      {
         if(§+"3§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §+"3§ = "";
         §'#L§ = false;
         if(!§<h§ || !§!"?§)
         {
            if(!§;"z§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §!"?§.numChildren)
         {
            §!"?§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §!"?§.getChildByName(param1) as Sprite))
         {
            §!"?§.visible = false;
            Mouse.show();
            return false;
         }
         §+"3§ = param1;
         §!"?§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§+"3§ + "_Up"))
         {
            §'#L§ = true;
         }
         if(§'#L§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§+"3§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §;"z§() : Boolean
      {
         var _loc1_:Class = §[a§.§8#k§(§+#s§);
         §!"?§ = new _loc1_();
         if(§!"?§)
         {
            §%"k§.addChild(§!"?§);
            §%"k§.mouseChildren = false;
            §!"?§.mouseEnabled = false;
            §%"k§.mouseEnabled = false;
            §!"?§.enabled = false;
            §!"?§.cacheAsBitmap = true;
         }
         return §!"?§ != null;
      }
      
      public static function §[#+§() : Boolean
      {
         return §;#v§("_Down");
      }
      
      public static function §+!M§() : Boolean
      {
         return §;#v§("_Up");
      }
      
      private static function §;#v§(param1:String) : Boolean
      {
         if(!§!"?§ || §+"3§.length < 1 || !§'#L§)
         {
            return false;
         }
         var _loc2_:Sprite = §!"?§.getChildByName(§+"3§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§+"3§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§+"3§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§<h§)
         {
            return §%"k§;
         }
         §%"k§ = new Sprite();
         §<h§ = true;
         return §%"k§;
      }
      
      public static function §#!y§(param1:Number, param2:Number) : void
      {
         if(!§<h§ || !§!"?§ || !§!"?§.visible)
         {
            return;
         }
         §%"k§.x = param1;
         §%"k§.y = param2;
      }
      
      public static function §3"p§() : void
      {
         if(§!"?§)
         {
            if(§!"?§.visible)
            {
               §9!N§ = §+"3§;
            }
            §;$&§("");
         }
      }
      
      public static function §]!z§() : void
      {
         if(§!"?§)
         {
            if(!§!"?§.visible)
            {
               §;$&§(§9!N§);
            }
         }
      }
   }
}
