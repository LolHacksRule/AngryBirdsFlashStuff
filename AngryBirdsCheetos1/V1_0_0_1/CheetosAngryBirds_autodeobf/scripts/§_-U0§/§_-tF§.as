package §_-U0§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-tF§
   {
      
      public static const §_-H4§:Boolean = true;
      
      public static const §_-nm§:Boolean = true;
      
      public static const §_-A-§:int = 0;
      
      public static const §_-67§:int = 1;
      
      public static const §_-c5§:int = 500;
      
      private static var §_-Cu§:Array = null;
      
      private static var §_-XU§:Number = 0;
      
      public static var §_-mI§:int = Keyboard.F1;
      
      public static var §_-dj§:int = Keyboard.F3;
      
      public static var §_-cC§:int = Keyboard.F2;
      
      public static var §_-5g§:int = Keyboard.F4;
      
      public static var §_-yk§:Boolean = false;
      
      public static var §_-Co§:Sprite = null;
      
      private static var §_-YO§:TextField = null;
      
      private static var §_-ZB§:TextField = null;
      
      private static var §_-G5§:TextField = null;
      
      private static var §_-GL§:TextField = null;
      
      public static var §_-U-§:int = -1;
      
      public static var §_-HS§:String = "version: Unknown";
      
      public static var §_-gy§:String = "";
      
      {
         init();
      }
      
      public function §_-tF§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-H4§)
         {
            return;
         }
         §_-Cu§ = new Array(§_-c5§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-H4§)
         {
            _loc3_ = §_-XU§++ % §_-c5§;
            §_-Cu§[_loc3_] = [param1,param2];
            if(param2 == §_-U-§ || §_-U-§ < 0)
            {
               §_-UM§();
            }
         }
         if(§_-nm§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-vZ§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-UM§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-H4§)
         {
            return;
         }
         if(§_-Co§ && §_-Co§.visible)
         {
            if(§_-U-§ < 0)
            {
               §_-G5§.text = "Current channel: ALL";
            }
            else
            {
               §_-G5§.text = "Current channel: " + §_-U-§;
            }
            if(§_-HS§ != null)
            {
               §_-GL§.text = §_-HS§;
            }
            _loc1_ = true;
            if(§_-YO§.scrollV != §_-YO§.numLines - int(§_-YO§.height / (§_-YO§.textHeight / §_-YO§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-c5§)
            {
               _loc4_ = (§_-XU§ + _loc3_ + 1) % 500;
               if(§_-Cu§[_loc4_] != null)
               {
                  if(§_-U-§ < 0 || §_-Cu§[_loc4_][1] == §_-U-§)
                  {
                     _loc2_ += §_-Cu§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-YO§.text = _loc2_;
            if(_loc1_)
            {
               §_-YO§.scrollV = §_-YO§.numLines;
            }
         }
      }
      
      public static function §_-3g§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-H4§)
         {
            return;
         }
         §_-Co§ = new Sprite();
         §_-Co§.visible = false;
         param1.addChild(§_-Co§);
         var _loc7_:Graphics;
         (_loc7_ = §_-Co§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-YO§ = new TextField();
         §_-YO§.width = param4;
         §_-YO§.height = param5 - 40;
         §_-YO§.x = param2;
         §_-YO§.y = param3 + 40;
         §_-YO§.wordWrap = true;
         §_-Co§.addChild(§_-YO§);
         §_-ZB§ = new TextField();
         §_-ZB§.x = param2 + param4 / 2;
         §_-ZB§.y = param3;
         §_-ZB§.width = param4 / 2;
         §_-ZB§.height = 20;
         §_-ZB§.text = "LOGGER CAPTURING INPUT, F4";
         §_-ZB§.border = true;
         §_-ZB§.borderColor = 16711680;
         §_-Co§.addChild(§_-ZB§);
         §_-G5§ = new TextField();
         §_-G5§.width = param4;
         §_-G5§.height = 20;
         §_-G5§.x = param2;
         §_-G5§.y = param3;
         §_-Co§.addChild(§_-G5§);
         §_-GL§ = new TextField();
         §_-GL§.width = param4;
         §_-GL§.height = 20;
         §_-GL§.x = param2;
         §_-GL§.y = param3 + 20;
         §_-Co§.addChild(§_-GL§);
         §_-ov§(§_-yk§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-Co§,param6);
         }
         else
         {
            param1.addChild(§_-Co§);
         }
      }
      
      public static function §_-ov§(param1:Boolean) : void
      {
         if(!§_-H4§)
         {
            return;
         }
         §_-yk§ = param1;
         §_-Co§.mouseChildren = §_-yk§;
         §_-Co§.mouseEnabled = §_-yk§;
         §_-G5§.mouseEnabled = §_-yk§;
         §_-GL§.mouseEnabled = §_-yk§;
         §_-YO§.mouseEnabled = §_-yk§;
         §_-ZB§.visible = §_-yk§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-H4§)
         {
            return;
         }
      }
      
      public static function §_-S5§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-mI§ = param1;
         §_-cC§ = param2;
         §_-dj§ = param3;
      }
      
      public static function §_-QS§(param1:String) : void
      {
         §_-HS§ = param1;
      }
   }
}
