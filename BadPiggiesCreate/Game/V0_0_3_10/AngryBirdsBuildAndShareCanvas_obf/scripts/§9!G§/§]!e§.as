package §9!G§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §]!e§
   {
      
      public static const §8A§:Boolean = true;
      
      public static const §+S§:Boolean = true;
      
      public static const set:int = 0;
      
      public static const §>[§:int = 1;
      
      public static const §5!v§:int = 500;
      
      private static var §-+§:Array = null;
      
      private static var §9"8§:Number = 0;
      
      public static var §;!?§:int = Keyboard.F1;
      
      public static var §`"2§:int = Keyboard.F3;
      
      public static var §>Q§:int = Keyboard.F2;
      
      public static var §[g§:int = Keyboard.F4;
      
      public static var §8!?§:Boolean = false;
      
      public static var §#9§:Sprite = null;
      
      private static var §,!p§:TextField = null;
      
      private static var §7![§:TextField = null;
      
      private static var §#"%§:TextField = null;
      
      private static var §5"2§:TextField = null;
      
      public static var § Q§:int = -1;
      
      public static var §!!K§:String = "version: Unknown";
      
      public static var §!!n§:String = "";
      
      {
         init();
      }
      
      public function §]!e§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§8A§)
         {
            return;
         }
         §-+§ = new Array(§5!v§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§8A§)
         {
            _loc3_ = §9"8§++ % §5!v§;
            §-+§[_loc3_] = [param1,param2];
            if(param2 == § Q§ || § Q§ < 0)
            {
               §^2§();
            }
         }
         if(§+S§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=!1§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §^2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§8A§)
         {
            return;
         }
         if(§#9§ && §#9§.visible)
         {
            if(§ Q§ < 0)
            {
               §#"%§.text = "Current channel: ALL";
            }
            else
            {
               §#"%§.text = "Current channel: " + § Q§;
            }
            if(§!!K§ != null)
            {
               §5"2§.text = §!!K§;
            }
            _loc1_ = true;
            if(§,!p§.scrollV != §,!p§.numLines - int(§,!p§.height / (§,!p§.textHeight / §,!p§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §5!v§)
            {
               _loc4_ = (§9"8§ + _loc3_ + 1) % 500;
               if(§-+§[_loc4_] != null)
               {
                  if(§ Q§ < 0 || §-+§[_loc4_][1] == § Q§)
                  {
                     _loc2_ += §-+§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §,!p§.text = _loc2_;
            if(_loc1_)
            {
               §,!p§.scrollV = §,!p§.numLines;
            }
         }
      }
      
      public static function §,Y§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§8A§)
         {
            return;
         }
         §#9§ = new Sprite();
         §#9§.visible = false;
         param1.addChild(§#9§);
         var _loc7_:Graphics;
         (_loc7_ = §#9§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §,!p§ = new TextField();
         §,!p§.width = param4;
         §,!p§.height = param5 - 40;
         §,!p§.x = param2;
         §,!p§.y = param3 + 40;
         §,!p§.wordWrap = true;
         §#9§.addChild(§,!p§);
         §7![§ = new TextField();
         §7![§.x = param2 + param4 / 2;
         §7![§.y = param3;
         §7![§.width = param4 / 2;
         §7![§.height = 20;
         §7![§.text = "LOGGER CAPTURING INPUT, F4";
         §7![§.border = true;
         §7![§.borderColor = 16711680;
         §#9§.addChild(§7![§);
         §#"%§ = new TextField();
         §#"%§.width = param4;
         §#"%§.height = 20;
         §#"%§.x = param2;
         §#"%§.y = param3;
         §#9§.addChild(§#"%§);
         §5"2§ = new TextField();
         §5"2§.width = param4;
         §5"2§.height = 20;
         §5"2§.x = param2;
         §5"2§.y = param3 + 20;
         §#9§.addChild(§5"2§);
         §5!n§(§8!?§);
         if(param6 >= 0)
         {
            param1.addChildAt(§#9§,param6);
         }
         else
         {
            param1.addChild(§#9§);
         }
      }
      
      public static function §5!n§(param1:Boolean) : void
      {
         if(!§8A§)
         {
            return;
         }
         §8!?§ = param1;
         §#9§.mouseChildren = §8!?§;
         §#9§.mouseEnabled = §8!?§;
         §#"%§.mouseEnabled = §8!?§;
         §5"2§.mouseEnabled = §8!?§;
         §,!p§.mouseEnabled = §8!?§;
         §7![§.visible = §8!?§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§8A§)
         {
            return;
         }
      }
      
      public static function §?f§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §;!?§ = param1;
         §>Q§ = param2;
         §`"2§ = param3;
      }
      
      public static function §2!>§(param1:String) : void
      {
         §!!K§ = param1;
      }
   }
}
