package §2x§
{
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9!@§ extends Sprite
   {
      
      private static var §;!!§:Boolean = false;
      
      private static const §[!3§:String = "Mouse_Cursors";
      
      private static var §!v§:Sprite;
      
      private static var §^a§:MovieClip;
      
      private static var § 8§:String;
      
      private static var §4!%§:String = "";
      
      private static var §<^§:Boolean = false;
       
      
      public function §9!@§()
      {
         super();
      }
      
      public static function §7[§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§ 8§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         § 8§ = "";
         §<^§ = false;
         if(!§;!!§ || !§^a§)
         {
            if(!§<M§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §^a§.numChildren)
         {
            §^a§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §^a§.getChildByName(param1) as Sprite))
         {
            §^a§.visible = false;
            Mouse.show();
            return false;
         }
         § 8§ = param1;
         §^a§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§ 8§ + "_Up"))
         {
            §<^§ = true;
         }
         if(§<^§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§ 8§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §<M§() : Boolean
      {
         var _loc1_:Class = §0v§.§#w§(§[!3§);
         §^a§ = new _loc1_();
         if(§^a§)
         {
            §!v§.addChild(§^a§);
            §!v§.mouseChildren = false;
            §^a§.mouseEnabled = false;
            §!v§.mouseEnabled = false;
            §^a§.enabled = false;
            §^a§.cacheAsBitmap = true;
         }
         return §^a§ != null;
      }
      
      public static function §&=§() : Boolean
      {
         return §!c§("_Down");
      }
      
      public static function §]!$§() : Boolean
      {
         return §!c§("_Up");
      }
      
      private static function §!c§(param1:String) : Boolean
      {
         if(!§^a§ || § 8§.length < 1 || !§<^§)
         {
            return false;
         }
         var _loc2_:Sprite = §^a§.getChildByName(§ 8§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§ 8§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§ 8§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§;!!§)
         {
            return §!v§;
         }
         §!v§ = new Sprite();
         §;!!§ = true;
         return §!v§;
      }
      
      public static function §<Q§(param1:Number, param2:Number) : void
      {
         if(!§;!!§ || !§^a§ || !§^a§.visible)
         {
            return;
         }
         §!v§.x = param1;
         §!v§.y = param2;
      }
      
      public static function §0n§() : void
      {
         if(§^a§)
         {
            if(§^a§.visible)
            {
               §4!%§ = § 8§;
            }
            §7[§("");
         }
      }
      
      public static function §[S§() : void
      {
         if(§^a§)
         {
            if(!§^a§.visible)
            {
               §7[§(§4!%§);
            }
         }
      }
   }
}
