package §_-gM§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-yj§
   {
      
      public static const §_-b7§:Boolean = true;
      
      public static const §_-DE§:Boolean = true;
      
      public static const §_-WI§:int = 0;
      
      public static const §_-8B§:int = 1;
      
      public static const §_-p-§:int = 500;
      
      private static var §_-oN§:Array = null;
      
      private static var §_-1k§:Number = 0;
      
      public static var §_-k2§:int = Keyboard.F1;
      
      public static var §_-GS§:int = Keyboard.F3;
      
      public static var §_-Po§:int = Keyboard.F2;
      
      public static var §_-oK§:int = Keyboard.F4;
      
      public static var §_-9r§:Boolean = false;
      
      public static var §_-UA§:Sprite = null;
      
      private static var §_-aw§:TextField = null;
      
      private static var §_-Yd§:TextField = null;
      
      private static var §_-jY§:TextField = null;
      
      private static var §_-YB§:TextField = null;
      
      public static var §_-sX§:int = -1;
      
      public static var §_-ml§:String = "version: Unknown";
      
      public static var §_-uz§:String = "";
      
      {
         init();
      }
      
      public function §_-yj§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-b7§)
         {
            return;
         }
         §_-oN§ = new Array(§_-p-§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-b7§)
         {
            _loc3_ = §_-1k§++ % §_-p-§;
            §_-oN§[_loc3_] = [param1,param2];
            if(param2 == §_-sX§ || §_-sX§ < 0)
            {
               §_-RR§();
            }
         }
         if(§_-DE§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-I3§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-RR§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-b7§)
         {
            return;
         }
         if(§_-UA§ && §_-UA§.visible)
         {
            if(§_-sX§ < 0)
            {
               §_-jY§.text = "Current channel: ALL";
            }
            else
            {
               §_-jY§.text = "Current channel: " + §_-sX§;
            }
            if(§_-ml§ != null)
            {
               §_-YB§.text = §_-ml§;
            }
            _loc1_ = true;
            if(§_-aw§.scrollV != §_-aw§.numLines - int(§_-aw§.height / (§_-aw§.textHeight / §_-aw§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-p-§)
            {
               _loc4_ = (§_-1k§ + _loc3_ + 1) % 500;
               if(§_-oN§[_loc4_] != null)
               {
                  if(§_-sX§ < 0 || §_-oN§[_loc4_][1] == §_-sX§)
                  {
                     _loc2_ += §_-oN§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-aw§.text = _loc2_;
            if(_loc1_)
            {
               §_-aw§.scrollV = §_-aw§.numLines;
            }
         }
      }
      
      public static function §_-sH§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-b7§)
         {
            return;
         }
         §_-UA§ = new Sprite();
         §_-UA§.visible = false;
         param1.addChild(§_-UA§);
         var _loc7_:Graphics;
         (_loc7_ = §_-UA§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-aw§ = new TextField();
         §_-aw§.width = param4;
         §_-aw§.height = param5 - 40;
         §_-aw§.x = param2;
         §_-aw§.y = param3 + 40;
         §_-aw§.wordWrap = true;
         §_-UA§.addChild(§_-aw§);
         §_-Yd§ = new TextField();
         §_-Yd§.x = param2 + param4 / 2;
         §_-Yd§.y = param3;
         §_-Yd§.width = param4 / 2;
         §_-Yd§.height = 20;
         §_-Yd§.text = "LOGGER CAPTURING INPUT, F4";
         §_-Yd§.border = true;
         §_-Yd§.borderColor = 16711680;
         §_-UA§.addChild(§_-Yd§);
         §_-jY§ = new TextField();
         §_-jY§.width = param4;
         §_-jY§.height = 20;
         §_-jY§.x = param2;
         §_-jY§.y = param3;
         §_-UA§.addChild(§_-jY§);
         §_-YB§ = new TextField();
         §_-YB§.width = param4;
         §_-YB§.height = 20;
         §_-YB§.x = param2;
         §_-YB§.y = param3 + 20;
         §_-UA§.addChild(§_-YB§);
         §_-Tg§(§_-9r§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-UA§,param6);
         }
         else
         {
            param1.addChild(§_-UA§);
         }
      }
      
      public static function §_-Tg§(param1:Boolean) : void
      {
         if(!§_-b7§)
         {
            return;
         }
         §_-9r§ = param1;
         §_-UA§.mouseChildren = §_-9r§;
         §_-UA§.mouseEnabled = §_-9r§;
         §_-jY§.mouseEnabled = §_-9r§;
         §_-YB§.mouseEnabled = §_-9r§;
         §_-aw§.mouseEnabled = §_-9r§;
         §_-Yd§.visible = §_-9r§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-b7§)
         {
            return;
         }
      }
      
      public static function §_-AB§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-k2§ = param1;
         §_-Po§ = param2;
         §_-GS§ = param3;
      }
      
      public static function §_-3G§(param1:String) : void
      {
         §_-ml§ = param1;
      }
   }
}
