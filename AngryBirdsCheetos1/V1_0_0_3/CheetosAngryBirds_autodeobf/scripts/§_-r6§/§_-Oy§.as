package §_-r6§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-Oy§
   {
      
      public static const §_-mB§:Boolean = true;
      
      public static const §_-NO§:Boolean = true;
      
      public static const §_-cl§:int = 0;
      
      public static const §_-Hg§:int = 1;
      
      public static const §_-Gq§:int = 500;
      
      private static var §_-Ax§:Array = null;
      
      private static var §do§:Number = 0;
      
      public static var §_-zk§:int = Keyboard.F1;
      
      public static var §_-SX§:int = Keyboard.F3;
      
      public static var §_-4a§:int = Keyboard.F2;
      
      public static var §_-Pu§:int = Keyboard.F4;
      
      public static var §_-nS§:Boolean = false;
      
      public static var §_-ec§:Sprite = null;
      
      private static var §_-Om§:TextField = null;
      
      private static var §_-xr§:TextField = null;
      
      private static var §_-JG§:TextField = null;
      
      private static var §_-iU§:TextField = null;
      
      public static var §_-TP§:int = -1;
      
      public static var §_-R3§:String = "version: Unknown";
      
      public static var §_-Lz§:String = "";
      
      {
         init();
      }
      
      public function §_-Oy§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-mB§)
         {
            return;
         }
         §_-Ax§ = new Array(§_-Gq§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-mB§)
         {
            _loc3_ = §do§++ % §_-Gq§;
            §_-Ax§[_loc3_] = [param1,param2];
            if(param2 == §_-TP§ || §_-TP§ < 0)
            {
               §_-zH§();
            }
         }
         if(§_-NO§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-WB§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-zH§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-mB§)
         {
            return;
         }
         if(§_-ec§ && §_-ec§.visible)
         {
            if(§_-TP§ < 0)
            {
               §_-JG§.text = "Current channel: ALL";
            }
            else
            {
               §_-JG§.text = "Current channel: " + §_-TP§;
            }
            if(§_-R3§ != null)
            {
               §_-iU§.text = §_-R3§;
            }
            _loc1_ = true;
            if(§_-Om§.scrollV != §_-Om§.numLines - int(§_-Om§.height / (§_-Om§.textHeight / §_-Om§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-Gq§)
            {
               _loc4_ = (§do§ + _loc3_ + 1) % 500;
               if(§_-Ax§[_loc4_] != null)
               {
                  if(§_-TP§ < 0 || §_-Ax§[_loc4_][1] == §_-TP§)
                  {
                     _loc2_ += §_-Ax§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-Om§.text = _loc2_;
            if(_loc1_)
            {
               §_-Om§.scrollV = §_-Om§.numLines;
            }
         }
      }
      
      public static function §_-0-B§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-mB§)
         {
            return;
         }
         §_-ec§ = new Sprite();
         §_-ec§.visible = false;
         param1.addChild(§_-ec§);
         var _loc7_:Graphics;
         (_loc7_ = §_-ec§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-Om§ = new TextField();
         §_-Om§.width = param4;
         §_-Om§.height = param5 - 40;
         §_-Om§.x = param2;
         §_-Om§.y = param3 + 40;
         §_-Om§.wordWrap = true;
         §_-ec§.addChild(§_-Om§);
         §_-xr§ = new TextField();
         §_-xr§.x = param2 + param4 / 2;
         §_-xr§.y = param3;
         §_-xr§.width = param4 / 2;
         §_-xr§.height = 20;
         §_-xr§.text = "LOGGER CAPTURING INPUT, F4";
         §_-xr§.border = true;
         §_-xr§.borderColor = 16711680;
         §_-ec§.addChild(§_-xr§);
         §_-JG§ = new TextField();
         §_-JG§.width = param4;
         §_-JG§.height = 20;
         §_-JG§.x = param2;
         §_-JG§.y = param3;
         §_-ec§.addChild(§_-JG§);
         §_-iU§ = new TextField();
         §_-iU§.width = param4;
         §_-iU§.height = 20;
         §_-iU§.x = param2;
         §_-iU§.y = param3 + 20;
         §_-ec§.addChild(§_-iU§);
         §_-b0§(§_-nS§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-ec§,param6);
         }
         else
         {
            param1.addChild(§_-ec§);
         }
      }
      
      public static function §_-b0§(param1:Boolean) : void
      {
         if(!§_-mB§)
         {
            return;
         }
         §_-nS§ = param1;
         §_-ec§.mouseChildren = §_-nS§;
         §_-ec§.mouseEnabled = §_-nS§;
         §_-JG§.mouseEnabled = §_-nS§;
         §_-iU§.mouseEnabled = §_-nS§;
         §_-Om§.mouseEnabled = §_-nS§;
         §_-xr§.visible = §_-nS§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-mB§)
         {
            return;
         }
      }
      
      public static function §_-P-§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-zk§ = param1;
         §_-4a§ = param2;
         §_-SX§ = param3;
      }
      
      public static function §_-UY§(param1:String) : void
      {
         §_-R3§ = param1;
      }
   }
}
