package §_-Eo§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-R4§
   {
      
      public static const §_-vM§:Boolean = true;
      
      public static const §_-c9§:Boolean = true;
      
      public static const §_-JE§:int = 0;
      
      public static const §_-5F§:int = 1;
      
      public static const §_-wE§:int = 500;
      
      private static var §_-LW§:Array = null;
      
      private static var §_-Sr§:Number = 0;
      
      public static var §_-Un§:int = Keyboard.F1;
      
      public static var §_-SP§:int = Keyboard.F3;
      
      public static var §_-Fk§:int = Keyboard.F2;
      
      public static var §_-NU§:int = Keyboard.F4;
      
      public static var §_-H8§:Boolean = false;
      
      public static var §_-pA§:Sprite = null;
      
      private static var §_-qB§:TextField = null;
      
      private static var §_-GM§:TextField = null;
      
      private static var §_-dH§:TextField = null;
      
      private static var §_-CU§:TextField = null;
      
      public static var §_-aW§:int = -1;
      
      public static var §_-uO§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-R4§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-vM§)
         {
            return;
         }
         §_-LW§ = new Array(§_-wE§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-vM§)
         {
            _loc3_ = §_-Sr§++ % §_-wE§;
            §_-LW§[_loc3_] = [param1,param2];
            if(param2 == §_-aW§ || §_-aW§ < 0)
            {
               §_-2B§();
            }
         }
         if(§_-c9§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-Zi§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-2B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-vM§)
         {
            return;
         }
         if(§_-pA§ && §_-pA§.visible)
         {
            if(§_-aW§ < 0)
            {
               §_-dH§.text = "Current channel: ALL";
            }
            else
            {
               §_-dH§.text = "Current channel: " + §_-aW§;
            }
            if(§_-uO§ != null)
            {
               §_-CU§.text = §_-uO§;
            }
            _loc1_ = true;
            if(§_-qB§.scrollV != §_-qB§.numLines - int(§_-qB§.height / (§_-qB§.textHeight / §_-qB§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-wE§)
            {
               _loc4_ = (§_-Sr§ + _loc3_ + 1) % 500;
               if(§_-LW§[_loc4_] != null)
               {
                  if(§_-aW§ < 0 || §_-LW§[_loc4_][1] == §_-aW§)
                  {
                     _loc2_ += §_-LW§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-qB§.text = _loc2_;
            if(_loc1_)
            {
               §_-qB§.scrollV = §_-qB§.numLines;
            }
         }
      }
      
      public static function §_-DU§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-vM§)
         {
            return;
         }
         §_-pA§ = new Sprite();
         §_-pA§.visible = false;
         param1.addChild(§_-pA§);
         var _loc7_:Graphics;
         (_loc7_ = §_-pA§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-qB§ = new TextField();
         §_-qB§.width = param4;
         §_-qB§.height = param5 - 40;
         §_-qB§.x = param2;
         §_-qB§.y = param3 + 40;
         §_-qB§.wordWrap = true;
         §_-pA§.addChild(§_-qB§);
         §_-GM§ = new TextField();
         §_-GM§.x = param2 + param4 / 2;
         §_-GM§.y = param3;
         §_-GM§.width = param4 / 2;
         §_-GM§.height = 20;
         §_-GM§.text = "LOGGER CAPTURING INPUT, F4";
         §_-GM§.border = true;
         §_-GM§.borderColor = 16711680;
         §_-pA§.addChild(§_-GM§);
         §_-dH§ = new TextField();
         §_-dH§.width = param4;
         §_-dH§.height = 20;
         §_-dH§.x = param2;
         §_-dH§.y = param3;
         §_-pA§.addChild(§_-dH§);
         §_-CU§ = new TextField();
         §_-CU§.width = param4;
         §_-CU§.height = 20;
         §_-CU§.x = param2;
         §_-CU§.y = param3 + 20;
         §_-pA§.addChild(§_-CU§);
         §_-oz§(§_-H8§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-pA§,param6);
         }
         else
         {
            param1.addChild(§_-pA§);
         }
      }
      
      public static function §_-oz§(param1:Boolean) : void
      {
         if(!§_-vM§)
         {
            return;
         }
         §_-H8§ = param1;
         §_-pA§.mouseChildren = §_-H8§;
         §_-pA§.mouseEnabled = §_-H8§;
         §_-dH§.mouseEnabled = §_-H8§;
         §_-CU§.mouseEnabled = §_-H8§;
         §_-qB§.mouseEnabled = §_-H8§;
         §_-GM§.visible = §_-H8§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-vM§)
         {
            return;
         }
      }
      
      public static function §_-J0§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-Un§ = param1;
         §_-Fk§ = param2;
         §_-SP§ = param3;
      }
      
      public static function §_-oA§(param1:String) : void
      {
         §_-uO§ = "version:" + param1;
      }
   }
}
