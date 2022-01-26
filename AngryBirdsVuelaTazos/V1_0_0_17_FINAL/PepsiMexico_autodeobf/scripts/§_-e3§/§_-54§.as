package §_-e3§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-54§
   {
      
      public static const §_-9x§:Boolean = true;
      
      public static const §_-b0§:Boolean = true;
      
      public static const §_-Qp§:int = 0;
      
      public static const §_-im§:int = 1;
      
      public static const §_-C1§:int = 500;
      
      private static var §_-tV§:Array = null;
      
      private static var §_-R6§:Number = 0;
      
      public static var §_-p3§:int = Keyboard.F1;
      
      public static var §_-ds§:int = Keyboard.F3;
      
      public static var §_-qQ§:int = Keyboard.F2;
      
      public static var §_-La§:int = Keyboard.F4;
      
      public static var §_-x0§:Boolean = false;
      
      public static var §_-l6§:Sprite = null;
      
      private static var §_-W6§:TextField = null;
      
      private static var §_-rD§:TextField = null;
      
      private static var §_-5D§:TextField = null;
      
      private static var §_-76§:TextField = null;
      
      public static var §_-Xh§:int = -1;
      
      public static var §_-u9§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-54§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-9x§)
         {
            return;
         }
         §_-tV§ = new Array(§_-C1§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-9x§)
         {
            _loc3_ = §_-R6§++ % §_-C1§;
            §_-tV§[_loc3_] = [param1,param2];
            if(param2 == §_-Xh§ || §_-Xh§ < 0)
            {
               §_-zB§();
            }
         }
         if(§_-b0§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-6m§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-zB§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-9x§)
         {
            return;
         }
         if(§_-l6§ && §_-l6§.visible)
         {
            if(§_-Xh§ < 0)
            {
               §_-5D§.text = "Current channel: ALL";
            }
            else
            {
               §_-5D§.text = "Current channel: " + §_-Xh§;
            }
            if(§_-u9§ != null)
            {
               §_-76§.text = §_-u9§;
            }
            _loc1_ = true;
            if(§_-W6§.scrollV != §_-W6§.numLines - int(§_-W6§.height / (§_-W6§.textHeight / §_-W6§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-C1§)
            {
               _loc4_ = (§_-R6§ + _loc3_ + 1) % 500;
               if(§_-tV§[_loc4_] != null)
               {
                  if(§_-Xh§ < 0 || §_-tV§[_loc4_][1] == §_-Xh§)
                  {
                     _loc2_ += §_-tV§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-W6§.text = _loc2_;
            if(_loc1_)
            {
               §_-W6§.scrollV = §_-W6§.numLines;
            }
         }
      }
      
      public static function §_-H7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-9x§)
         {
            return;
         }
         §_-l6§ = new Sprite();
         §_-l6§.visible = false;
         param1.addChild(§_-l6§);
         var _loc7_:Graphics;
         (_loc7_ = §_-l6§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-W6§ = new TextField();
         §_-W6§.width = param4;
         §_-W6§.height = param5 - 40;
         §_-W6§.x = param2;
         §_-W6§.y = param3 + 40;
         §_-W6§.wordWrap = true;
         §_-l6§.addChild(§_-W6§);
         §_-rD§ = new TextField();
         §_-rD§.x = param2 + param4 / 2;
         §_-rD§.y = param3;
         §_-rD§.width = param4 / 2;
         §_-rD§.height = 20;
         §_-rD§.text = "LOGGER CAPTURING INPUT, F4";
         §_-rD§.border = true;
         §_-rD§.borderColor = 16711680;
         §_-l6§.addChild(§_-rD§);
         §_-5D§ = new TextField();
         §_-5D§.width = param4;
         §_-5D§.height = 20;
         §_-5D§.x = param2;
         §_-5D§.y = param3;
         §_-l6§.addChild(§_-5D§);
         §_-76§ = new TextField();
         §_-76§.width = param4;
         §_-76§.height = 20;
         §_-76§.x = param2;
         §_-76§.y = param3 + 20;
         §_-l6§.addChild(§_-76§);
         §_-WT§(§_-x0§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-l6§,param6);
         }
         else
         {
            param1.addChild(§_-l6§);
         }
      }
      
      public static function §_-WT§(param1:Boolean) : void
      {
         if(!§_-9x§)
         {
            return;
         }
         §_-x0§ = param1;
         §_-l6§.mouseChildren = §_-x0§;
         §_-l6§.mouseEnabled = §_-x0§;
         §_-5D§.mouseEnabled = §_-x0§;
         §_-76§.mouseEnabled = §_-x0§;
         §_-W6§.mouseEnabled = §_-x0§;
         §_-rD§.visible = §_-x0§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-9x§)
         {
            return;
         }
      }
      
      public static function §_-rh§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-p3§ = param1;
         §_-qQ§ = param2;
         §_-ds§ = param3;
      }
      
      public static function §_-9o§(param1:String) : void
      {
         §_-u9§ = "version:" + param1;
      }
   }
}
