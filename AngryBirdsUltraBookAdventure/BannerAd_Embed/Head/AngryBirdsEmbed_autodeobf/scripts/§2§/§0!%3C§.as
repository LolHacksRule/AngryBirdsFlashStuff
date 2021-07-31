package §2§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §0!<§
   {
      
      public static const §#y§:Boolean = true;
      
      public static const §!&§:Boolean = true;
      
      public static const §+<§:int = 0;
      
      public static const §@&§:int = 1;
      
      public static const §?1§:int = 500;
      
      private static var §5@§:Array = null;
      
      private static var § `§:Number = 0;
      
      public static var §&s§:int = Keyboard.F1;
      
      public static var §?Y§:int = Keyboard.F3;
      
      public static var §<!H§:int = Keyboard.F2;
      
      public static var §]W§:int = Keyboard.F4;
      
      public static var §'2§:Boolean = false;
      
      public static var §=?§:Sprite = null;
      
      private static var §^1§:TextField = null;
      
      private static var § !@§:TextField = null;
      
      private static var §!s§:TextField = null;
      
      private static var §-!B§:TextField = null;
      
      public static var §'L§:int = -1;
      
      public static var §>K§:String = "version: Unknown";
      
      public static var §?[§:String = "";
      
      {
         init();
      }
      
      public function §0!<§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§#y§)
         {
            return;
         }
         §5@§ = new Array(§?1§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§#y§)
         {
            _loc3_ = § `§++ % §?1§;
            §5@§[_loc3_] = [param1,param2];
            if(param2 == §'L§ || §'L§ < 0)
            {
               §7!0§();
            }
         }
         if(§!&§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §@!G§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §7!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§#y§)
         {
            return;
         }
         if(§=?§ && §=?§.visible)
         {
            if(§'L§ < 0)
            {
               §!s§.text = "Current channel: ALL";
            }
            else
            {
               §!s§.text = "Current channel: " + §'L§;
            }
            if(§>K§ != null)
            {
               §-!B§.text = §>K§;
            }
            _loc1_ = true;
            if(§^1§.scrollV != §^1§.numLines - int(§^1§.height / (§^1§.textHeight / §^1§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §?1§)
            {
               _loc4_ = (§ `§ + _loc3_ + 1) % 500;
               if(§5@§[_loc4_] != null)
               {
                  if(§'L§ < 0 || §5@§[_loc4_][1] == §'L§)
                  {
                     _loc2_ += §5@§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §^1§.text = _loc2_;
            if(_loc1_)
            {
               §^1§.scrollV = §^1§.numLines;
            }
         }
      }
      
      public static function §2!&§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§#y§)
         {
            return;
         }
         §=?§ = new Sprite();
         §=?§.visible = false;
         param1.addChild(§=?§);
         var _loc7_:Graphics;
         (_loc7_ = §=?§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §^1§ = new TextField();
         §^1§.width = param4;
         §^1§.height = param5 - 40;
         §^1§.x = param2;
         §^1§.y = param3 + 40;
         §^1§.wordWrap = true;
         §=?§.addChild(§^1§);
         § !@§ = new TextField();
         § !@§.x = param2 + param4 / 2;
         § !@§.y = param3;
         § !@§.width = param4 / 2;
         § !@§.height = 20;
         § !@§.text = "LOGGER CAPTURING INPUT, F4";
         § !@§.border = true;
         § !@§.borderColor = 16711680;
         §=?§.addChild(§ !@§);
         §!s§ = new TextField();
         §!s§.width = param4;
         §!s§.height = 20;
         §!s§.x = param2;
         §!s§.y = param3;
         §=?§.addChild(§!s§);
         §-!B§ = new TextField();
         §-!B§.width = param4;
         §-!B§.height = 20;
         §-!B§.x = param2;
         §-!B§.y = param3 + 20;
         §=?§.addChild(§-!B§);
         §-A§(§'2§);
         if(param6 >= 0)
         {
            param1.addChildAt(§=?§,param6);
         }
         else
         {
            param1.addChild(§=?§);
         }
      }
      
      public static function §-A§(param1:Boolean) : void
      {
         if(!§#y§)
         {
            return;
         }
         §'2§ = param1;
         §=?§.mouseChildren = §'2§;
         §=?§.mouseEnabled = §'2§;
         §!s§.mouseEnabled = §'2§;
         §-!B§.mouseEnabled = §'2§;
         §^1§.mouseEnabled = §'2§;
         § !@§.visible = §'2§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§#y§)
         {
            return;
         }
      }
      
      public static function §;!!§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §&s§ = param1;
         §<!H§ = param2;
         §?Y§ = param3;
      }
      
      public static function §"3§(param1:String) : void
      {
         §>K§ = param1;
      }
   }
}
