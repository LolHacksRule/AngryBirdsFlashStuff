package §6b§
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §3r§ extends Sprite
   {
      
      private static var §!!a§:Boolean = false;
      
      private static const §'!!§:String = "Mouse_Cursors";
      
      private static var § @§:Sprite;
      
      private static var §=! §:MovieClip;
      
      private static var §['§:String;
      
      private static var §@<§:String = "";
      
      private static var § U§:Boolean = false;
       
      
      public function §3r§()
      {
         super();
      }
      
      public static function §#H§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§['§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §['§ = "";
         § U§ = false;
         if(!§!!a§ || !§=! §)
         {
            if(!§+!T§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §=! §.numChildren)
         {
            §=! §.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc4_ = §=! §.getChildByName(param1) as Sprite;
         if(!_loc4_)
         {
            §=! §.visible = false;
            Mouse.show();
            return false;
         }
         §['§ = param1;
         §=! §.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§['§ + "_Up"))
         {
            § U§ = true;
         }
         if(§ U§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§['§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §+!T§() : Boolean
      {
         var _loc1_:Class = AssetCache.§-9§(§'!!§);
         §=! § = new _loc1_();
         if(§=! §)
         {
            § @§.addChild(§=! §);
            § @§.mouseChildren = false;
            §=! §.mouseEnabled = false;
            § @§.mouseEnabled = false;
            §=! §.enabled = false;
            §=! §.cacheAsBitmap = true;
         }
         return §=! § != null;
      }
      
      public static function §#!9§() : Boolean
      {
         return §9G§("_Down");
      }
      
      public static function §7!i§() : Boolean
      {
         return §9G§("_Up");
      }
      
      private static function §9G§(param1:String) : Boolean
      {
         if(!§=! § || §['§.length < 1 || !§ U§)
         {
            return false;
         }
         var _loc2_:Sprite = §=! §.getChildByName(§['§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§['§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§['§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§!!a§)
         {
            return § @§;
         }
         § @§ = new Sprite();
         §!!a§ = true;
         return § @§;
      }
      
      public static function §2?§(param1:Number, param2:Number) : void
      {
         if(!§!!a§ || !§=! § || !§=! §.visible)
         {
            return;
         }
         § @§.x = param1;
         § @§.y = param2;
      }
      
      public static function §;!b§() : void
      {
         if(§=! §)
         {
            if(§=! §.visible)
            {
               §@<§ = §['§;
            }
            §#H§("");
         }
      }
      
      public static function §;!1§() : void
      {
         if(§=! §)
         {
            if(!§=! §.visible)
            {
               §#H§(§@<§);
            }
         }
      }
   }
}
