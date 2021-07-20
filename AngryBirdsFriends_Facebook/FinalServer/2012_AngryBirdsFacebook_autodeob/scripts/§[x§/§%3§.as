package §[x§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §%3§
   {
      
      public static const §?E§:Boolean = true;
      
      public static const §]!"§:Boolean = true;
      
      public static const §-3§:int = 0;
      
      public static const §`I§:int = 1;
      
      public static const §?"8§:int = 500;
      
      private static var §#!>§:Array = null;
      
      private static var §@"8§:Number = 0;
      
      public static var §,"0§:int = Keyboard.F1;
      
      public static var § >§:int = Keyboard.F3;
      
      public static var §8P§:int = Keyboard.F2;
      
      public static var §^t§:int = Keyboard.F4;
      
      public static var §@+§:Boolean = false;
      
      public static var §>!=§:Sprite = null;
      
      private static var §&'§:TextField = null;
      
      private static var §7!a§:TextField = null;
      
      private static var §=q§:TextField = null;
      
      private static var §9!K§:TextField = null;
      
      public static var §5]§:int = -1;
      
      public static var §5!s§:String = "version: Unknown";
      
      public static var §47§:String = "";
      
      {
         init();
      }
      
      public function §%3§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§?E§)
         {
            return;
         }
         §#!>§ = new Array(§?"8§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§?E§)
         {
            _loc3_ = §@"8§++ % §?"8§;
            §#!>§[_loc3_] = [param1,param2];
            if(param2 == §5]§ || §5]§ < 0)
            {
               §?k§();
            }
         }
         if(§]!"§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §!B§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§?E§)
         {
            return;
         }
         if(§>!=§ && §>!=§.visible)
         {
            if(§5]§ < 0)
            {
               §=q§.text = "Current channel: ALL";
            }
            else
            {
               §=q§.text = "Current channel: " + §5]§;
            }
            if(§5!s§ != null)
            {
               §9!K§.text = §5!s§;
            }
            _loc1_ = true;
            if(§&'§.scrollV != §&'§.numLines - int(§&'§.height / (§&'§.textHeight / §&'§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §?"8§)
            {
               _loc4_ = (§@"8§ + _loc3_ + 1) % 500;
               if(§#!>§[_loc4_] != null)
               {
                  if(§5]§ < 0 || §#!>§[_loc4_][1] == §5]§)
                  {
                     _loc2_ += §#!>§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §&'§.text = _loc2_;
            if(_loc1_)
            {
               §&'§.scrollV = §&'§.numLines;
            }
         }
      }
      
      public static function §for §(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§?E§)
         {
            return;
         }
         §>!=§ = new Sprite();
         §>!=§.visible = false;
         param1.addChild(§>!=§);
         var _loc7_:Graphics;
         (_loc7_ = §>!=§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §&'§ = new TextField();
         §&'§.width = param4;
         §&'§.height = param5 - 40;
         §&'§.x = param2;
         §&'§.y = param3 + 40;
         §&'§.wordWrap = true;
         §>!=§.addChild(§&'§);
         §7!a§ = new TextField();
         §7!a§.x = param2 + param4 / 2;
         §7!a§.y = param3;
         §7!a§.width = param4 / 2;
         §7!a§.height = 20;
         §7!a§.text = "LOGGER CAPTURING INPUT, F4";
         §7!a§.border = true;
         §7!a§.borderColor = 16711680;
         §>!=§.addChild(§7!a§);
         §=q§ = new TextField();
         §=q§.width = param4;
         §=q§.height = 20;
         §=q§.x = param2;
         §=q§.y = param3;
         §>!=§.addChild(§=q§);
         §9!K§ = new TextField();
         §9!K§.width = param4;
         §9!K§.height = 20;
         §9!K§.x = param2;
         §9!K§.y = param3 + 20;
         §>!=§.addChild(§9!K§);
         §&l§(§@+§);
         if(param6 >= 0)
         {
            param1.addChildAt(§>!=§,param6);
         }
         else
         {
            param1.addChild(§>!=§);
         }
      }
      
      public static function §&l§(param1:Boolean) : void
      {
         if(!§?E§)
         {
            return;
         }
         §@+§ = param1;
         §>!=§.mouseChildren = §@+§;
         §>!=§.mouseEnabled = §@+§;
         §=q§.mouseEnabled = §@+§;
         §9!K§.mouseEnabled = §@+§;
         §&'§.mouseEnabled = §@+§;
         §7!a§.visible = §@+§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§?E§)
         {
            return;
         }
      }
      
      public static function §+n§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §,"0§ = param1;
         §8P§ = param2;
         § >§ = param3;
      }
      
      public static function §?n§(param1:String) : void
      {
         §5!s§ = param1;
      }
   }
}
