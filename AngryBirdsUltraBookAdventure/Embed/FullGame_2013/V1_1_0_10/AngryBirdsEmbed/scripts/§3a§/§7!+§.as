package §3a§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §7!+§
   {
      
      public static const §9^§:Boolean = true;
      
      public static const §[!K§:Boolean = true;
      
      public static const § K§:int = 0;
      
      public static const §`N§:int = 1;
      
      public static const §[!,§:int = 500;
      
      private static var §-!K§:Array = null;
      
      private static var §`1§:Number = 0;
      
      public static var §4M§:int = Keyboard.F1;
      
      public static var §`>§:int = Keyboard.F3;
      
      public static var §4!7§:int = Keyboard.F2;
      
      public static var §`!B§:int = Keyboard.F4;
      
      public static var §^?§:Boolean = false;
      
      public static var §19§:Sprite = null;
      
      private static var §8j§:TextField = null;
      
      private static var §<u§:TextField = null;
      
      private static var §<5§:TextField = null;
      
      private static var §=]§:TextField = null;
      
      public static var §+O§:int = -1;
      
      public static var §9h§:String = "version: Unknown";
      
      public static var §+M§:String = "";
      
      {
         init();
      }
      
      public function §7!+§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§9^§)
         {
            return;
         }
         §-!K§ = new Array(§[!,§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§9^§)
         {
            _loc3_ = §`1§++ % §[!,§;
            §-!K§[_loc3_] = [param1,param2];
            if(param2 == §+O§ || §+O§ < 0)
            {
               §<Z§();
            }
         }
         if(§[!K§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §"-§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §<Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§9^§)
         {
            return;
         }
         if(§19§ && §19§.visible)
         {
            if(§+O§ < 0)
            {
               §<5§.text = "Current channel: ALL";
            }
            else
            {
               §<5§.text = "Current channel: " + §+O§;
            }
            if(§9h§ != null)
            {
               §=]§.text = §9h§;
            }
            _loc1_ = true;
            if(§8j§.scrollV != §8j§.numLines - int(§8j§.height / (§8j§.textHeight / §8j§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §[!,§)
            {
               _loc4_ = (§`1§ + _loc3_ + 1) % 500;
               if(§-!K§[_loc4_] != null)
               {
                  if(§+O§ < 0 || §-!K§[_loc4_][1] == §+O§)
                  {
                     _loc2_ += §-!K§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §8j§.text = _loc2_;
            if(_loc1_)
            {
               §8j§.scrollV = §8j§.numLines;
            }
         }
      }
      
      public static function §[W§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§9^§)
         {
            return;
         }
         §19§ = new Sprite();
         §19§.visible = false;
         param1.addChild(§19§);
         var _loc7_:Graphics;
         (_loc7_ = §19§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §8j§ = new TextField();
         §8j§.width = param4;
         §8j§.height = param5 - 40;
         §8j§.x = param2;
         §8j§.y = param3 + 40;
         §8j§.wordWrap = true;
         §19§.addChild(§8j§);
         §<u§ = new TextField();
         §<u§.x = param2 + param4 / 2;
         §<u§.y = param3;
         §<u§.width = param4 / 2;
         §<u§.height = 20;
         §<u§.text = "LOGGER CAPTURING INPUT, F4";
         §<u§.border = true;
         §<u§.borderColor = 16711680;
         §19§.addChild(§<u§);
         §<5§ = new TextField();
         §<5§.width = param4;
         §<5§.height = 20;
         §<5§.x = param2;
         §<5§.y = param3;
         §19§.addChild(§<5§);
         §=]§ = new TextField();
         §=]§.width = param4;
         §=]§.height = 20;
         §=]§.x = param2;
         §=]§.y = param3 + 20;
         §19§.addChild(§=]§);
         §4u§(§^?§);
         if(param6 >= 0)
         {
            param1.addChildAt(§19§,param6);
         }
         else
         {
            param1.addChild(§19§);
         }
      }
      
      public static function §4u§(param1:Boolean) : void
      {
         if(!§9^§)
         {
            return;
         }
         §^?§ = param1;
         §19§.mouseChildren = §^?§;
         §19§.mouseEnabled = §^?§;
         §<5§.mouseEnabled = §^?§;
         §=]§.mouseEnabled = §^?§;
         §8j§.mouseEnabled = §^?§;
         §<u§.visible = §^?§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§9^§)
         {
            return;
         }
      }
      
      public static function §>§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §4M§ = param1;
         §4!7§ = param2;
         §`>§ = param3;
      }
      
      public static function §9!!§(param1:String) : void
      {
         §9h§ = param1;
      }
   }
}
