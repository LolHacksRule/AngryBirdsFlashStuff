package §_-ex§
{
   import §_-Ay§.§_-nw§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-Mh§ extends Sprite
   {
      
      private static var §_-NF§:Boolean = false;
      
      private static const §_-Sf§:String = "Mouse_Cursors";
      
      private static var §_-DA§:Sprite;
      
      private static var §_-4u§:MovieClip;
      
      private static var §_-bS§:String;
      
      private static var §_-Dk§:String = "";
      
      private static var §_-4J§:Boolean = false;
       
      
      public function §_-Mh§()
      {
         super();
      }
      
      public static function §_-Tf§(param1:String) : Boolean
      {
         if(§_-bS§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-bS§ = "";
         §_-4J§ = false;
         if(!§_-NF§ || !§_-4u§)
         {
            if(!§_-7l§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-4u§.numChildren)
         {
            §_-4u§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-4u§.getChildByName(param1) as Sprite))
         {
            §_-4u§.visible = false;
            Mouse.show();
            return false;
         }
         §_-bS§ = param1;
         §_-4u§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-bS§ + "_Up"))
         {
            §_-4J§ = true;
         }
         if(§_-4J§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-bS§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-7l§() : Boolean
      {
         var _loc1_:Class = §_-nw§.§_-Xm§(§_-Sf§);
         §_-4u§ = new _loc1_();
         if(§_-4u§)
         {
            §_-DA§.addChild(§_-4u§);
            §_-DA§.mouseChildren = false;
            §_-4u§.mouseEnabled = false;
            §_-DA§.mouseEnabled = false;
            §_-4u§.enabled = false;
            §_-4u§.cacheAsBitmap = true;
         }
         return §_-4u§ != null;
      }
      
      public static function §_-Hu§() : Boolean
      {
         return §_-f8§("_Down");
      }
      
      public static function §_-XE§() : Boolean
      {
         return §_-f8§("_Up");
      }
      
      private static function §_-f8§(param1:String) : Boolean
      {
         if(!§_-4u§ || §_-bS§.length < 1 || !§_-4J§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-4u§.getChildByName(§_-bS§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-bS§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-bS§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-NF§)
         {
            return §_-DA§;
         }
         §_-DA§ = new Sprite();
         §_-NF§ = true;
         return §_-DA§;
      }
      
      public static function §_-pX§(param1:Number, param2:Number) : void
      {
         if(!§_-NF§ || !§_-4u§ || !§_-4u§.visible)
         {
            return;
         }
         §_-DA§.x = param1;
         §_-DA§.y = param2;
      }
      
      public static function §_-wb§() : void
      {
         if(§_-4u§)
         {
            if(§_-4u§.visible)
            {
               §_-Dk§ = §_-bS§;
            }
            §_-Tf§("");
         }
      }
      
      public static function §_-Wg§() : void
      {
         if(§_-4u§)
         {
            if(!§_-4u§.visible)
            {
               §_-Tf§(§_-Dk§);
            }
         }
      }
   }
}
