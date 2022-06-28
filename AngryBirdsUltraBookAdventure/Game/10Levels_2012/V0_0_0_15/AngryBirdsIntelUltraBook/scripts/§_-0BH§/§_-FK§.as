package §_-0BH§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-FK§
   {
      
      public static const §_-5h§:Boolean = true;
      
      public static const §_-fb§:Boolean = true;
      
      public static const §_-pK§:int = 0;
      
      public static const §_-ea§:int = 1;
      
      public static const §_-pB§:int = 500;
      
      private static var §_-IA§:Array = null;
      
      private static var §_-YY§:Number = 0;
      
      public static var §_-3p§:int = Keyboard.F1;
      
      public static var §_-zv§:int = Keyboard.F3;
      
      public static var §_-JN§:int = Keyboard.F2;
      
      public static var §_-lW§:int = Keyboard.F4;
      
      public static var §_-lh§:Boolean = false;
      
      public static var §_-aG§:Sprite = null;
      
      private static var §_-BI§:TextField = null;
      
      private static var §_-C4§:TextField = null;
      
      private static var §_-2V§:TextField = null;
      
      private static var §_-QX§:TextField = null;
      
      public static var §_-0E7§:int = -1;
      
      public static var §_-2C§:String = "version: Unknown";
      
      public static var §_-Fe§:String = "";
      
      {
         init();
      }
      
      public function §_-FK§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-5h§)
         {
            return;
         }
         §_-IA§ = new Array(§_-pB§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-5h§)
         {
            _loc3_ = §_-YY§++ % §_-pB§;
            §_-IA§[_loc3_] = [param1,param2];
            if(param2 == §_-0E7§ || §_-0E7§ < 0)
            {
               §_-B7§();
            }
         }
         if(§_-fb§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-Io§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-B7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-5h§)
         {
            return;
         }
         if(§_-aG§ && §_-aG§.visible)
         {
            if(§_-0E7§ < 0)
            {
               §_-2V§.text = "Current channel: ALL";
            }
            else
            {
               §_-2V§.text = "Current channel: " + §_-0E7§;
            }
            if(§_-2C§ != null)
            {
               §_-QX§.text = §_-2C§;
            }
            _loc1_ = true;
            if(§_-BI§.scrollV != §_-BI§.numLines - int(§_-BI§.height / (§_-BI§.textHeight / §_-BI§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-pB§)
            {
               _loc4_ = (§_-YY§ + _loc3_ + 1) % 500;
               if(§_-IA§[_loc4_] != null)
               {
                  if(§_-0E7§ < 0 || §_-IA§[_loc4_][1] == §_-0E7§)
                  {
                     _loc2_ += §_-IA§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-BI§.text = _loc2_;
            if(_loc1_)
            {
               §_-BI§.scrollV = §_-BI§.numLines;
            }
         }
      }
      
      public static function §_-ey§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-5h§)
         {
            return;
         }
         §_-aG§ = new Sprite();
         §_-aG§.visible = false;
         param1.addChild(§_-aG§);
         var _loc7_:Graphics;
         (_loc7_ = §_-aG§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-BI§ = new TextField();
         §_-BI§.width = param4;
         §_-BI§.height = param5 - 40;
         §_-BI§.x = param2;
         §_-BI§.y = param3 + 40;
         §_-BI§.wordWrap = true;
         §_-aG§.addChild(§_-BI§);
         §_-C4§ = new TextField();
         §_-C4§.x = param2 + param4 / 2;
         §_-C4§.y = param3;
         §_-C4§.width = param4 / 2;
         §_-C4§.height = 20;
         §_-C4§.text = "LOGGER CAPTURING INPUT, F4";
         §_-C4§.border = true;
         §_-C4§.borderColor = 16711680;
         §_-aG§.addChild(§_-C4§);
         §_-2V§ = new TextField();
         §_-2V§.width = param4;
         §_-2V§.height = 20;
         §_-2V§.x = param2;
         §_-2V§.y = param3;
         §_-aG§.addChild(§_-2V§);
         §_-QX§ = new TextField();
         §_-QX§.width = param4;
         §_-QX§.height = 20;
         §_-QX§.x = param2;
         §_-QX§.y = param3 + 20;
         §_-aG§.addChild(§_-QX§);
         §_-Ia§(§_-lh§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-aG§,param6);
         }
         else
         {
            param1.addChild(§_-aG§);
         }
      }
      
      public static function §_-Ia§(param1:Boolean) : void
      {
         if(!§_-5h§)
         {
            return;
         }
         §_-lh§ = param1;
         §_-aG§.mouseChildren = §_-lh§;
         §_-aG§.mouseEnabled = §_-lh§;
         §_-2V§.mouseEnabled = §_-lh§;
         §_-QX§.mouseEnabled = §_-lh§;
         §_-BI§.mouseEnabled = §_-lh§;
         §_-C4§.visible = §_-lh§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-5h§)
         {
            return;
         }
      }
      
      public static function §_-kt§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-3p§ = param1;
         §_-JN§ = param2;
         §_-zv§ = param3;
      }
      
      public static function §_-Xk§(param1:String) : void
      {
         §_-2C§ = param1;
      }
   }
}
