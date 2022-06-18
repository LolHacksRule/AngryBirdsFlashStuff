package §7!P§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §-3§
   {
      
      public static const §?%§:Boolean = true;
      
      public static const §5q§:Boolean = true;
      
      public static const §]?§:int = 0;
      
      public static const §;5§:int = 1;
      
      public static const §^!'§:int = 500;
      
      private static var §1!T§:Array = null;
      
      private static var §]5§:Number = 0;
      
      public static var §+t§:int = Keyboard.F1;
      
      public static var § G§:int = Keyboard.F3;
      
      public static var §+w§:int = Keyboard.F2;
      
      public static var §+!6§:int = Keyboard.F4;
      
      public static var §[;§:Boolean = false;
      
      public static var §=!%§:Sprite = null;
      
      private static var § !?§:TextField = null;
      
      private static var §@Q§:TextField = null;
      
      private static var § z§:TextField = null;
      
      private static var §]d§:TextField = null;
      
      public static var §%!U§:int = -1;
      
      public static var §-$§:String = "version: Unknown";
      
      public static var §!a§:String = "";
      
      {
         init();
      }
      
      public function §-3§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§?%§)
         {
            return;
         }
         §1!T§ = new Array(§^!'§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§?%§)
         {
            _loc3_ = §]5§++ % §^!'§;
            §1!T§[_loc3_] = [param1,param2];
            if(param2 == §%!U§ || §%!U§ < 0)
            {
               §<!H§();
            }
         }
         if(§5q§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §0!3§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §<!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§?%§)
         {
            return;
         }
         if(§=!%§ && §=!%§.visible)
         {
            if(§%!U§ < 0)
            {
               § z§.text = "Current channel: ALL";
            }
            else
            {
               § z§.text = "Current channel: " + §%!U§;
            }
            if(§-$§ != null)
            {
               §]d§.text = §-$§;
            }
            _loc1_ = true;
            if(§ !?§.scrollV != § !?§.numLines - int(§ !?§.height / (§ !?§.textHeight / § !?§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §^!'§)
            {
               _loc4_ = (§]5§ + _loc3_ + 1) % 500;
               if(§1!T§[_loc4_] != null)
               {
                  if(§%!U§ < 0 || §1!T§[_loc4_][1] == §%!U§)
                  {
                     _loc2_ += §1!T§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            § !?§.text = _loc2_;
            if(_loc1_)
            {
               § !?§.scrollV = § !?§.numLines;
            }
         }
      }
      
      public static function §-C§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§?%§)
         {
            return;
         }
         §=!%§ = new Sprite();
         §=!%§.visible = false;
         param1.addChild(§=!%§);
         var _loc7_:Graphics;
         (_loc7_ = §=!%§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         § !?§ = new TextField();
         § !?§.width = param4;
         § !?§.height = param5 - 40;
         § !?§.x = param2;
         § !?§.y = param3 + 40;
         § !?§.wordWrap = true;
         §=!%§.addChild(§ !?§);
         §@Q§ = new TextField();
         §@Q§.x = param2 + param4 / 2;
         §@Q§.y = param3;
         §@Q§.width = param4 / 2;
         §@Q§.height = 20;
         §@Q§.text = "LOGGER CAPTURING INPUT, F4";
         §@Q§.border = true;
         §@Q§.borderColor = 16711680;
         §=!%§.addChild(§@Q§);
         § z§ = new TextField();
         § z§.width = param4;
         § z§.height = 20;
         § z§.x = param2;
         § z§.y = param3;
         §=!%§.addChild(§ z§);
         §]d§ = new TextField();
         §]d§.width = param4;
         §]d§.height = 20;
         §]d§.x = param2;
         §]d§.y = param3 + 20;
         §=!%§.addChild(§]d§);
         §"M§(§[;§);
         if(param6 >= 0)
         {
            param1.addChildAt(§=!%§,param6);
         }
         else
         {
            param1.addChild(§=!%§);
         }
      }
      
      public static function §"M§(param1:Boolean) : void
      {
         if(!§?%§)
         {
            return;
         }
         §[;§ = param1;
         §=!%§.mouseChildren = §[;§;
         §=!%§.mouseEnabled = §[;§;
         § z§.mouseEnabled = §[;§;
         §]d§.mouseEnabled = §[;§;
         § !?§.mouseEnabled = §[;§;
         §@Q§.visible = §[;§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§?%§)
         {
            return;
         }
      }
      
      public static function §1!P§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §+t§ = param1;
         §+w§ = param2;
         § G§ = param3;
      }
      
      public static function §40§(param1:String) : void
      {
         §-$§ = param1;
      }
   }
}
