package § !r§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §`![§
   {
      
      public static const §'!X§:Boolean = true;
      
      public static const §<! §:Boolean = true;
      
      public static const §]!a§:int = 0;
      
      public static const §"p§:int = 1;
      
      public static const §=!Q§:int = 500;
      
      private static var §8o§:Array = null;
      
      private static var §!!e§:Number = 0;
      
      public static var §#o§:int = Keyboard.F1;
      
      public static var §>!-§:int = Keyboard.F3;
      
      public static var §0[§:int = Keyboard.F2;
      
      public static var §!<§:int = Keyboard.F4;
      
      public static var §1!A§:Boolean = false;
      
      public static var §[!f§:Sprite = null;
      
      private static var §"!^§:TextField = null;
      
      private static var §8`§:TextField = null;
      
      private static var §#!7§:TextField = null;
      
      private static var §24§:TextField = null;
      
      public static var §"!!§:int = -1;
      
      public static var §38§:String = "version: Unknown";
      
      public static var §[o§:String = "";
      
      {
         init();
      }
      
      public function §`![§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§'!X§)
         {
            return;
         }
         §8o§ = new Array(§=!Q§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§'!X§)
         {
            _loc3_ = §!!e§++ % §=!Q§;
            §8o§[_loc3_] = [param1,param2];
            if(param2 == §"!!§ || §"!!§ < 0)
            {
               §>4§();
            }
         }
         if(§<! §)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §!1§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §>4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§'!X§)
         {
            return;
         }
         if(§[!f§ && §[!f§.visible)
         {
            if(§"!!§ < 0)
            {
               §#!7§.text = "Current channel: ALL";
            }
            else
            {
               §#!7§.text = "Current channel: " + §"!!§;
            }
            if(§38§ != null)
            {
               §24§.text = §38§;
            }
            _loc1_ = true;
            if(§"!^§.scrollV != §"!^§.numLines - int(§"!^§.height / (§"!^§.textHeight / §"!^§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §=!Q§)
            {
               _loc4_ = (§!!e§ + _loc3_ + 1) % 500;
               if(§8o§[_loc4_] != null)
               {
                  if(§"!!§ < 0 || §8o§[_loc4_][1] == §"!!§)
                  {
                     _loc2_ += §8o§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §"!^§.text = _loc2_;
            if(_loc1_)
            {
               §"!^§.scrollV = §"!^§.numLines;
            }
         }
      }
      
      public static function §;q§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§'!X§)
         {
            return;
         }
         §[!f§ = new Sprite();
         §[!f§.visible = false;
         param1.addChild(§[!f§);
         var _loc7_:Graphics;
         (_loc7_ = §[!f§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §"!^§ = new TextField();
         §"!^§.width = param4;
         §"!^§.height = param5 - 40;
         §"!^§.x = param2;
         §"!^§.y = param3 + 40;
         §"!^§.wordWrap = true;
         §[!f§.addChild(§"!^§);
         §8`§ = new TextField();
         §8`§.x = param2 + param4 / 2;
         §8`§.y = param3;
         §8`§.width = param4 / 2;
         §8`§.height = 20;
         §8`§.text = "LOGGER CAPTURING INPUT, F4";
         §8`§.border = true;
         §8`§.borderColor = 16711680;
         §[!f§.addChild(§8`§);
         §#!7§ = new TextField();
         §#!7§.width = param4;
         §#!7§.height = 20;
         §#!7§.x = param2;
         §#!7§.y = param3;
         §[!f§.addChild(§#!7§);
         §24§ = new TextField();
         §24§.width = param4;
         §24§.height = 20;
         §24§.x = param2;
         §24§.y = param3 + 20;
         §[!f§.addChild(§24§);
         §05§(§1!A§);
         if(param6 >= 0)
         {
            param1.addChildAt(§[!f§,param6);
         }
         else
         {
            param1.addChild(§[!f§);
         }
      }
      
      public static function §05§(param1:Boolean) : void
      {
         if(!§'!X§)
         {
            return;
         }
         §1!A§ = param1;
         §[!f§.mouseChildren = §1!A§;
         §[!f§.mouseEnabled = §1!A§;
         §#!7§.mouseEnabled = §1!A§;
         §24§.mouseEnabled = §1!A§;
         §"!^§.mouseEnabled = §1!A§;
         §8`§.visible = §1!A§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§'!X§)
         {
            return;
         }
      }
      
      public static function §]^§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §#o§ = param1;
         §0[§ = param2;
         §>!-§ = param3;
      }
      
      public static function §!!w§(param1:String) : void
      {
         §38§ = param1;
      }
   }
}
