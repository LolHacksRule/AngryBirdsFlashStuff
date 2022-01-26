package §_-ZG§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-Ne§
   {
      
      public static const §_-nw§:Boolean = true;
      
      public static const §_-7K§:Boolean = true;
      
      public static const §_-Rj§:int = 0;
      
      public static const §_-go§:int = 1;
      
      public static const §_-2n§:int = 500;
      
      private static var §_-JR§:Array = null;
      
      private static var §_-M3§:Number = 0;
      
      public static var §true §:int = Keyboard.F1;
      
      public static var §_-JO§:int = Keyboard.F3;
      
      public static var §_-n7§:int = Keyboard.F2;
      
      public static var §_-4c§:int = Keyboard.F4;
      
      public static var §_-3B§:Boolean = false;
      
      public static var §_-Cx§:Sprite = null;
      
      private static var §_-lM§:TextField = null;
      
      private static var §_-LK§:TextField = null;
      
      private static var §_-i§:TextField = null;
      
      private static var §_-OI§:TextField = null;
      
      public static var §_-Oo§:int = -1;
      
      public static var §_-p0§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-Ne§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-nw§)
         {
            return;
         }
         §_-JR§ = new Array(§_-2n§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-nw§)
         {
            _loc3_ = §_-M3§++ % §_-2n§;
            §_-JR§[_loc3_] = [param1,param2];
            if(param2 == §_-Oo§ || §_-Oo§ < 0)
            {
               §_-Cb§();
            }
         }
         if(§_-7K§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-V5§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-Cb§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-nw§)
         {
            return;
         }
         if(§_-Cx§ && §_-Cx§.visible)
         {
            if(§_-Oo§ < 0)
            {
               §_-i§.text = "Current channel: ALL";
            }
            else
            {
               §_-i§.text = "Current channel: " + §_-Oo§;
            }
            if(§_-p0§ != null)
            {
               §_-OI§.text = §_-p0§;
            }
            _loc1_ = true;
            if(§_-lM§.scrollV != §_-lM§.numLines - int(§_-lM§.height / (§_-lM§.textHeight / §_-lM§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-2n§)
            {
               _loc4_ = (§_-M3§ + _loc3_ + 1) % 500;
               if(§_-JR§[_loc4_] != null)
               {
                  if(§_-Oo§ < 0 || §_-JR§[_loc4_][1] == §_-Oo§)
                  {
                     _loc2_ += §_-JR§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-lM§.text = _loc2_;
            if(_loc1_)
            {
               §_-lM§.scrollV = §_-lM§.numLines;
            }
         }
      }
      
      public static function §_-7x§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-nw§)
         {
            return;
         }
         §_-Cx§ = new Sprite();
         §_-Cx§.visible = false;
         param1.addChild(§_-Cx§);
         var _loc7_:Graphics;
         (_loc7_ = §_-Cx§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-lM§ = new TextField();
         §_-lM§.width = param4;
         §_-lM§.height = param5 - 40;
         §_-lM§.x = param2;
         §_-lM§.y = param3 + 40;
         §_-lM§.wordWrap = true;
         §_-Cx§.addChild(§_-lM§);
         §_-LK§ = new TextField();
         §_-LK§.x = param2 + param4 / 2;
         §_-LK§.y = param3;
         §_-LK§.width = param4 / 2;
         §_-LK§.height = 20;
         §_-LK§.text = "LOGGER CAPTURING INPUT, F4";
         §_-LK§.border = true;
         §_-LK§.borderColor = 16711680;
         §_-Cx§.addChild(§_-LK§);
         §_-i§ = new TextField();
         §_-i§.width = param4;
         §_-i§.height = 20;
         §_-i§.x = param2;
         §_-i§.y = param3;
         §_-Cx§.addChild(§_-i§);
         §_-OI§ = new TextField();
         §_-OI§.width = param4;
         §_-OI§.height = 20;
         §_-OI§.x = param2;
         §_-OI§.y = param3 + 20;
         §_-Cx§.addChild(§_-OI§);
         §_-uI§(§_-3B§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-Cx§,param6);
         }
         else
         {
            param1.addChild(§_-Cx§);
         }
      }
      
      public static function §_-uI§(param1:Boolean) : void
      {
         if(!§_-nw§)
         {
            return;
         }
         §_-3B§ = param1;
         §_-Cx§.mouseChildren = §_-3B§;
         §_-Cx§.mouseEnabled = §_-3B§;
         §_-i§.mouseEnabled = §_-3B§;
         §_-OI§.mouseEnabled = §_-3B§;
         §_-lM§.mouseEnabled = §_-3B§;
         §_-LK§.visible = §_-3B§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-nw§)
         {
            return;
         }
      }
      
      public static function §_-Kv§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §true § = param1;
         §_-n7§ = param2;
         §_-JO§ = param3;
      }
      
      public static function §_-9t§(param1:String) : void
      {
         §_-p0§ = "version:" + param1;
      }
   }
}
